import std/[strformat, times, unicode]

import sciwrap2, papi, converters, event, helpers


# XXX: Consider trying to remove the heap allocation and doing it as described
# in https://sciter.com/forums/topic/a-question-about-sciters-value-type/ ?
# The only downside will be that it'll be needed to have _all_ SciterValObj
# variables defined as `var`
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

  SciterValKind* {.pure.} = enum 
    ## An enum of all possible types
    ## a Sciter value might hold
    # See C_VALUE_TYPE for the original definitions
    svUndefined = 0, svNull, svBool, svInt, svFloat,
    svString, svDate, svCurrency, svLength, svArray, svMap
    svFunction, svBytes, svObject, svResource, svDuration,
    svAngle, svColor, svAsset

proc kind*(val: SciterVal): SciterValKind = 
  ## Gets the type of a Sciter value `val`
  ## 
  ## `v` must be initialized!
  SciterValKind(val.impl.t)

template sciterErr(res: untyped) = 
  raise newException(
    SciterValueError, 
    "Sciter API call failed! Error code: " & $uint(res)
  )

template sciterAssert(chk: untyped) =
  if not chk:
    raise newException(
      SciterValueError, 
      "Assert failed: " & astToStr(chk)
    )

template isOk(vs: ValueResult | Uint) = 
  # raises an error if vs is not HV_OK
  when vs is Valueresult:
    let res = vs
  else:
    let res = Valueresult(vs)
  if res != HV_OK:
    sciterErr(res)

template isOk(vs: ValueResult, msg: string) = 
  # raises an error with custom message if vs is not HV_OK
  when vs is Valueresult:
    let res = vs
  else:
    let res = Valueresult(vs)
  if res != HV_OK:
    raise newException(SciterValueError, msg)

template checkTypDefault(call, default: untyped) {.dirty.} = 
  let res = call
  if res == HV_INCOMPATIBLE_TYPE:
    result = default
  elif res != HV_OK:
    sciterErr(res)

template checkTypDefault(call, ifOk, default: untyped): untyped = 
  # Given a call, executes `ifOk` code if result is HV_OK,
  # executes `default` code if incompatible types, and raises
  # an exception otherwise
  let res = call
  if res == HV_OK:
    ifOk
  elif res == HV_INCOMPATIBLE_TYPE:
    default
  else:
    sciterErr(res)

template enumToInt(typ: untyped): void =
  converter fromCuint(x: cuint): typ  =
    result = typ(x)
  converter toCuint(x: typ): cuint =
    result = cuint(x)

# All of those converters are private to this module
enumToInt(VALUE_RESULT)
enumToInt(Valuetype)
enumToInt(VALUE_UNIT_TYPE_STRING)
enumToInt(VALUE_UNIT_TYPE_OBJECT)

converter toCuint(val: SciterValKind): cuint = 
  cuint(val)

proc `==`(a: cuint, b: VALUE_RESULT): bool = a == b.cuint

proc `=destroy`(val: var SciterValObj) =   
  when isDebug:
    echo "Destroying ", x.tag
  if val.impl != nil:
    discard sapi.ValueClear(val.impl)
    dealloc(val.impl)

proc `=`(dst: var SciterValObj, src: SciterValObj) = 
  when isDebug:
    echo "Assigning ", dst.tag
  if dst.impl != src.impl:
    `=destroy`(dst.impl)
    dst.impl = cast[ptr SCITER_VALUE](alloc(sizeof(SCITER_VALUE)))
    discard sapi.ValueInit(dst.impl)
    discard sapi.ValueCopy(dst.impl, src.impl)

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
  result = bool sapi.ValueIsNativeFunctor(v.impl)

proc newValue*(): SciterVal =
  ## Creates a new empty Sciter value.
  result.impl = create(SCITER_VALUE)
  isOk sapi.ValueInit(result.impl)

proc newValueDbg*(tag: string): SciterVal = 
  result = newValue()
  when isDebug:
    result.tag = tag

proc nullValue*(): SciterVal =
  ## Creates a new null Sciter value.
  result = newValue()
  result.impl.t = T_NULL.cuint

proc copyTo*(src: SciterVal, dst: SciterVal) {.inline.} =
  ## Copies the Sciter value `src` into the Sciter value `dst`.
  isOk sapi.ValueCopy(dst.impl, src.impl)

proc copy*(val: SciterVal): SciterVal {.inline.} =
  ## Creates a new copy from a Sciter value `x` 
  result = nullValue()
  isOk sapi.ValueCopy(result.impl, val.impl)

