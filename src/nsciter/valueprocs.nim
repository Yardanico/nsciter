import std/[strformat, times, unicode]

import sciwrap, papi, converters, event

const nsciterDbg = defined(nsciterDbg)

type
  SciterValObj* = object
    impl*: ptr SCITER_VALUE
    when nsciterDbg:
      tag*: string
  
  SciterVal* = SciterValObj

template enumToInt(typ: untyped): void =
  converter fromCuint(x: cuint): typ  =
    result = typ(x)

enumToInt(VALUE_RESULT)
enumToInt(C_VALUE_TYPE)
enumToInt(VALUE_UNIT_TYPE_STRING)
enumToInt(VALUE_UNIT_TYPE_OBJECT)

proc `==`(a: cuint, b: VALUE_RESULT): bool = a == b.cuint


proc `=destroy`(x: var SciterValObj) =   
  when nsciterDbg:
    echo "Destroying ", x.tag
  if x.impl != nil:
    doAssert sapi.ValueClear(x.impl) == HV_OK
    dealloc(x.impl)

proc `=`(dst: var SciterValObj, src: SciterValObj) = 
  when nsciterDbg:
    echo "Assigning ", dst.tag
  if dst.impl != src.impl:
    `=destroy`(dst.impl)
    dst.impl = cast[ptr SCITER_VALUE](alloc(sizeof(SCITER_VALUE)))
    doAssert sapi.ValueInit(dst.impl) == HV_OK
    doAssert sapi.ValueCopy(dst.impl, src.impl) == HV_OK

proc `=sink`(dst: var SciterValObj, src: SciterValObj) = 
  when nsciterDbg:
    echo "Sinking ", dst.tag
  `=destroy`(dst)
  dst.impl = src.impl

proc isUndefined*(v: SciterVal): bool {.inline.} =
  result = v.impl.t == T_UNDEFINED

proc isBool*(v: SciterVal): bool {.inline.} =
  result = v.impl.t == T_BOOL

proc isInt*(v: SciterVal): bool {.inline.} =
  result = v.impl.t == T_INT

proc isFloat*(v: SciterVal): bool {.inline.} =
  result = v.impl.t == T_FLOAT

proc isString*(v: SciterVal): bool {.inline.} =
  result = v.impl.t == T_STRING

proc isSymbol*(v: SciterVal): bool {.inline.} =
  result = v.impl.t == T_STRING and v.impl.u == UT_STRING_SYMBOL

proc isDate*(v: SciterVal): bool {.inline.}  =
  result = v.impl.t == T_DATE

proc isCurrency*(v: SciterVal): bool {.inline.} =
  result = v.impl.t == T_CURRENCY

proc isMap*(v: SciterVal): bool {.inline.} =
  result = v.impl.t == T_MAP

proc isArray*(v: SciterVal): bool {.inline.} =
  result = v.impl.t == T_ARRAY

proc isByte*(v: SciterVal): bool {.inline.} =
  result = v.impl.t == T_BYTES

proc isResource*(v: SciterVal): bool {.inline.} =
  result = v.impl.t == T_RESOURCE

proc isObject*(v: SciterVal): bool {.inline.} =
  result = v.impl.t == T_OBJECT

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

proc isColor*(v: SciterVal): bool {.inline.} =
  result = v.impl.t == T_COLOR

proc isDuration*(v: SciterVal): bool {.inline.} =
  result = v.impl.t == T_DURATION

proc isAngle*(v: SciterVal): bool {.inline.} =
  result = v.impl.t == T_ANGLE

proc isNull*(v: SciterVal): bool {.inline.} =
  result = v.impl.t == T_NULL

proc isFunction*(v: SciterVal): bool {.inline.} =
  result = v.impl.t == T_FUNCTION

proc isNativeFunctor*(v: SciterVal): bool {.inline.} =
  result = sapi.ValueIsNativeFunctor(v.impl)

proc newValue*(): SciterVal =
  result.impl = create(SCITER_VALUE)
  doAssert sapi.ValueInit(result.impl) == HV_OK

proc newValueDbg*(tag: string): SciterVal = 
  result = newValue()
  when nsciterDbg:
    result.tag = tag

proc nullValue*(): SciterVal =
  # ???
  result = newValue()
  result.impl.t = T_NULL.cuint
  #result.impl = cast[ptr SCITER_VALUE](alloc(sizeof(SCITER_VALUE)))
  #result.impl.t = T_NULL.cuint # only here, not newVal()

proc cloneTo*(src: SciterVal, dst: SciterVal) {.inline.} =
  doAssert sapi.ValueCopy(dst.impl, src.impl) == HV_OK

proc clone*(x: SciterVal): SciterVal {.inline.} =
  result = nullValue()
  doAssert sapi.ValueCopy(result.impl, x.impl) == HV_OK

# Taken from https://github.com/treeform/encode. License applies
proc utf8to16(input: string): seq[uint16] =
  for r in input.runes:
    let u = r.uint32
    if (0x0000 <= u and u <= 0xD7FF) or (0xE000 <= u and u <= 0xFFFF):
      result.add(u.uint16)
    elif 0x010000 <= u and u <= 0x10FFFF:
      let
        u0 = u - 0x10000
        w1 = 0xD800 + u0 div 0x400
        w2 = 0xDC00 + u0 mod 0x400
      result.add(w1.uint16)
      result.add(w2.uint16)

