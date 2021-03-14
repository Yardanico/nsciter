import std/[strformat, times, unicode]

import sciwrap, papi, converters, event, helpers

type
  SciterValObj* = object
    ## A Nim object that wraps a pointer to
    ## the Sciter value
    ## 
    ## Required for destructors to correctly work
    impl*: ptr SCITER_VALUE
    when isDebug:
      tag*: string
  
  SciterVal* = SciterValObj

  SciterValKind* {.pure.} = enum ## An enum of all possible types
    ## a Sciter value might hold
    svUndefined = 0, svNull, svBool, svInt, svFloat,
    svString, svDate, svCurrency, svLength, svArray, svMap
    svFunction, svBytes, svObject, svResource, svDuration,
    svAngle, svColor, svAsset

proc kind*(val: SciterVal): SciterValKind = 
  ## Gets the type of a Sciter value `val`
  ## 
  ## `v` must be initialized!
  SciterValKind(val.impl.t)

template enumToInt(typ: untyped): void =
  converter fromCuint(x: cuint): typ  =
    result = typ(x)

enumToInt(VALUE_RESULT)
enumToInt(C_VALUE_TYPE)
enumToInt(VALUE_UNIT_TYPE_STRING)
enumToInt(VALUE_UNIT_TYPE_OBJECT)

proc `==`(a: cuint, b: VALUE_RESULT): bool = a == b.cuint

proc `=destroy`(x: var SciterValObj) =   
  when isDebug:
    echo "Destroying ", x.tag
  if x.impl != nil:
    doAssert sapi.ValueClear(x.impl) == HV_OK
    dealloc(x.impl)

proc `=`(dst: var SciterValObj, src: SciterValObj) = 
  when isDebug:
    echo "Assigning ", dst.tag
  if dst.impl != src.impl:
    `=destroy`(dst.impl)
    dst.impl = cast[ptr SCITER_VALUE](alloc(sizeof(SCITER_VALUE)))
    doAssert sapi.ValueInit(dst.impl) == HV_OK
    doAssert sapi.ValueCopy(dst.impl, src.impl) == HV_OK

proc `=sink`(dst: var SciterValObj, src: SciterValObj) = 
  when isDebug:
    echo "Sinking ", dst.tag
  `=destroy`(dst)
  dst.impl = src.impl

proc isSymbol*(v: SciterVal): bool {.inline.} =
  result = v.impl.t == T_STRING and v.impl.u == UT_STRING_SYMBOL

proc isObjectNative*(v: SciterVal): bool {.inline.} =
  result = v.impl.t == T_OBJECT and v.impl.u == UT_OBJECT_NATIVE

proc isObjectArray*(v: SciterVal): bool {.inline.} =
  result = v.impl.t == T_OBJECT and v.impl.u == UT_OBJECT_ARRAY

proc isObjectFunction*(v: SciterVal): bool {.inline.} =
  result = v.impl.t == T_OBJECT and v.impl.u == UT_OBJECT_FUNCTION

proc isObjectObject*(v: SciterVal): bool {.inline.} =
  result = v.impl.t == T_OBJECT and v.impl.u == UT_OBJECT_OBJECT

proc isObjectClass*(v: SciterVal): bool {.inline.} =
  result = v.impl.t == T_OBJECT and v.impl.u == UT_OBJECT_CLASS

proc isObjectError*(v: SciterVal): bool {.inline.} =
  result = v.impl.t == T_OBJECT and v.impl.u == UT_OBJECT_ERROR

#proc isDomElement*(v: SciterVal): bool {.inline.} =
#    result = v.impl.t == T_DOM_OBJECT

proc isNativeFunctor*(v: SciterVal): bool {.inline.} =
  result = sapi.ValueIsNativeFunctor(v.impl)

proc newValue*(): SciterVal =
  ## Creates a new empty Sciter value
  result.impl = create(SCITER_VALUE)
  doAssert sapi.ValueInit(result.impl) == HV_OK

proc newValueDbg*(tag: string): SciterVal = 
  result = newValue()
  when isDebug:
    result.tag = tag

proc nullValue*(): SciterVal =
  ## Creates a new null Sciter value
  result = newValue()
  result.impl.t = T_NULL.cuint

proc copyTo*(src: SciterVal, dst: SciterVal) {.inline.} =
  ## Copies the Sciter value `src` into the Sciter value `dst`
  doAssert sapi.ValueCopy(dst.impl, src.impl) == HV_OK

proc copy*(x: SciterVal): SciterVal {.inline.} =
  ## Creates a new copy from a Sciter value `x` 
  result = nullValue()
  doAssert sapi.ValueCopy(result.impl, x.impl) == HV_OK