proc initValue*(val: string): SciterValue = 
  ## Creates a new stack-allocated Sciter value from a string `val`.
  ## 
  ## .. warning:: Be careful when using stack-allocated Sciter values!
  var ws = utf8to16(val)
  isOk sapi.ValueStringDataSet(addr result, cast[Lpcwstr](ws[0].addr), ws.len.uint32, 0'u32)

proc newValue*(val: string): SciterVal =
  ## Creates a new Sciter value from a Nim string `val`
  var ws = utf8to16(val)
  result = newValue()
  isOk sapi.ValueStringDataSet(result.impl, cast[Lpcwstr](ws[0].addr), ws.len.uint32, 0'u32)

proc getStr*(val: SciterVal, default = ""): string =
  ## Gets a string from a Sciter string-like value `x`.
  ## 
  ## Returns `default` if `x` is not a string
  var widestr: ptr UncheckedArray[uint16]
  var len: uint32    
  checkTypDefault(sapi.ValueStringData(val.impl, cast[ptr LPCWSTR](addr widestr), addr len)):
    result = utf16to8(widestr, int len)
  do:
    result = default

#[
proc newValue*(val: int64): SciterVal =
  ## Creates a new int64 Sciter value from `val`. 
  ##
  result = newValue()
  isOk sapi.ValueInt64DataSet(result.impl, val, svInt, 0)
]#

proc newValue*(val: int8 | int16 | int32 | int64): SciterVal =
  ## Creates a new Sciter value from an integer `val`.
  ## Internally stores the value as a 32-bit Sciter integer
  ## 
  ## .. warning:: For 64-bit integers this truncates the integer to 32-bits
  ##    as Sciter does NOT support 64-bit integers!
  result = newValue()
  isOk sapi.ValueIntDataSet(result.impl, INT val, cuint svInt, cuint(0))

proc newValue*(time: Time): SciterVal =
  result = newValue()
  var s = toWinTime(time)
  isOk sapi.ValueInt64DataSet(result.impl, s, svDate, DT_HAS_SECONDS.UINT32)

proc newValue*(fl: float64): SciterVal =
  ## Creates a new Sciter value from a float `val`.
  result = newValue()
  isOk sapi.ValueFloatDataSet(result.impl, fl, svFloat, 0)

proc newValue*(val: bool): SciterVal =
  ## Creates a new Sciter value from a bool `val`.
  ## Internally stores the value as an `int32` Sciter value.
  result = newValue()
  isOk sapi.ValueIntDataSet(result.impl, cint(val), svBool, 0)

proc newValue*(val: openArray[(string, string)]): SciterVal =
  ## Creates a new Sciter map from `val` pairs.
  result = newValue()
  for (key, val) in val:
    # We can stack-allocate here for more efficiency
    var
      key = initValue(key)
      val = initValue(val)
    isOk sapi.ValueSetValueToKey(result.impl, addr key, addr val)

proc newValueObj*(obj: object): SciterVal =
  ## Creates a new Sciter map from fields and values of an object `obj`
  ## 
  ## Will fail if an object contains a field with a type that doesn't 
  ## have `newValue` defined for it
  result = newValue()
  for (fname, fval) in obj.fieldPairs():
    var key = initValue(fname)
    # Call a generic newValue
    var val = newValue(fval)
    isOk sapi.ValueSetValueToKey(result.impl, addr key, val.impl)

proc convertFromString*(val: SciterVal, s: string, how = CVT_SIMPLE)  =
  var ws = utf8to16(s)
  isOk sapi.ValueFromString(val.impl, cast[Lpcwstr](ws[0].addr), ws.len.uint32, how.UINT32)

proc convertToString*(val: SciterVal, how = CVT_SIMPLE) =
  isOk sapi.ValueToString(val.impl, how.UINT32)

proc `$`*(v: SciterVal): string =
  ## Stringifies a Sciter value `x`. 
  ## 
  ## Returns a string that contains the type of the Sciter value, and, 
  ## if possible, string representation of its actual data.
  let knd = v.kind()
  result = fmt"<{knd}>"

  case knd
  of svString:
    result.add " "     
    result.add v.getStr()
  elif v.isNativeFunctor() or v.isObjectFunction():
    result = "<functor>"
  else:
    # TODO: maybe stack-alloc for more efficiency?
    var nv = v.copy()
    nv.convertToString(CVT_SIMPLE)
    result &= nv.getStr()


# Apparently Sciter does not have 64 general-purpose integers and only uses them
# for DATE and CURRENCY types
# See https://sciter.com/forums/topic/how-to-compute-if-this-value-over-int32/
#[
proc getInt64*(val: SciterVal, default = 0): int64 =
  ## Gets a 64-bit int from a Sciter value `x`. 
  ## `x` **must** be a 64-bit Sciter value (this proc won't work 
  ## for getting int32 or smaller)!
  ## 
  ## Returns `default` if `x` is not an int
  checkTypDefault sapi.ValueInt64Data(val.impl, addr result), default
]#

