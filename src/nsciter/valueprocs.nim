import strformat
from times import toWinTime, fromWinTime, Time

import sciwrap, papi, converters, event

######## for value operations ##########

type
  SciterVal* = object
    impl*: ptr SCITER_VALUE

template enumToInt(typ: untyped): void =
  converter fromCuint(x: cuint): typ  =
    result = typ(x)

enumToInt(VALUE_RESULT)
enumToInt(C_VALUE_TYPE)
enumToInt(VALUE_UNIT_TYPE_STRING)
enumToInt(VALUE_UNIT_TYPE_OBJECT)

proc `==`(a: cuint, b: VALUE_RESULT): bool = a == b.cuint

proc `=destroy`(x: var SciterVal) =   
  # echo "called =destroy"
  if x.impl != nil:
    assert sapi.ValueClear(x.impl) == HV_OK
    dealloc(x.impl)

proc `=`(dst: var SciterVal, src: SciterVal) = 
  # echo "called ="
  if dst.impl != src.impl:
    `=destroy`(dst.impl)
    dst.impl = cast[ptr SCITER_VALUE](alloc(sizeof(SCITER_VALUE)))
    assert sapi.ValueInit(dst.impl) == HV_OK
    assert sapi.ValueCopy(dst.impl, src.impl) == HV_OK

proc `=sink`(dst: var SciterVal, src: SciterVal) = 
  # echo "called =sink"
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
  result.impl = cast[ptr SCITER_VALUE](alloc(sizeof(SCITER_VALUE)))
  assert sapi.ValueInit(result.impl) == HV_OK

proc nullValue*(): SciterVal =
  # ???
  result = newValue()
  result.impl.t = T_NULL.cuint
  #result.impl = cast[ptr SCITER_VALUE](alloc(sizeof(SCITER_VALUE)))
  #result.impl.t = T_NULL.cuint # only here, not newVal()

proc cloneTo*(src: SciterVal, dst: SciterVal) {.inline.} =
  assert sapi.ValueCopy(dst.impl, src.impl) == HV_OK

#proc clone*(x: var Value): SciterVal {.inline.} =
proc clone*(x: SciterVal): SciterVal {.inline.} =
  result = nullValue()
  assert sapi.ValueCopy(result.impl, x.impl) == HV_OK

