import os, nsciter, strformat, times, mathexpr

# create rect with window position size
var rect = newSciterRect(420, 125)

let sapi = initSapi()

# create window
var wnd = sapi.SciterCreateWindow(
  cast[cuint](SW_CONTROLS or SW_MAIN or SW_TITLEBAR or SW_RESIZEABLE), 
  rect.impl, nil, nil, nil
)

# load htm file for sciter
wnd.loadFile(currentSourcePath().splitPath().head / "repl1.htm")

# get root element (the <html> one) of the window
var rootElem: HELEMENT
echo sapi.SciterGetRootElement(wnd, addr rootElem)

proc lpToNim(str: LPCWSTR; str_length: cuint; param: pointer): VOID {.cdecl.} = 
  cast[ptr string](param)[] = $cast[WideCString](str)

var i = 0

var resElem: HELEMENT

proc resFound(elem: HELEMENT, param: pointer): bool {.cdecl.} = 
  echo "Result field found"
  reselem = elem
  result = true

echo sapi.SciterSelectElements(rootElem, "#mathRes", resFound, nil)

proc onKeyPress*(target: HELEMENT): SCDOM_RESULT {.discardable.} =
  var eh = newEventHandler()

  eh.handle_key = proc(he: HELEMENT, params: ptr KEY_PARAMS): uint =
    var str: string
    discard sapi.SciterGetElementTextCB(target, lpToNim, addr str)
    var data = ""
    try:
      let e = newEvaluator()
      data = $e.eval(str)
    except:
      data = "error"
    
    let sdata = newWideCString(data)
    discard sapi.SciterSetElementText(resElem, cast[LPCWSTR](sdata[0].addr), cuint len(sdata))
  
  result = target.Attach(eh, HANDLE_KEY.cuint).SCDOM_RESULT

proc inputFound(elem: HELEMENT, param: pointer): bool {.cdecl.} = 
  echo "Input elem found"
  discard elem.onKeyPress()
  result = true

discard sapi.SciterSelectElements(rootElem, "#mathExpr", inputFound, nil)

wnd.run()