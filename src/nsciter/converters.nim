import sciwrap


converter toLPCWSTR*(s: string): LPCWSTR = 
  ## Converts a Nim string to Sciter-expected ptr wchar_t (LPCWSTR)
  var widestr = newWideCString(s)
  result = cast[LPCWSTR](addr widestr[0])

converter toLPCWSTR*(s: WideCStringObj): LPCWSTR = 
  ## Converts a Nim string to Sciter-expected ptr wchar_t (LPCWSTR)
  # xxx - better ideas?
  var widestr = newWideCString($s)
  result = cast[LPCWSTR](addr widestr[0])

converter Lpcstr*(s: string): Lpcstr = 
  ## Converts a Nim string to Sciter-expected ptr char (LPCSTR)
  var mystr = cstring(s)
  result = cast[Lpcstr](addr mystr[0])

converter toLPCSTR*(s: cstring): Lpcstr = 
  ## Converts a Nim string to Sciter-expected ptr char (LPCSTR)
  var mystr = cstring($s)
  result = cast[Lpcstr](addr mystr[0])