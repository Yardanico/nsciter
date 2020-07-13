import os, sciter, strformat

type
  ScitterRect = object
    impl: ptr Rect

proc `=destroy`(r: var ScitterRect) = 
  if r.impl != nil:
    dealloc(r.impl)

const
  StartLeft = 50'i32
  StartTop = 50'i32

proc initScitterRect(right, bottom: int32, left = StartLeft, top = StartTop): ScitterRect = 
  result = ScitterRect(
    impl: cast[ptr Rect](alloc(sizeof(Rect)))
  )

  result.impl[] = Rect(
    left: left, 
    top: top, 
    right: right + left, 
    bottom: bottom + top
  )

# create rect with window position size
var rect = initScitterRect(420, 400)


# create window
var wnd = SAPI().SciterCreateWindow(
  150, 
  rect.impl, nil, nil, nil
)

# load htm file for sciter
var n = newWideCString(currentSourcePath().splitPath().head / "hello.htm")
discard SAPI().SciterLoadFile(wnd, cast[LPCWSTR](addr n[0]))

# get root element (the <html> one) of the window
var rootElem: HELEMENT
discard SAPI().SciterGetRootElement(wnd, addr rootElem)

proc lpToNim(str: WideCString; str_length: cuint; param: pointer) {.stdcall.} = 
  cast[ptr string](param)[] = $str

var i = 0

proc elemFoundCb(elem: HELEMENT, param: pointer): bool {.cdecl.} = 
  echo "found elem!"
  echo elem.onClick(proc: uint32 = 
    echo "on click"
    var node: HNODE
    var mystr: string
    discard SAPI().SciterGetElementTextCB(elem, cast[ptr LPCWSTR_RECEIVER](lpToNim), addr mystr)
    echo "Current text - ", mystr
    echo "Setting new text!"
    inc i
    var str = newWideCString(&"Wow, you pressed this button {i} times!")
    # GC_ref(str) # needed or not?
    discard SAPI().SciterSetElementText(elem, cast[LPCWSTR](addr str[0]), uint32 str.len)
    # GC_unref(str)
    result = 0
  )
  result = true


var mysel = cstring("#btnOne")

echo SAPI().SciterSelectElements(rootElem, cast[LPCSTR](addr mysel[0]), cast[ptr SciterElementCallback](elemFoundCb), nil)

wnd.run()