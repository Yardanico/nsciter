when defined(linux):
  import sciwrap_lin
  export sciwrap_lin
elif defined(windows):
  import sciwrap_win
  export sciwrap_win