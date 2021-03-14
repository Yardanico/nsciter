
import nsciter / [sciwrap, papi, event, converters, valueprocs, helpers]
export sciwrap, papi, event, converters, valueprocs, helpers

when defined(linux):
  {.passC: gorge("pkg-config gtk+-3.0 --cflags").}
  {.passL: gorge("pkg-config gtk+-3.0 --libs").}
  const
      gtkhdr = "<gtk/gtk.h>"
      gtklib = "libgtk-3.so.0"
  type
      GtkWindow {.final, header: gtkhdr, importc.} = object
  proc toGtkWindow(w: ptr GtkWidget): ptr GtkWindow {.importc: "GTK_WINDOW".}
  proc gtk_init(arc: ptr cint, argv: ptr ptr ptr cchar) {.importc: "gtk_init".}
  proc gtk_main() {.importc: "gtk_main".}
  proc gtk_window_present(w: ptr GtkWindow) {.
      dynlib: gtklib, importc: "gtk_window_present".}
  proc gtk_widget_get_toplevel(w: ptr GtkWidget): ptr GtkWidget {.
      dynlib: gtklib, importc: "gtk_widget_get_toplevel".}
  gtk_init(nil, nil)

  proc run*(hwnd: ptr GtkWidget) =
    # run start the underly GTK window for sciter
    var w = gtk_widget_get_toplevel(hwnd)
    # xxx - is that correct?
    gtk_window_present(cast[ptr GtkWindow](w))
    gtk_main()