# Taken from https://github.com/treeform/encode. License applies
proc utf16to8(input: ptr UncheckedArray[uint16], len: int): string =
  var i = 0
  while i < len:
    var u1 = input[i]
    i += 1
    if u1 - 0xd800 >= 0x800:
      result.add Rune(u1.int)
    else:
      var u2 = input[i]
      i += 1
      if ((u1 and 0xfc00) == 0xd800) and ((u2 and 0xfc00) == 0xdc00):
        result.add Rune((u1.uint32 shl 10) + u2.uint32 - 0x35fdc00)
      else:
        # Error, produce tofu character.
        result.add "□"

proc newValue*(dat: string): SciterVal =
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
  result = fmt"<{valueTypeToStr(v.impl.t)}> "
  if  v.isString():        
    result &= v.getStr()
  elif v.isFunction() or v.isNativeFunctor() or v.isObjectFunction():
    result = "<functor>"
  elif v.isResource():
    result = "<resource>"
  else:
    var nv = v.clone()
    nv.convertToString(CVT_SIMPLE)
    result &= nv.getStr()

proc getInt64*(x: SciterVal): int64 =
  doAssert sapi.ValueInt64Data(x.impl, result.addr) == HV_OK

proc getInt32*(x: SciterVal): int32 =
  doAssert sapi.ValueIntData(x.impl, result.addr) == HV_OK

proc getInt*(x: SciterVal): int32 =
  result = if x.isInt: getInt32(x) else: 0

proc getBool*(x: SciterVal): bool = 
  # TODO: Do we want to allow getting a boolean from an int?
  # doAssert x.isBool, "Value is not BOOL type"    
  var i = x.getInt32()
  result = if i == 0: false else: true

proc getFloat*(x: SciterVal): float =    
  var r = sapi.ValueFloatData(x.impl, result.addr)
  doAssert r == HV_OK, "getFloat: " & $r.bool

proc getBytes*(x: SciterVal): seq[byte] =
  var p: LPCBYTE
  var size: uint32
  var r = sapi.ValueBinaryData(x.impl, p.addr, size.addr)
  doAssert r == HV_OK, "getBytes:" & repr r
  result = newSeqUninitialized[byte](size)
  copyMem(result[0].addr, p, int(size) * sizeof(byte))

proc setBytes*(x: SciterVal, dat: var openArray[byte]) =
  var p = cast[LPCBYTE](dat[0].addr)
  var size = dat.len() * sizeof(byte)
  doAssert sapi.ValueBinaryDataSet(x.impl, p, uint32(size), T_BYTES.UINT32, 0) == HV_OK    

proc getColor*(x: SciterVal): uint32 =
  doAssert x.isColor()
  result = cast[uint32](x.getInt)
  
proc getAngle*(x: SciterVal): float32 = 
  doAssert x.isAngle()
  result = getFloat(x)

proc getDuration*(x: SciterVal): float32 =    
  doAssert x.isDuration()
  result = getFloat(x)  

proc getDate*(x: SciterVal): Time = 
  doAssert x.isDate()
  var t: int64
  if sapi.ValueInt64Data(x.impl, t.addr) == HV_OK: 
    result = fromWinTime(t)
  else:
    # TODO: Do we really want this?
    result = fromWinTime(0)

proc len*(x: SciterVal): int32 =
  ## for array and object types
  doAssert sapi.ValueElementsCount(x.impl, result.addr) == HV_OK

proc enumerate*(x: SciterVal, cb: KeyValueCallback, param: pointer = nil) =
  doAssert sapi.ValueEnumElements(x.impl, cb, param) == HV_OK

proc getItemsCb(param: pointer; pkey, pval: ptr SCITER_VALUE): bool {.cdecl.} = 
  cast[ptr seq[SciterVal]](param)[].add SciterVal(impl: pval).clone()
  result = true

proc getItems*(x: SciterVal): seq[SciterVal] =
  # TODO: do we really need this optimization?
  result = newSeqOfCap[SciterVal](x.len())
  
  doAssert sapi.ValueEnumElements(x.impl, getItemsCb, addr result) == HV_OK

iterator items*(x: SciterVal): SciterVal = 
  ## Yields values of `x`. `x` must be T_MAP, T_FUNCTION or T_OBJECT
  for elem in x.getItems():
    yield elem

type KVal = tuple[key, value: SciterVal]

proc getPairsCb(param: pointer; pkey, pval: ptr SCITER_VALUE): bool {.cdecl.} = 
  # As far as I understand we don't own pkey and pval so we must
  # clone them here
  cast[ptr seq[KVal]](param)[].add (
    SciterVal(impl: pkey).clone(), 
    SciterVal(impl: pval).clone()
  )
  result = true

proc getPairs*(x: SciterVal): seq[KVal] =
  # TODO: do we really need this optimization?
  result = newSeqOfCap[KVal](x.len())
  
  # Pass the nim seq itself as a pointer so we can add
  doAssert sapi.ValueEnumElements(x.impl, getPairsCb, addr result) == HV_OK

iterator pairs*(x: SciterVal): (SciterVal, SciterVal) = 
  ## Yields (key, value) pairs from `x`. `x` must be T_MAP, T_FUNCTION or T_OBJECT
  for (key, val) in x.getPairs():
    yield (key, val)

proc `[]`*[T: Ordinal](x: SciterVal; i: T): SciterVal =
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
