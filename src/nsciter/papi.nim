import sciwrap, os, dynlib

var 
  sapi*: ptr ISciterAPI

proc initSapi*(): ptr ISciterAPI =
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
  result = sapi.GetSciterGraphicsAPI()
  
proc rapi*(): LPSciterRequestAPI {.inline.} =
  result = sapi.GetSciterRequestAPI()
