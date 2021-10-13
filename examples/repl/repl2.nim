import os, nsciter, strformat, times, mathexpr

# create rect with window position size
var rect = newSciterRect(420, 140)

let sapi = initSapi()
enableInspectorSupport()

# create window
var wnd = sapi.SciterCreateWindow(
  cast[cuint](SW_CONTROLS or SW_MAIN or SW_TITLEBAR or SW_RESIZEABLE), 
  rect.impl, nil, nil, nil
)


proc funct(data: seq[ptr Value]): Value = 
  if data.len < 1: 
    let b = newValue("Requires 1 argument: string to evaluate")
    discard sapi.ValueCopy(addr result, b.impl)
    return
  let str = SciterVal(impl: data[0]).getStr()
  var data = ""
  try:
    let e = newEvaluator()
    data = $e.eval(str)
  except:
    data = "error"
  let res = newValue(data)
  discard sapi.ValueCopy(addr result, res.impl)

echo wnd.defineScriptingFunction("calculate", funct)

# load htm file for sciter
wnd.loadFile(currentSourcePath().splitPath().head / "repl2.htm")

wnd.run()