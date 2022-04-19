import futhark

type
  Lpvoid* = pointer

importc:
  sysPath "/usr/bin/../lib64/gcc/x86_64-pc-linux-gnu/11.2.0/../../../../include/c++/11.2.0"
  sysPath "/usr/bin/../lib64/gcc/x86_64-pc-linux-gnu/11.2.0/../../../../include/c++/11.2.0/x86_64-pc-linux-gnu"
  sysPath "/usr/bin/../lib64/gcc/x86_64-pc-linux-gnu/11.2.0/../../../../include/c++/11.2.0/backward"
  sysPath "/usr/lib/gcc/x86_64-pc-linux-gnu/11.2.0/include"
  sysPath "/usr/lib/gcc/x86_64-pc-linux-gnu/11.2.0/include-fixed"
  sysPath "/usr/lib/clang/13.0.1/include"
  sysPath "/usr/local/include"
  sysPath "/usr/include"
  sysPath "/usr/include/clang-c"
  sysPath "/usr/include/gtk-3.0"
  sysPath "/usr/include/glib-2.0"
  sysPath "/usr/lib/glib-2.0/include"
  sysPath "/usr/include/pango-1.0"
  sysPath "/usr/include/cairo"
  sysPath "/usr/include/gdk-pixbuf-2.0"
  sysPath "/usr/include/atk-1.0"
  sysPath "/usr/include/harfbuzz"
  path "/home/dian/Projects/nsciter/sciter-js-sdk/include/"
  "sciter-x.h"