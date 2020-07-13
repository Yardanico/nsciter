import strformat
from times import toWinTime, fromWinTime, Time

import sciwrap, converters, event

######## for value operations ##########

type
  SciterVal* = object
    impl: ptr SCITER_VALUE


template enumToInt(typ: untyped): void =
  converter fromCuint(x: cuint): typ  =
    result = typ(x)

enumToInt(VALUE_RESULT)
enumToInt(C_VALUE_TYPE)
enumToInt(VALUE_UNIT_TYPE_STRING)
enumToInt(VALUE_UNIT_TYPE_OBJECT)

proc `=destroy`(x: var SciterVal) =        
  assert ValueClear(x.impl) == HV_OK

proc `=`(dst: var SciterVal, src: SciterVal) = 
  # ValueClear(dst.impl)
  assert ValueInit(dst.impl) == HV_OK
  assert ValueCopy(dst.impl, src.impl) == HV_OK

proc `=sink`(dst: var SciterVal, src: SciterVal) = 
  # ValueInit(dst.impl)
  assert ValueCopy(dst.impl, src.impl) == HV_OK

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
  result = ValueIsNativeFunctor(v.impl)

proc newValue*(): SciterVal =
  assert ValueInit(result.impl) == HV_OK

proc nullValue*(): SciterVal =
  # ???
  result.impl.t = T_NULL.cuint # only here, not newVal()

proc cloneTo*(src: SciterVal, dst: SciterVal) {.inline.} =
  assert ValueCopy(dst.impl, src.impl) == HV_OK

#proc clone*(x: var Value): SciterVal {.inline.} =
proc clone*(x: SciterVal): SciterVal {.inline.} =
  result = nullValue()
  assert ValueCopy(result.impl, x.impl) == HV_OK

