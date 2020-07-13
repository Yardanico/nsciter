import sciwrap, os, dynlib

var 
  sapi*: ptr ISciterAPI

proc initSapi*(): ptr ISciterAPI =  
  if not sapi.isNil():
    return sapi
  # Try to load
  var libhandle = loadLib(SCITER_DLL_NAME)
  # Try to load from the current directory
  if libhandle == nil:
    libhandle = loadLib(getCurrentDir() / SCITER_DLL_NAME)
  # Didn't find it
  if libhandle == nil:
    quit "Sciter runtime library not found (tried to load " & SCITER_DLL_NAME & " )"
  var procPtr = cast[SciterAPI_ptr](symAddr(libhandle, "SciterAPI"))
  sapi = procPtr()
  result = sapi

# xxx - do we want these as procs or just same as sapi?
proc gapi*(): LPSciterGraphicsAPI {.inline.} =
  result = sapi.GetSciterGraphicsAPI()
  
proc rapi*(): LPSciterRequestAPI {.inline.} =
  result = sapi.GetSciterRequestAPI()