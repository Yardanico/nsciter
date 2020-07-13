import nimterop/[cimport]

cIncludeDir(@[
  "/usr/include/gtk-3.0",
  "/usr/include/glib-2.0",
  "/usr/lib/x86_64-linux-gnu/glib-2.0/include",
  "/usr/include/pango-1.0",
  "/usr/include/cairo",
  "/usr/include/gdk-pixbuf-2.0",
  "/usr/include/atk-1.0"
], exclude = true)

static:
  cSkipSymbol(@[
    "KB_LEFTBRACKET", "KB_RIGHTBRACKET", "KB_NUMLOCK",
    "SUBSCRIPTIONS_REQUEST", "RRT_FORCE_DWORD", "RT_DATA_FORCE_DWORD", "RS_FORCE_DWORD"
  ])

const
  typeMap = "-TBOOL=bool,char16_t=cushort,GtkWidget=HWINDOW,UINT=cuint"

cOverride:
  type
    HELEMENT = pointer
    HWINDOW* {.header: "gtk/gtk.h", importc: "GtkWindow*".} = pointer
    SCITER_VALUE = VALUE

    RECT* {.bycopy.} = object
      left*: INT
      top*: INT
      right*: INT
      bottom*: INT

    LPRECT* = ptr RECT
    LPCRECT* = ptr RECT

cPlugin:
  import strutils

  proc onSymbol(sym: var Symbol) {.exportc, dynlib.} =
    sym.name = sym.name.strip(chars = {'_'})
    if sym.name in ["VALUE_TYPE", "LPELEMENT_EVENT_PROC"]:
      sym.name = "C_" & sym.name

cImport("sciter-x.h", recurse = true, flags = typeMap & " --noHeader")