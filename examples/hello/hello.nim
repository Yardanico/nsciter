import os, nsciter, strformat, times

# Initialize the Sciter API
let sapi = initSapi()

# Create a Sciter rect with the window position (on the screen)
var rect = newSciterRect(420, 400)

# Create a new Sciter window with some flags
var wnd = createWindow({swMain, swTitlebar, swControls, swResizeable}, rect)

# Load the HTM file into the window
let path = currentSourcePath().splitPath().head / "hello.htm"
wnd.loadFile(path)


# Get root element (the <html> one) of the window
var rootElem: HELEMENT
echo sapi.SciterGetRootElement(wnd, addr rootElem)

proc lpToNim(str: LPCWSTR; str_length: cuint; param: pointer): VOID {.cdecl.} = 
  cast[ptr string](param)[] = utf16to8(cast[ptr UncheckedArray[uint16]](str), int str_length)

var i = 0

proc elemFoundCb(elem: HELEMENT, param: pointer): bool {.cdecl.} = 
  echo "Button found..."
  echo elem.onClick(proc: bool = 
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
    result = false
  )
  result = true

wnd.onClick(proc: bool = 
  echo "Global click event handler 1"
)

wnd.onClick(proc: bool = 
  echo "Global click event handler 2"
)

var mysel = cstring("#btnOne")
echo sapi.SciterSelectElements(rootElem, "#btnOne", elemFoundCb, nil)

# Open the window and start the main loop
wnd.run()