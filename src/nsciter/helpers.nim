import std/unicode

type
  SciterBaseError* = object of CatchableError
  
  SciterBaseDefect* = object of Defect

  SciterValueError* = object of SciterBaseError

const isDebug* = defined(nsciterDbg)

import papi, sciwrap2

# Taken from https://github.com/treeform/encode. License applies
proc utf8to16*(input: string): seq[uint16] =
  for r in input.runes:
    let u = r.uint32
    if (0x0000 <= u and u <= 0xD7FF) or (0xE000 <= u and u <= 0xFFFF):
      result.add(u.uint16)
    elif 0x010000 <= u and u <= 0x10FFFF:
      let
        u0 = u - 0x10000
        w1 = 0xD800 + u0 div 0x400
        w2 = 0xDC00 + u0 mod 0x400
      result.add(w1.uint16)
      result.add(w2.uint16)

# Taken from https://github.com/treeform/encode. License applies
proc utf16to8*(input: ptr UncheckedArray[uint16], len: int): string =
  var i = 0
  while i < len:
    var u1 = input[i]
    i += 1
    if u1 - 0xd800 >= 0x800:
      result.add Rune(u1.int)
    else:
      var u2 = input[i]
      i += 1
      if ((u1 and 0xfc00) == 0xd800) and ((u2 and 0xfc00) == 0xdc00):
        result.add Rune((u1.uint32 shl 10) + u2.uint32 - 0x35fdc00)
      else:
        # Error, produce tofu character.
        result.add "□"

proc loadFile*(wnd: ptr GtkWidget, path: string) =
  var path = utf8to16(path)
  # TODO: Raise an exception if this fails?
  discard sapi.SciterLoadFile(wnd, cast[Lpcwstr](addr path[0]))

type
  SciterRect* = object
    impl*: ptr Rect

proc `=destroy`*(r: var SciterRect) =
  when isDebug:
    echo "Deallocating a sciter rect"
  if r.impl != nil:
    dealloc(r.impl)

proc newSciterRect*(right, bottom: int, left = 50, top = 50): SciterRect =
  result = SciterRect(
    impl: create(Rect)
  )

  result.impl[] = Rect(
    left: INT left,
    top: INT top,
    right: INT right + left,
    bottom: INT bottom + top
  )

type
  SciterWindowFlag* {.size: sizeof(cuint), pure.} = enum
    swChild, swTitlebar, swResizeable, swTool,
    swControls, swGlassy, swAlpha, swMain, swPopup,
    swEnableDebug, swOwnsVm

proc createWindow*(flags = {swMain, swTitlebar, swControls, swResizeable},
    rect = SciterRect()): ptr GtkWidget =
  ## Creates a new Sciter window with a `set` of `SciterWindowFlag` flags,
  ## and an optional rectangle containing the starting position and size
  ## of the window
  result = sapi.SciterCreateWindow(
    cast[cuint](flags),
    rect.impl, nil, nil, nil
  )

proc enableInspectorSupport* = 
  ## Enables inspector support for the whole application and allows
  ## all types of scripting APIs to be executed. Remove this from production
  ## builds of your application!
  discard sapi.SciterSetOption(nil, cuint SCITER_SET_DEBUG_MODE, 1)
  # Allow calling all APIs in the inspector via eval
  discard sapi.SciterSetOption(nil, cuint SCITER_SET_SCRIPT_RUNTIME_FEATURES,
        cast[cuint](cuint(ALLOW_FILE_IO) or cuint(ALLOW_SOCKET_IO) or cuint(ALLOW_EVAL) or cuint(ALLOW_SYSINFO)))