proc newValue*(dat: string): SciterVal =
  #UINT SCFN( ValueStringDataSet )( VALUE* pval, LPCWSTR chars, UINT numChars, UINT units );
  var ws = newWideCString(dat)
  result = newValue()
  assert ValueStringDataSet(result.impl, ws, ws.len.uint32, 0'u32) == HV_OK

proc newValue*(dat: SomeSignedInt): SciterVal =
  result = newValue()
  when dat is int64:
    assert ValueInt64DataSet(result.impl, dat, T_INT.UINT32, 0) == HV_OK
  else:
    assert ValueIntDataSet(result.impl, dat.int32, T_INT.UINT32, 0) == HV_OK

proc newValue*(dat: Time): SciterVal =
  result = newValue()
  var s = toWinTime(dat)
  assert ValueInt64DataSet(result.impl, s, T_DATE.UINT32, DT_HAS_SECONDS.UINT32) == HV_OK

proc newValue*(dat: float64): SciterVal =
  result = newValue()
  assert ValueFloatDataSet(result.impl, dat, T_FLOAT.UINT32, 0) == HV_OK

proc newValue*(dat: bool): SciterVal =
  result = newValue()
  if dat:
    assert ValueIntDataSet(result.impl, 1, T_BOOL.UINT32, 0) == HV_OK
  else:
    assert ValueIntDataSet(result.impl, 0, T_BOOL.UINT32, 0) == HV_OK

proc convertFromString*(x: SciterVal, s: string, 
                        how: VALUE_STRING_CVT_TYPE = CVT_SIMPLE) {.discardable.} =
  #UINT SCFN( ValueFromString )( VALUE* pval, LPCWSTR str, UINT strLength, /*VALUE_STRING_CVT_TYPE*/ UINT how );
  #xDefPtr(x, v)
  var ws = newWideCString(s)    
  assert ValueFromString(x.impl, ws, ws.len.uint32, how.UINT32) == HV_OK

proc convertToString*(x: SciterVal, 
                    how: VALUE_STRING_CVT_TYPE = CVT_SIMPLE) {.discardable.} =
  # converts value to T_STRING inplace
  #UINT SCFN( ValueToString )( VALUE* pval, /*VALUE_STRING_CVT_TYPE*/ UINT how );
  #xDefPtr(x, v) # don't work
  assert ValueToString(x.impl, how.UINT32) == HV_OK

proc getString*(x: SciterVal): string =
  #UINT SCFN( ValueStringData )( const VALUE* pval, LPCWSTR* pChars, UINT* pNumChars );
  #var xx = x
  var ws: WideCString
  var n: uint32    
  var r = ValueStringData(x.impl, cast[ptr LPCWSTR](ws[0].addr), n.addr)
  assert r == HV_OK, "res: " & $cast[VALUE_RESULT](r)
  result = $(ws)

proc `$`*(v: SciterVal): string =
  result = fmt"({cast[C_VALUE_TYPE](v.impl.t)}) "
  if  v.isString():        
    result &= v.getString()
  elif v.isFunction() or v.isNativeFunctor() or v.isObjectFunction():
    result &= "<functor>"
  elif v.isResource():
    result &= "<resource>"
  else:        
    var nv: SciterVal = v.clone()
    nv.convertToString(CVT_SIMPLE)
    result &= nv.getString()

proc getInt64*(x: SciterVal): int64 =
  assert ValueInt64Data(x.impl, result.addr) == HV_OK

proc getInt32*(x: SciterVal): int32 =
  assert ValueIntData(x.impl, result.addr) == HV_OK

proc getInt*(x: SciterVal): int32 =
    result = if x.isInt: getInt32(x) else: 0

proc getBool*(x: SciterVal): bool =    
    assert x.isBool, "Value is not BOOL type"    
    var i = x.getInt32()
    result = if i == 0: false else: true

proc getFloat*(x: SciterVal): float =    
  var r = ValueFloatData(x.impl, result.addr)
  assert r == HV_OK, "getFloat: " & $r.bool

proc getBytes*(x: SciterVal): seq[byte] =
  var p: LPCBYTE
  var size: uint32
  echo "getBytes: ", repr x, " v:", $x
  var r = ValueBinaryData(x.impl, p.addr, size.addr)
  assert r == HV_OK, "getBytes:" & repr r
  result = newSeq[byte](size)
  copyMem(result[0].addr, p, int(size) * sizeof(byte))

proc setBytes*(x: SciterVal, dat: var openArray[byte]): uint32 {.discardable.} =
  var p = cast[LPCBYTE](dat[0].addr)
  var size = dat.len()*sizeof(byte)
  assert ValueBinaryDataSet(x.impl, p, uint32(size), T_BYTES.UINT32, 0) == HV_OK    

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
  var t: int64
  assert x.isDate()
  if ValueInt64Data(x.impl, t.addr) == HV_OK: 
      return fromWinTime(t)
  else:
      return fromWinTime(0)
  
## for array and object types
proc len*(x: SciterVal): int32 =    
  assert ValueElementsCount(x.impl, result.addr) == HV_OK

proc enumerate*(x: SciterVal, cb: ptr KeyValueCallback, param: pointer = nil) =
  assert ValueEnumElements(x.impl, cb, param) == HV_OK

# one list fo two iterator...
var tempList = newSeq[(ptr SCITER_VALUE, ptr SCITER_VALUE)]() 

var cb = 
  proc (param: pointer; pkey: ptr SCITER_VALUE; pval: ptr SCITER_VALUE): bool {.stdcall.} = 
    tempList.add (pkey, pval)
    result = true

iterator items*(x: SciterVal): SciterVal =
  tempList.setLen(0)
  enumerate(x, cast[ptr KeyValueCallback](cb))
  var i = 0
  while i < len(tempList):
    yield SciterVal(impl: tempList[i][1])
    inc i

iterator pairs*(x: SciterVal): (SciterVal, SciterVal) =
  tempList.setLen(0)
  enumerate(x, cast[ptr KeyValueCallback](cb))
  var i = 0
  while i < len(tempList):
    yield (SciterVal(impl: tempList[i][0]), SciterVal(impl: tempList[i][1]))
    inc i

#proc `[]`*[I: Ordinal, VT:var Value | ptr Value](x: VT; i: I): SciterVal =
proc `[]`*[T: Ordinal](x: SciterVal; i: T): SciterVal =
  result = newValue()
  assert ValueNthElementValue(x.impl, i.INT, result.addr) == HV_OK

#proc `[]=`*[I: Ordinal, VT:var Value|ptr Value](x: VT; i: I; y: VT) =
proc `[]=`*(x: SciterVal; i: int32; y: SciterVal) =
  assert ValueNthElementValueSet(x.impl, i.INT, y.impl) == HV_OK

proc `[]`*(x: SciterVal; name: string): SciterVal =
  var key = newValue(name)
  result = newValue()
  assert ValueGetValueOfKey(x.impl, key.impl, result.impl) == HV_OK

proc `[]=`*(x: SciterVal; name: string; y: SciterVal) =
  var key = newValue(name)
  assert ValueSetValueToKey(x.impl, key.impl, y.impl) == HV_OK

## value functions calls
proc invokeWithSelf*(x: SciterVal, self: SciterVal, 
                    args: varargs[SciterVal]): SciterVal = 
  result = newValue(0)
  var clen = len(args)
  var cargs = newSeq[ptr SCITER_VALUE](clen + 1)
  for i in 0 ..< clen:
    cargs[i] = args[i].impl
    
  assert ValueInvoke(x.impl, self.impl, uint32(len(args)),
                      cargs[0], result.impl, nil) == HV_OK
  echo "invokeWithSelf. result: ", result

## value functions calls    
proc invoke*(x: SciterVal, args: varargs[SciterVal]): SciterVal =
  echo "invoke"
  var self = newValue()
  result = x.invokeWithSelf(self, args)
  echo result

var nfs = newSeq[NativeFunctor]()

proc pinvoke(tag: pointer;
            argc: uint32; 
            argv: ptr SCITER_VALUE;
            retval: ptr SCITER_VALUE) {.cdecl.} =
    #is available only when ``--threads:on`` and ``--tlsEmulation:off`` are used
    #setupForeignThreadGc()
  var i = cast[int](tag)
  var nf = nfs[i]    
  var res = nf(packArgs(argc, argv))    
  assert ValueInit(retval) == HV_OK
  assert ValueCopy(retval, res.addr) == HV_OK    

proc prelease(tag: pointer) {.cdecl.} = 
  echo "prelease tag index: ", cast[int](tag)

proc setNativeFunctor*(v: SciterVal, nf: NativeFunctor) = 
  nfs.add(nf)
  var tag = cast[ptr VOID](nfs.len() - 1)
  #var vv = v
  assert ValueNativeFunctorSet(v.impl, cast[ptr NATIVE_FUNCTOR_INVOKE](pinvoke), cast[ptr NATIVE_FUNCTOR_RELEASE](prelease), tag) == HV_OK

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