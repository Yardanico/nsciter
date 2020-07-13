import os, nsciter, strformat, times, mathexpr

type
  ScitterRect = object
    impl: ptr Rect

proc `=destroy`(r: var ScitterRect) = 
  if r.impl != nil:
    dealloc(r.impl)

proc initScitterRect(right, bottom: int, left = 500, top = 500): ScitterRect = 
  result = ScitterRect(
    impl: cast[ptr Rect](alloc(sizeof(Rect)))
  )

  result.impl[] = Rect(
    left: INT left, 
    top: INT top, 
    right: INT right + left, 
    bottom: INT bottom + top
  )

# create rect with window position size
var rect = initScitterRect(420, 125)

let sapi = initSapi()

# create window
var wnd = sapi.SciterCreateWindow(
  cast[cuint](SW_CONTROLS or SW_MAIN or SW_TITLEBAR or SW_RESIZEABLE), 
  rect.impl, nil, nil, nil
)

proc funct(data: seq[ptr Value]): Value = 
  echo "in funct"
  if data.len < 1: 
    let b = newValue("invalid call!").impl[]
    return b
  let str = SciterVal(impl: data[0]).getString()
  var data = ""
  try:
    let e = newEvaluator()
    data = $e.eval(str)
  except:
    data = "error"
  
  let res = newValue(data)
  result = res.impl[]

echo wnd.defineScriptingFunction("getLib", 
  proc(args: seq[ptr Value]): Value =
    echo "called"
    let val = newValue()
    let fun = newValue()
    fun.setNativeFunctor(funct)
    echo "functor set"
    val["calculate"] = fun
    result = val.impl[]
    echo "result set"
)

# load htm file for sciter
assert sapi.SciterLoadFile(wnd, currentSourcePath().splitPath().head / "repl2.htm")

wnd.run()