import os, nsciter, strformat, times

type
  ScitterRect = object
    impl: ptr Rect

proc `=destroy`(r: var ScitterRect) = 
  if r.impl != nil:
    dealloc(r.impl)

proc initScitterRect(right, bottom: int, left = 50, top = 50): ScitterRect = 
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
var rect = initScitterRect(420, 400)

let sapi = initSapi()

# create window
var wnd = sapi.SciterCreateWindow(
  cast[cuint](SW_CONTROLS or SW_MAIN or SW_TITLEBAR or SW_RESIZEABLE), 
  rect.impl, nil, nil, nil
)

# load htm file for sciter
assert sapi.SciterLoadFile(wnd, currentSourcePath().splitPath().head / "hello.htm")

# get root element (the <html> one) of the window
var rootElem: HELEMENT
echo sapi.SciterGetRootElement(wnd, addr rootElem)

proc lpToNim(str: LPCWSTR; str_length: cuint; param: pointer): VOID {.cdecl.} = 
  cast[ptr string](param)[] = $cast[WideCString](str)

var i = 0

proc elemFoundCb(elem: HELEMENT, param: pointer): bool {.cdecl.} = 
  echo "Button found..."
  echo elem.onClick(proc: uint32 = 
    echo "Clicked button"
    var node: HNODE
    var mystr: string
    discard sapi.SciterGetElementTextCB(elem, lpToNim, addr mystr)
    echo "Current text - ", mystr
    echo "Setting new text!"
    inc i
    var str = newWideCString(&"Wow, you pressed this button {i} times!")
    # GC_ref(str) # needed or not?
    discard sapi.SciterSetElementText(elem, cast[LPCWSTR](addr str[0]), uint32 str.len)
    # GC_unref(str)
    result = 0
  )
  result = true

wnd.onClick(proc: uint32 = 
  echo "Global click event handler 1"
)

wnd.onClick(proc: uint32 = 
  echo "Global click event handler 2"
)


var mysel = cstring("#btnOne")
echo sapi.SciterSelectElements(rootElem, "#btnOne", elemFoundCb, nil)

wnd.run()