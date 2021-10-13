import nimterop/[cimport], os, strutils

cIncludeDir(@[
  "/usr/include/gtk-3.0",
  "/usr/include/glib-2.0",
  "/usr/lib/glib-2.0/include",
  "/usr/include/pango-1.0",
  "/usr/include/cairo",
  "/usr/include/gdk-pixbuf-2.0",
  "/usr/include/atk-1.0",
  "/usr/include/harfbuzz"
], exclude = true)

static:
  cSkipSymbol(@[
    "KB_LEFTBRACKET", "KB_RIGHTBRACKET", "KB_NUMLOCK",
    "SUBSCRIPTIONS_REQUEST", "RRT_FORCE_DWORD", "RT_DATA_FORCE_DWORD", "RS_FORCE_DWORD",
    "SCDOM_OK_NOT_HANDLED", "SCDOM_OK", "SCDOM_INVALID_HWND", "SCDOM_INVALID_HANDLE",
    "SCDOM_PASSIVE_HANDLE", "SCDOM_INVALID_PARAMETER", "SCDOM_OPERATION_FAILED"
  ])

const
  typeMap = "-TBOOL=bool,char16_t=cushort,UINT=cuint,SBOOL=bool"

cOverride:
  type
    HELEMENT* = distinct pointer # for easier differentiation between
      # HELEMENT and HWINDOW, and others maybe too 
    GtkWidget* {.header: "gtk/gtk.h", importc.} = object
    HWINDOW* = GtkWidget
    SCITER_VALUE* = VALUE

    RECT* {.bycopy.} = object
      left*: INT
      top*: INT
      right*: INT
      bottom*: INT

    LPRECT* = ptr RECT
    LPCRECT* = ptr RECT
    SCDOM_RESULT* {.size: 4.} = enum
      SCDOM_OK_NOT_HANDLED = (-1)
      SCDOM_OK = 0
      SCDOM_INVALID_HWND = 1
      SCDOM_INVALID_HANDLE = 2
      SCDOM_PASSIVE_HANDLE = 3
      SCDOM_INVALID_PARAMETER = 4
      SCDOM_OPERATION_FAILED = 5
  
  const
    SUBSCRIPTIONS_REQUEST* = (0xFFFFFFFF'i32).EVENT_GROUPS

cPlugin:
  import strutils

  proc onSymbol(sym: var Symbol) {.exportc, dynlib.} =
    sym.name = sym.name.strip(chars = {'_'})
    if sym.name in ["VALUE_TYPE", "LPELEMENT_EVENT_PROC"]:
      sym.name = "C_" & sym.name

cImport("/home/dian/Projects/nsciter/sdk/include/sciter-x.h", nimFile = "sciwrap.nim", recurse = true, flags = typeMap & " --noHeader")
#cImport("/home/dian/Projects/nsciter/go-sciter/include/sciter-x.h", recurse = true, flags = typeMap & " --noHeader")

echo "Fixing callbacks..."
let path = currentSourcePath().splitPath().head / "sciwrap.nim"
var data = readFile(path)
# Fix callback types (not sure if correct, need to ask Sciter author)
const cbs = [
  "SciterElementCallback", "SciterWindowDelegate", "KeyValueCallback", 
  "NATIVE_FUNCTOR_INVOKE", "NATIVE_FUNCTOR_RELEASE", "LPCSTR_RECEIVER", 
  "LPCWSTR_RECEIVER", "LPCBYTE_RECEIVER", "ElementEventProc"
]

for cb in cbs:
  data = data.replace("ptr " & cb, cb)

writeFile(path, data)
echo "Done!"