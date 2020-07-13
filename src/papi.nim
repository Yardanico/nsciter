import sciwrap, os, dynlib
var api: ptr ISciterAPI

proc SAPI*(): ptr ISciterAPI {.inline.} =  
  if api != nil:
    return api
  var libhandle = loadLib(SCITER_DLL_NAME)
  #echo "Load Library Sciter"
  if libhandle == nil:
    libhandle = loadLib(getCurrentDir() / SCITER_DLL_NAME)
  if libhandle == nil:
    quit "sciter runtime library not found: " & SCITER_DLL_NAME
    #return nil
  var procPtr = symAddr(libhandle, "SciterAPI")
  let p = cast[SciterAPI_ptr](procPtr)
  api = p()
  result = api
  
proc gapi*(): LPSciterGraphicsAPI {.inline.} =
  result = SAPI().GetSciterGraphicsAPI()
  
proc rapi*(): LPSciterRequestAPI {.inline.} =
  result = SAPI().GetSciterRequestAPI()