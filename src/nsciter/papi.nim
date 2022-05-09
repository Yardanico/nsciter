import os, dynlib

import sciwrap
when defined(linux):
  type
      WindowHandle* = ptr Gtkwidget
elif defined(windows):
  type
      WindowHandle* = Hwnd # hwnd is already a pointer
type
  EventTarget* = WindowHandle or Helement

var 
  sapi*: ptr ISciterAPI

proc initSapi*(): ptr ISciterAPI =
  ## Loads the dynamic Sciter library by searching in:
  ## - Default search paths
  ## - App directory (where the binary is located)
  ## - Current directory (the folder application was launched from)
  ## 
  ## and gets the reference to the global Sciter API struct which is
  ## then stored in the global `sapi` variable.
  if not sapi.isNil():
    return sapi
  # Try to load (default OS search paths)
  var libHandle = loadLib(SCITER_DLL_NAME)

  # Try to load from the app binary directory
  if libHandle == nil:
    libHandle = loadLib(getAppDir() / SCITER_DLL_NAME)
  
  # Try to load from the current directory
  if libHandle == nil:
    libHandle = loadLib(getCurrentDir() / SCITER_DLL_NAME)
  
  # Didn't find it
  if libHandle == nil:
    quit "Sciter runtime library not found (tried to load " & SCITER_DLL_NAME & " )"
  var procPtr = cast[SciterAPI_ptr](symAddr(libHandle, "SciterAPI"))
  sapi = procPtr()
  result = sapi

# xxx - do we want these as procs or just same as sapi?
proc gapi*(): LPSciterGraphicsAPI {.inline.} =
  ## Returns a pointer to the Sciter's Graphics API struct 
  result = sapi.GetSciterGraphicsAPI()
  
proc rapi*(): LPSciterRequestAPI {.inline.} =
  ## Returns a pointer to the Sciter's Graphics API struct 
  result = sapi.GetSciterRequestAPI()