proc newValue*(dat: string): SciterVal =
  #UINT SCFN( ValueStringDataSet )( VALUE* pval, LPCWSTR chars, UINT numChars, UINT units );
  var ws = newWideCString(dat)
  result = newValue()
  assert sapi.ValueStringDataSet(result.impl, ws, ws.len.uint32, 0'u32) == HV_OK

proc newValue*(dat: SomeSignedInt): SciterVal =
  result = newValue()
  when dat is int64:
    assert sapi.ValueInt64DataSet(result.impl, dat, T_INT.UINT32, 0) == HV_OK
  else:
    assert sapi.ValueIntDataSet(result.impl, dat.int32, T_INT.UINT32, 0) == HV_OK

proc newValue*(dat: Time): SciterVal =
  result = newValue()
  var s = toWinTime(dat)
  assert sapi.ValueInt64DataSet(result.impl, s, T_DATE.UINT32, DT_HAS_SECONDS.UINT32) == HV_OK

proc newValue*(dat: float64): SciterVal =
  result = newValue()
  assert sapi.ValueFloatDataSet(result.impl, dat, T_FLOAT.UINT32, 0) == HV_OK

proc newValue*(dat: bool): SciterVal =
  result = newValue()
  if dat:
    assert sapi.ValueIntDataSet(result.impl, 1, T_BOOL.UINT32, 0) == HV_OK
  else:
    assert sapi.ValueIntDataSet(result.impl, 0, T_BOOL.UINT32, 0) == HV_OK

proc newValue*(dat: openArray[(string, string)]): SciterVal =
  result = newValue()
  for (key, val) in dat:
    let key = newValue(key)
    let val = newValue(val)
    assert sapi.ValueSetValueToKey(result.impl, key.impl, val.impl) == HV_OK

proc convertFromString*(x: SciterVal, s: string, 
                        how: VALUE_STRING_CVT_TYPE = CVT_SIMPLE) {.discardable.} =
  #UINT SCFN( ValueFromString )( VALUE* pval, LPCWSTR str, UINT strLength, /*VALUE_STRING_CVT_TYPE*/ UINT how );
  #xDefPtr(x, v)
  var ws = newWideCString(s)    
  assert sapi.ValueFromString(x.impl, ws, ws.len.uint32, how.UINT32) == HV_OK

proc convertToString*(x: SciterVal, 
                    how: VALUE_STRING_CVT_TYPE = CVT_SIMPLE) {.discardable.} =
  # converts value to T_STRING inplace
  #UINT SCFN( ValueToString )( VALUE* pval, /*VALUE_STRING_CVT_TYPE*/ UINT how );
  #xDefPtr(x, v) # don't work
  assert sapi.ValueToString(x.impl, how.UINT32) == HV_OK

proc getString*(x: SciterVal): string =
  #UINT SCFN( ValueStringData )( const VALUE* pval, LPCWSTR* pChars, UINT* pNumChars );
  #var xx = x
  var ws: ptr UncheckedArray[Utf16Char]
  var n: uint32    
  var r = sapi.ValueStringData(x.impl, cast[ptr LPCWSTR](ws.addr), n.addr)
  assert r == HV_OK, "res: " & $cast[VALUE_RESULT](r)
  result = $(cast[WideCString](ws[0].addr))


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
    result &= v.getString()
  elif v.isFunction() or v.isNativeFunctor() or v.isObjectFunction():
    result = "<functor>"
  elif v.isResource():
    result = "<resource>"
  else:
    var nv = v.clone()
    nv.convertToString(CVT_SIMPLE)
    result &= nv.getString()

proc getInt64*(x: SciterVal): int64 =
  assert sapi.ValueInt64Data(x.impl, result.addr) == HV_OK

proc getInt32*(x: SciterVal): int32 =
  assert sapi.ValueIntData(x.impl, result.addr) == HV_OK

proc getInt*(x: SciterVal): int32 =
  result = if x.isInt: getInt32(x) else: 0

proc getBool*(x: SciterVal): bool = 
  # XXX: Do we want to allow getting a boolean from an int?
  # assert x.isBool, "Value is not BOOL type"    
  var i = x.getInt32()
  result = if i == 0: false else: true

proc getFloat*(x: SciterVal): float =    
  var r = sapi.ValueFloatData(x.impl, result.addr)
  assert r == HV_OK, "getFloat: " & $r.bool

proc getBytes*(x: SciterVal): seq[byte] =
  var p: LPCBYTE
  var size: uint32
  var r = sapi.ValueBinaryData(x.impl, p.addr, size.addr)
  assert r == HV_OK, "getBytes:" & repr r
  result = newSeq[byte](size)
  copyMem(result[0].addr, p, int(size) * sizeof(byte))

proc setBytes*(x: SciterVal, dat: var openArray[byte]): uint32 {.discardable.} =
  var p = cast[LPCBYTE](dat[0].addr)
  var size = dat.len()*sizeof(byte)
  assert sapi.ValueBinaryDataSet(x.impl, p, uint32(size), T_BYTES.UINT32, 0) == HV_OK    

proc getColor*(x: SciterVal): uint32 =
  assert x.isColor()
  result = cast[uint32](x.getInt)
  
## returns radians if this->is_angle()
proc getAngle*(x: SciterVal): float32 = 
  assert x.isAngle()
  result = getFloat(x)
  
## returns seconds if this->is_duration()
proc getDuration*(x: SciterVal): float32 =    
  assert x.isDuration()
  result = getFloat(x)  

proc getDate*(x: SciterVal): Time = 
  assert x.isDate()
  var t: int64
  if sapi.ValueInt64Data(x.impl, t.addr) == HV_OK: 
    result = fromWinTime(t)
  else:
    # XXX: Do we really want this?
    result = fromWinTime(0)
  
## for array and object types
proc len*(x: SciterVal): int32 =    
  assert sapi.ValueElementsCount(x.impl, result.addr) == HV_OK

proc enumerate*(x: SciterVal, cb: KeyValueCallback, param: pointer = nil) =
  assert sapi.ValueEnumElements(x.impl, cb, param) == HV_OK

proc getItems*(x: SciterVal): seq[SciterVal] =
  # XXX - do we really need this optimization?
  result = newSeqOfCap[SciterVal](x.len())
  let mycb = proc (param: pointer; pkey, pval: ptr SCITER_VALUE): bool {.cdecl.} = 
    cast[ptr seq[SciterVal]](param)[].add SciterVal(impl: pval)
    result = true
  
  assert sapi.ValueEnumElements(x.impl, mycb, result.addr) == HV_OK

iterator items*(x: SciterVal): SciterVal = 
  for elem in x.getItems():
    yield elem

type KVal = tuple[key, value: SciterVal]

proc getPairs*(x: SciterVal): seq[KVal] =
  # XXX - do we really need this optimization?
  result = newSeqOfCap[KVal](x.len())
  let mycb = proc (param: pointer; pkey, pval: ptr SCITER_VALUE): bool {.cdecl.} = 
    # be careful here - SIGSEGV if you dereference in myseq itself!
    var myseq = cast[ptr seq[KVal]](param)
    myseq[].add (SciterVal(impl: pkey), SciterVal(impl: pval))
    result = true
  
  assert sapi.ValueEnumElements(x.impl, mycb, result.addr) == HV_OK

iterator pairs*(x: SciterVal): (SciterVal, SciterVal) = 
  for (key, val) in x.getPairs():
    yield (key, val)


proc `[]`*[T: Ordinal](x: SciterVal; i: T): SciterVal =
  result = newValue()
  assert sapi.ValueNthElementValue(x.impl, i.INT, result.impl) == HV_OK

proc `[]=`*(x: SciterVal; i: int32; y: SciterVal) =
  assert sapi.ValueNthElementValueSet(x.impl, i.INT, y.impl) == HV_OK

proc `[]`*(x: SciterVal; name: string): SciterVal =
  var key = newValue(name)
  result = newValue()
  assert sapi.ValueGetValueOfKey(x.impl, key.impl, result.impl) == HV_OK

proc `[]=`*(x: SciterVal; name: string; y: SciterVal) =
  var key = newValue(name)
  assert sapi.ValueSetValueToKey(x.impl, key.impl, y.impl) == HV_OK

## value functions calls
proc invokeWithSelf*(x: SciterVal, self: SciterVal, 
                    args: varargs[SciterVal]): SciterVal = 
  result = newValue(0)
  var clen = len(args)
  var cargs = newSeq[ptr SCITER_VALUE](clen + 1)
  for i in 0 ..< clen:
    cargs[i] = args[i].impl
    
  assert sapi.ValueInvoke(x.impl, self.impl, uint32(len(args)),
                      cargs[0], result.impl, nil) == HV_OK
  echo "invokeWithSelf. result: ", result

## value functions calls    
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
  assert sapi.ValueInit(retval) == HV_OK
  assert sapi.ValueCopy(retval, res.addr) == HV_OK    

proc prelease(tag: ptr VOID): VOID {.cdecl.} = 
  echo "prelease tag index: ", cast[int](tag)

proc setNativeFunctor*(v: SciterVal, nf: NativeFunctor) = 
  nfs.add(nf)
  var tag = cast[ptr VOID](nfs.len() - 1)
  #var vv = v
  assert sapi.ValueNativeFunctorSet(v.impl, pinvoke, prelease, tag) == HV_OK

## # sds proc for python compatible

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
    #assert ok, "ok is:" & $ok # == SCDOM_OK
    #sciter.Value.raise_from(rv, ok != False, name)
  else:
    ## Call scripting function defined in the namespace of the element (a.k.a. global function)
    var ok = SciterCallScriptingFunction(hwnd, name, cargs[0],
                                          uint32(clen), result.impl)
    assert ok == SCDOM_OK, "ok is:" & $ok
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
    assert ok == SCDOM_RESULT.SCDOM_OK
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
  assert ok.SCDOM_RESULT == SCDOM_OK, "ok is:" & $ok 
  #sciter.Value.raise_from(rv, ok == SCDOM_RESULT.SCDOM_OK, name)
  #self._throw_if(ok)