proc newValue*(dat: string): SciterVal =
  ## Creates a new Sciter value from a Nim string `dat`
  var ws = utf8to16(dat)
  result = newValue()
  doAssert sapi.ValueStringDataSet(result.impl, ws[0].addr, ws.len.uint32, 0'u32) == HV_OK

proc getStr*(x: SciterVal, default = ""): string =
  var widestr: ptr UncheckedArray[uint16]
  var len: uint32    
  let r = sapi.ValueStringData(x.impl, cast[ptr LPCWSTR](addr widestr), addr len)
  if r == HV_OK:
    result = utf16to8(widestr, int len)
  else:
    result = default

proc newValue*(dat: SomeSignedInt): SciterVal =
  result = newValue()
  when dat is int64:
    doAssert sapi.ValueInt64DataSet(result.impl, dat, T_INT.UINT32, 0) == HV_OK
  else:
    doAssert sapi.ValueIntDataSet(result.impl, dat.int32, T_INT.UINT32, 0) == HV_OK

proc newValue*(dat: Time): SciterVal =
  result = newValue()
  var s = toWinTime(dat)
  doAssert sapi.ValueInt64DataSet(result.impl, s, T_DATE.UINT32, DT_HAS_SECONDS.UINT32) == HV_OK

proc newValue*(dat: float64): SciterVal =
  result = newValue()
  doAssert sapi.ValueFloatDataSet(result.impl, dat, T_FLOAT.UINT32, 0) == HV_OK

proc newValue*(dat: bool): SciterVal =
  result = newValue()
  if dat:
    doAssert sapi.ValueIntDataSet(result.impl, 1, T_BOOL.UINT32, 0) == HV_OK
  else:
    doAssert sapi.ValueIntDataSet(result.impl, 0, T_BOOL.UINT32, 0) == HV_OK

proc newValue*(dat: openArray[(string, string)]): SciterVal =
  result = newValue()
  for (key, val) in dat:
    let key = newValue(key)
    let val = newValue(val)
    doAssert sapi.ValueSetValueToKey(result.impl, key.impl, val.impl) == HV_OK

proc convertFromString*(x: SciterVal, s: string, 
                        how: VALUE_STRING_CVT_TYPE = CVT_SIMPLE) {.discardable.} =
  var ws = utf8to16(s)    
  doAssert sapi.ValueFromString(x.impl, ws[0].addr, ws.len.uint32, how.UINT32) == HV_OK

proc convertToString*(x: SciterVal, 
                    how: VALUE_STRING_CVT_TYPE = CVT_SIMPLE) {.discardable.} =
  doAssert sapi.ValueToString(x.impl, how.UINT32) == HV_OK

proc valueTypeToStr(x: C_VALUE_TYPE): string = 
  result = case x
  of T_UNDEFINED: "undefined"
  of T_NULL: "null"
  of T_BOOl: "bool"
  of T_INT: "int"
  of T_FLOAT: "float"
  of T_STRING: "string"
  of T_DATE: "date"
  of T_CURRENCY: "currency"
  of T_LENGTH: "length"
  of T_ARRAY: "array"
  of T_MAP: "map"
  of T_FUNCTION: "function"
  of T_BYTES: "bytes"
  of T_OBJECT: "object"
  of T_RESOURCE: "resource"
  of T_DURATION: "duration"
  of T_ANGLE: "angle"
  of T_COLOR: "color"
  of T_ASSET: "asset"
  else: ""

proc `$`*(v: SciterVal): string =
  ## Stringifies a Sciter value `x`. Generally returns a string
  ## that contains the type of the Sciter value, and, if possible,
  ## string representation of its internal data
  result = fmt"<{valueTypeToStr(v.impl.t)}> "
  case v.kind
  of svString:        
    result &= v.getStr()
  of svResource:
    result = "<resource>"
  of svFunction:
    result = "<functor>"
  elif v.isNativeFunctor() or v.isObjectFunction():
    result = "<functor>"
  else:
    var nv = v.copy()
    nv.convertToString(CVT_SIMPLE)
    result &= nv.getStr()

proc getInt*(x: SciterVal, default = 0): int64 =
  ## Gets a 64-bit int from a Sciter value `x`
  ## 
  ## Returns `default` if `x` is not an int
  let r = sapi.ValueInt64Data(x.impl, addr result)
  if r != HV_OK:
    result = default

proc getInt32*(x: SciterVal, default = 0'i32): int32 =
  ## Gets a 32-bit int from a Sciter value `x`
  ## 
  ## Returns `default` if `x` is not an int
  let r = sapi.ValueIntData(x.impl, addr result)
  if r != HV_OK:
    result = default

proc getBool*(x: SciterVal, default = false): bool = 
  ## Gets a bool from a Sciter value `x` (checks if `x` != 0).
  ## 
  ## `x` must be an integer Sciter value 
  var tmp: cint
  let r = sapi.ValueIntData(x.impl, addr tmp)
  if r == HV_OK:
    result = tmp != 0
  else:
    result = default

proc getFloat*(x: SciterVal, default = 0.0): float =
  ## Gets a float from a Sciter float value `x`.
  ## 
  ## Returns `default` if `x` is not a float
  var r = sapi.ValueFloatData(x.impl, addr result)
  if r != HV_OK:
    result = default

proc getBytes*(x: SciterVal, default: seq[byte] = @[]): seq[byte] =
  ## Gets a sequence of bytes from a Sciter value `x` containing binary data.
  ## 
  ## Returns `default` if `x` is not a byte array
  var p: LPCBYTE
  var size: cuint
  var r = sapi.ValueBinaryData(x.impl, addr p, addr size)
  if r == HV_OK:
    result = newSeqUninitialized[byte](size)
    # Copy the binary data
    copyMem(addr result[0], p, int(size) * sizeof(byte))
  else:
    result = default

proc setBytes*(x: SciterVal, dat: openArray[byte]) =
  ## Sets Sciter value `x` to binary data `dat`.
  doAssert sapi.ValueBinaryDataSet(
    x.impl, 
    cast[LPCBYTE](unsafeAddr dat[0]), # our own buffer
    cuint(dat.len() * sizeof(byte)), # total data size
    T_BYTES.UINT32, 0
  ) == HV_OK

proc getColor*(x: SciterVal): uint32 =
  doAssert x.kind == svColor
  result = cast[uint32](x.getInt)
  
proc getAngle*(x: SciterVal): float32 = 
  doAssert x.kind == svAngle
  result = getFloat(x)

proc getDuration*(x: SciterVal): float32 =    
  doAssert x.kind == svDuration
  result = getFloat(x)

proc getDate*(x: SciterVal, default = Time()): Time = 
  ## Gets the date from a Sciter value `x`. `x` must be a date.
  ## 
  ## Returns `default` if `x` is not a date
  if x.kind == svDate:
    var t: int64
    doAssert sapi.ValueInt64Data(x.impl, t.addr) == HV_OK
    result = fromWinTime(t)
  else:
    result = default

proc len*(x: SciterVal): int =
  ## Gets the length of the Sciter value `x`. `x` should be an array or 
  ## an object type.
  var temp: cint
  doAssert sapi.ValueElementsCount(x.impl, addr temp) == HV_OK
  result = int temp

proc getItemsCb(param: pointer; pkey, pval: ptr SCITER_VALUE): bool {.cdecl.} = 
  cast[ptr seq[SciterVal]](param)[].add SciterVal(impl: pval).copy()
  result = true

proc getItems*(x: SciterVal): seq[SciterVal] =
  ## Gets all items from a Sciter value `x`
  # TODO: do we really need this optimization?
  result = newSeqOfCap[SciterVal](x.len())
  
  doAssert sapi.ValueEnumElements(x.impl, getItemsCb, addr result) == HV_OK

iterator items*(x: SciterVal): SciterVal = 
  ## Yields values of `x`. `x` must be T_MAP, T_FUNCTION or T_OBJECT
  for elem in x.getItems():
    yield elem

type SciterKeyVal* = tuple[key, value: SciterVal]

proc getPairsCb(param: pointer; pkey, pval: ptr SCITER_VALUE): bool {.cdecl.} = 
  # As far as I understand we don't own pkey and pval so we must
  # copy them here
  cast[ptr seq[SciterKeyVal]](param)[].add (
    SciterVal(impl: pkey).copy(), 
    SciterVal(impl: pval).copy()
  )
  result = true

proc getPairs*(x: SciterVal): seq[SciterKeyVal] =
  ## Gets (key, value) of a Sciter value `x`. `x` must be T_MAP, 
  ## T_FUNCTION or T_OBJECT
  result = newSeqOfCap[SciterKeyVal](x.len())
  
  # Pass the nim seq itself as a pointer so we can add values to
  # the resulting seq directly
  doAssert sapi.ValueEnumElements(x.impl, getPairsCb, addr result) == HV_OK

iterator pairs*(x: SciterVal): (SciterVal, SciterVal) = 
  ## Yields (key, value) pairs from `x`. `x` must be T_MAP, T_FUNCTION 
  ## or T_OBJECT
  for (key, val) in x.getPairs():
    yield (key, val)

proc `[]`*[T: Ordinal](x: SciterVal; i: T): SciterVal =
  ## Gets `i`th value from a Sciter value `x`. `x` must be an array-like
  ## value.
  result = newValue()
  doAssert sapi.ValueNthElementValue(x.impl, i.INT, result.impl) == HV_OK

proc `[]=`*(x: SciterVal; i: int32; y: SciterVal) =
  doAssert sapi.ValueNthElementValueSet(x.impl, i.INT, y.impl) == HV_OK

proc `[]`*(x: SciterVal; name: string): SciterVal =
  var key = newValue(name)
  result = newValue()
  doAssert sapi.ValueGetValueOfKey(x.impl, key.impl, result.impl) == HV_OK

proc `[]=`*(x: SciterVal; name: string; y: SciterVal) =
  var key = newValue(name)
  doAssert sapi.ValueSetValueToKey(x.impl, key.impl, y.impl) == HV_OK

proc invokeWithSelf*(x: SciterVal, self: SciterVal, 
                    args: varargs[SciterVal]): SciterVal = 
  result = newValue(0)
  var clen = len(args)
  var cargs = newSeq[ptr SCITER_VALUE](clen + 1)
  for i in 0 ..< clen:
    cargs[i] = args[i].impl
    
  doAssert sapi.ValueInvoke(x.impl, self.impl, uint32(len(args)),
                      cargs[0], result.impl, nil) == HV_OK
  echo "invokeWithSelf. result: ", result

proc invoke*(x: SciterVal, args: varargs[SciterVal]): SciterVal =
  echo "invoke"
  var self = newValue()
  result = x.invokeWithSelf(self, args)
  echo result

var nfs = newSeq[NativeFunctor]()

proc pinvoke(tag: ptr VOID;
            argc: cuint; 
            argv: ptr SCITER_VALUE;
            retval: ptr SCITER_VALUE): VOID {.cdecl.} =
    #is available only when ``--threads:on`` and ``--tlsEmulation:off`` are used
    #setupForeignThreadGc()
  var i = cast[int](tag)
  var nf = nfs[i]    
  var res = nf(packArgs(argc, argv))    
  doAssert sapi.ValueInit(retval) == HV_OK
  doAssert sapi.ValueCopy(retval, res.addr) == HV_OK    

proc prelease(tag: ptr VOID): VOID {.cdecl.} = 
  echo "prelease tag index: ", cast[int](tag)

proc setNativeFunctor*(v: SciterVal, nf: NativeFunctor) = 
  nfs.add(nf)
  var tag = cast[ptr VOID](nfs.len() - 1)
  doAssert sapi.ValueNativeFunctorSet(v.impl, pinvoke, prelease, tag) == HV_OK

proc callFunction*(hwnd: HWINDOW | HELEMENT, 
                  name: cstring, args: varargs[SciterVal]): SciterVal =  
  result = newValue()    
  var clen = len(args)
  var cargs = newSeq[ptr SCITER_VALUE](clen)
  for i in 0 ..< clen:
    cargs[i] = args[i].impl
  when hwnd is HWINDOW:
    ## Call scripting function defined in the global namespace."""
    var ok = SciterCall(hwnd, name, uint32(clen), cargs[0], result.impl)
    #doAssert ok, "ok is:" & $ok # == SCDOM_OK
    #sciter.Value.raise_from(rv, ok != False, name)
  else:
    ## Call scripting function defined in the namespace of the element (a.k.a. global function)
    var ok = SciterCallScriptingFunction(hwnd, name, cargs[0],
                                          uint32(clen), result.impl)
    doAssert ok == SCDOM_OK, "ok is:" & $ok
    #sciter.Value.raise_from(rv, ok == SCDOM_RESULT.SCDOM_OK, name)
    #self._throw_if(ok)

## Call scripting function defined in the namespace of the element (a.k.a. global function)
#[proc call_function*(he: HELEMENT, name: cstring, args:varargs[Value]): SciterVal = 
    result = newValue()
    var clen = len(args)
    var cargs = newSeq[Value](clen)
    for i in 0..clen-1:
        cargs[i] = args[i]
    var ok = SciterCallScriptingFunction(he, name, cargs[0].addr, uint32(clen),addr rv)
    doAssert ok == SCDOM_RESULT.SCDOM_OK
    #sciter.Value.raise_from(rv, ok == SCDOM_RESULT.SCDOM_OK, name)
    #self._throw_if(ok)
    return rv]#

## Call scripting method defined for the element
proc callMethod*(he: HELEMENT, name: cstring, args: varargs[SciterVal]): SciterVal = 
  result = newValue()
  var clen = len(args)
  var cargs = newSeq[ptr SCITER_VALUE](clen)
  for i in 0 ..< clen:
    cargs[i] = args[i].impl
  var ok =  SciterCallScriptingMethod(
    he, name, cargs[0], uint32(clen), result.impl
  )
  doAssert ok.SCDOM_RESULT == SCDOM_OK, "ok is:" & $ok 
  #sciter.Value.raise_from(rv, ok == SCDOM_RESULT.SCDOM_OK, name)
  #self._throw_if(ok)