proc getInt*(val: SciterVal, default = 0'i32): int32 =
  ## Gets a 32-bit int from a Sciter value `x`.
  ## 
  ## Returns `default` if `x` is not an int
  checkTypDefault sapi.ValueIntData(val.impl, addr result), default

proc getBool*(val: SciterVal, default = false): bool = 
  ## Gets a bool from a Sciter value `x` (checks if `x` != 0).
  ## 
  ## `x` must be a bool Sciter value 
  sciterAssert val.kind in {svBool, svInt}
  var tmp: cint
  checkTypDefault(sapi.ValueIntData(val.impl, addr tmp)):
    result = tmp != 0
  do:
    result = default

proc getFloat*(val: SciterVal, default = 0.0): float =
  ## Gets a float from a Sciter float value `x`.
  ## 
  ## Returns `default` if `x` is not a float
  checkTypDefault sapi.ValueFloatData(val.impl, addr result), default

proc getBytes*(val: SciterVal, default: seq[byte] = @[]): seq[byte] =
  ## Gets bytes from a Sciter value `val` containing binary data.
  ## 
  ## Returns `default` if `x` is not a byte array
  var p: LPCBYTE
  var size: cuint
  checkTypDefault(sapi.ValueBinaryData(val.impl, addr p, addr size)):
    result = newSeqUninitialized[byte](size)
    # Copy the binary data
    copyMem(addr result[0], p, int(size) * sizeof(byte))
  do:
    result = default

proc setBytes*(val: SciterVal, bytes: openArray[byte]) =
  ## Sets Sciter value `x` to binary data `bytes`.
  isOk sapi.ValueBinaryDataSet(
    val.impl, 
    cast[LPCBYTE](unsafeAddr bytes[0]), # our own buffer
    cuint(bytes.len() * sizeof(byte)),  # total data size
    svBytes, 0
  )

proc getColor*(val: SciterVal, default = 0'u32): uint32 =
  ## Gets the color (in ABGR format) from a Sciter value `val`. 
  ## `val` must be a color.
  ## 
  ## Returns `default` if `val` is not a color.
  if val.kind == svColor:
    result = uint32 val.getInt()
  else:
    result = default

proc getAngle*(val: SciterVal, default = 0'f64): float64 = 
  ## Gets the angle in radians from a Sciter value `val`. 
  ## `val` must be an angle.
  ## 
  ## Returns `default` if `val` is not an angle.
  if val.kind == svAngle:
    result = val.getFloat()
  else:
    result = default

proc getDuration*(val: SciterVal, default = 0'f64): float64 =   
  ## Gets the duration in seconds from a Sciter value `val`. `
  ## val` must be a duration.
  ## 
  ## Returns `default` if `val` is not a duration.
  sciterAssert val.kind == svDuration
  result = getFloat(val)

proc getDate*(val: SciterVal, default = Time()): Time = 
  ## Gets the date from a Sciter value `val`. `val` must be a date.
  ## 
  ## Returns `default` if `val` is not a date
  if val.kind == svDate:
    var t: int64
    isOk sapi.ValueInt64Data(val.impl, addr t)
    result = fromWinTime(t)
  else:
    result = default

proc len*(val: SciterVal): int =
  ## Gets the length of the Sciter value `x`. `x` should be an array or 
  ## an object type.
  var temp: cint
  isOk sapi.ValueElementsCount(val.impl, addr temp)
  result = int temp

#  Keyvaluecallback_436208382* = proc (a0: Lpvoid_436208209; a1: ptr Value_436208127;
 #                                     a2: ptr Value_436208127): Sbool_436208261 {.
proc getItemsCb(param: Lpvoid; pkey, pval: ptr Scitervalue): bool {.cdecl.} = 
  cast[ptr seq[SciterVal]](param)[].add SciterVal(impl: pval).copy()
  result = true

proc getItems*(val: SciterVal): seq[SciterVal] =
  ## Gets all items from a Sciter value `x`
  # TODO: do we really need this optimization?
  result = newSeqOfCap[SciterVal](val.len())
  
  isOk sapi.ValueEnumElements(val.impl, cast[ptr Keyvaluecallback](getItemsCb), cast[Lpvoid](addr result))

iterator items*(val: SciterVal): SciterVal = 
  ## Yields values of `x`. `x` must be T_MAP, T_FUNCTION or T_OBJECT
  for elem in val.getItems():
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

proc getPairs*(val: SciterVal): seq[SciterKeyVal] =
  ## Gets (key, value) of a Sciter value `x`. `x` must be T_MAP, 
  ## T_FUNCTION or T_OBJECT
  result = newSeqOfCap[SciterKeyVal](val.len())
  
  # Pass the nim seq itself as a pointer so we can add values to
  # the resulting seq directly
  isOk sapi.ValueEnumElements(val.impl, cast[ptr Keyvaluecallback](getPairsCb), addr result)

iterator pairs*(val: SciterVal): (SciterVal, SciterVal) = 
  ## Yields (key, value) pairs from `x`. `x` must be T_MAP, T_FUNCTION 
  ## or T_OBJECT
  for (key, val) in val.getPairs():
    yield (key, val)

proc `[]`*[T: Ordinal](val: SciterVal; i: T): SciterVal =
  ## Gets `i`th value from a Sciter value `x`. `x` must be an array-like
  ## value.
  result = newValue()
  isOk sapi.ValueNthElementValue(val.impl, i.INT, result.impl)

proc `[]=`*(val: SciterVal; i: int32; y: SciterVal) =
  isOk sapi.ValueNthElementValueSet(val.impl, i.INT, y.impl)

proc `[]`*(val: SciterVal; name: string): SciterVal =
  var key = newValue(name)
  result = newValue()
  isOk sapi.ValueGetValueOfKey(val.impl, key.impl, result.impl)

proc `[]=`*(val: SciterVal; name: string; y: SciterVal) =
  var key = newValue(name)
  isOk sapi.ValueSetValueToKey(val.impl, key.impl, y.impl)

proc invokeWithSelf*(val: SciterVal, self: SciterVal, 
                    args: varargs[SciterVal]): SciterVal = 
  result = newValue(0)
  var clen = len(args)
  var cargs = newSeq[ptr SCITER_VALUE](clen + 1)
  for i in 0 ..< clen:
    cargs[i] = args[i].impl
    
  sciterAssert sapi.ValueInvoke(val.impl, self.impl, uint32(len(args)),
                      cargs[0], result.impl, nil) == HV_OK
  echo "invokeWithSelf. result: ", result

proc invoke*(val: SciterVal, args: varargs[SciterVal]): SciterVal =
  echo "invoke"
  var self = newValue()
  result = val.invokeWithSelf(self, args)
  echo result

var nfs = newSeq[NativeFunctor]()

proc pinvoke(tag: pointer;
            argc: cuint; 
            argv: ptr SCITER_VALUE;
            retval: ptr SCITER_VALUE) {.cdecl.} =
    #is available only when ``--threads:on`` and ``--tlsEmulation:off`` are used
    #setupForeignThreadGc()
  var i = cast[int](tag)
  var nf = nfs[i]    
  var res = nf(packArgs(argc, argv))    
  isOk sapi.ValueInit(retval)
  isOk sapi.ValueCopy(retval, res.addr)    

proc prelease(tag: pointer) {.cdecl.} = 
  echo "prelease tag index: ", cast[int](tag)

proc setNativeFunctor*(v: SciterVal, nf: NativeFunctor) = 
  nfs.add(nf)
  var tag = cast[pointer](nfs.len() - 1)
  isOk sapi.ValueNativeFunctorSet(v.impl, cast[ptr Nativefunctorinvoke](pinvoke), cast[ptr Nativefunctorrelease](prelease), tag)

proc callFunction*(hwnd: Gtkwidget | HELEMENT, 
                  name: cstring, args: varargs[SciterVal]): SciterVal =  
  result = newValue()    
  var clen = len(args)
  var cargs = newSeq[ptr SCITER_VALUE](clen)
  for i in 0 ..< clen:
    cargs[i] = args[i].impl
  when hwnd is Gtkwidget:
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
  var ok =  sapi.SciterCallScriptingMethod(
    he, name, cargs[0], uint32(clen), result.impl
  )
  doAssert ok.SCDOM_RESULT == SCDOM_OK, "ok is:" & $ok 
  #sciter.Value.raise_from(rv, ok == SCDOM_RESULT.SCDOM_OK, name)
  #self._throw_if(ok)
