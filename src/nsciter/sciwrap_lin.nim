
from macros import hint

type
  Lpvoid* = pointer

when not declared(Valueunittypestring):
  type
    Valueunittypestring* {.size: sizeof(cuint).} = enum
      Utstringstring = 0, Utstringerror = 1, Utstringsecure = 2,
      Utstringsymbol = 65535
else:
  static :
    hint("Declaration of " & "VALUE_UNIT_TYPE_STRING" &
        " already exists, not redeclaring")
when not declared(Somevents):
  type
    Somevents* {.size: sizeof(cuint).} = enum
      Somgetpassport = 0, Somgetasset = 1
else:
  static :
    hint("Declaration of " & "SOM_EVENTS" & " already exists, not redeclaring")
when not declared(Graphinresult):
  type
    Graphinresult* {.size: sizeof(cint).} = enum
      Graphinpanic = -1, Graphinok = 0, Graphinbadparam = 1, Graphinfailure = 2,
      Graphinnotsupported = 3
else:
  static :
    hint("Declaration of " & "GRAPHIN_RESULT" &
        " already exists, not redeclaring")
when not declared(Nodetype):
  type
    Nodetype* {.size: sizeof(cuint).} = enum
      Ntelement = 0, Nttext = 1, Ntcomment = 2
else:
  static :
    hint("Declaration of " & "NODE_TYPE" & " already exists, not redeclaring")
when not declared(Sciterlinejointype):
  type
    Sciterlinejointype* {.size: sizeof(cuint).} = enum
      Sciterjoinmiter = 0, Sciterjoinround = 1, Sciterjoinbevel = 2,
      Sciterjoinmiterorbevel = 3
else:
  static :
    hint("Declaration of " & "SCITER_LINE_JOIN_TYPE" &
        " already exists, not redeclaring")
when not declared(Focuscmdtype):
  type
    Focuscmdtype* {.size: sizeof(cuint).} = enum
      Focusrqnext = 0, Focusrqprev = 1, Focusrqhome = 2, Focusrqend = 3,
      Focusrqleft = 4, Focusrqright = 5, Focusrqup = 6, Focusrqdown = 7,
      Focusrqfirst = 8, Focusrqlast = 9, Focusrqendreached = 32768
else:
  static :
    hint("Declaration of " & "FOCUS_CMD_TYPE" &
        " already exists, not redeclaring")
when not declared(Scrollbarpart):
  type
    Scrollbarpart* {.size: sizeof(cuint).} = enum
      Scrollbarbase = 0, Scrollbarplus = 1, Scrollbarminus = 2,
      Scrollbarslider = 3, Scrollbarpageminus = 4, Scrollbarpageplus = 5,
      Scrollbarcorner = 6
else:
  static :
    hint("Declaration of " & "SCROLLBAR_PART" &
        " already exists, not redeclaring")
when not declared(Sciterappcmd):
  type
    Sciterappcmd* {.size: sizeof(cuint).} = enum
      Sciterappstop = 0, Sciterapploop = 1, Sciterappinit = 2,
      Sciterappshutdown = 3
else:
  static :
    hint("Declaration of " & "SCITER_APP_CMD" &
        " already exists, not redeclaring")
when not declared(Drawpathmode):
  type
    Drawpathmode* {.size: sizeof(cuint).} = enum
      Drawfillonly = 1, Drawstrokeonly = 2, Drawfillandstroke = 3
else:
  static :
    hint("Declaration of " & "DRAW_PATH_MODE" &
        " already exists, not redeclaring")
when not declared(Nodeinstarget):
  type
    Nodeinstarget* {.size: sizeof(cuint).} = enum
      Nitbefore = 0, Nitafter = 1, Nitappend = 2, Nitprepend = 3
else:
  static :
    hint("Declaration of " & "NODE_INS_TARGET" &
        " already exists, not redeclaring")
when not declared(Sciterwindowcmd):
  type
    Sciterwindowcmd* {.size: sizeof(cuint).} = enum
      Sciterwindowsetstate = 1, Sciterwindowgetstate = 2,
      Sciterwindowactivate = 3
else:
  static :
    hint("Declaration of " & "SCITER_WINDOW_CMD" &
        " already exists, not redeclaring")
when not declared(Valueunittypeobject):
  type
    Valueunittypeobject* {.size: sizeof(cuint).} = enum
      Utobjectarray = 0, Utobjectobject = 1, Utobjectclass = 2,
      Utobjectnative = 3, Utobjectfunction = 4, Utobjecterror = 5
else:
  static :
    hint("Declaration of " & "VALUE_UNIT_TYPE_OBJECT" &
        " already exists, not redeclaring")
when not declared(Scitercreatewindowflags):
  type
    Scitercreatewindowflags* {.size: sizeof(cuint).} = enum
      Swchild = 1, Swtitlebar = 2, Swresizeable = 4, Swtool = 8,
      Swcontrols = 16, Swglassy = 32, Swalpha = 64, Swmain = 128, Swpopup = 256,
      Swenabledebug = 512, Swownsvm = 1024
else:
  static :
    hint("Declaration of " & "SCITER_CREATE_WINDOW_FLAGS" &
        " already exists, not redeclaring")
when not declared(Gesturestate):
  type
    Gesturestate* {.size: sizeof(cuint).} = enum
      Gesturestatebegin = 1, Gesturestateinertia = 2, Gesturestateend = 4
else:
  static :
    hint("Declaration of " & "GESTURE_STATE" &
        " already exists, not redeclaring")
when not declared(Keyevents):
  type
    Keyevents* {.size: sizeof(cuint).} = enum
      Keydown = 0, Keyup = 1, Keychar = 2
else:
  static :
    hint("Declaration of " & "KEY_EVENTS" & " already exists, not redeclaring")
when not declared(Sciterrtoptions):
  type
    Sciterrtoptions* {.size: sizeof(cuint).} = enum
      Scitersmoothscroll = 1, Sciterconnectiontimeout = 2, Sciterhttpserror = 3,
      Sciterfontsmoothing = 4, Scitertransparentwindow = 6,
      Scitersetgpublacklist = 7, Scitersetscriptruntimefeatures = 8,
      Scitersetgfxlayer = 9, Scitersetdebugmode = 10, Scitersetuxtheming = 11,
      Sciteralphawindow = 12, Scitersetinitscript = 13,
      Scitersetmainwindow = 14, Scitersetmaxhttpdatalength = 15,
      Scitersetpxasdip = 16, Sciterenableuiautomation = 17
else:
  static :
    hint("Declaration of " & "SCITER_RT_OPTIONS" &
        " already exists, not redeclaring")
when not declared(Exchangecmd):
  type
    Exchangecmd* {.size: sizeof(cuint).} = enum
      Xdragenter = 0, Xdragleave = 1, Xdrag = 2, Xdrop = 3, Xpaste = 4,
      Xdragrequest = 5, Xdragcancel = 6, Xwillacceptdrop = 7
else:
  static :
    hint("Declaration of " & "EXCHANGE_CMD" & " already exists, not redeclaring")
when not declared(Eventgroups):
  type
    Eventgroups* {.size: sizeof(cuint).} = enum
      Subscriptionsrequest = -1, Handleinitialization = 0, Handlemouse = 1,
      Handlekey = 2, Handlefocus = 4, Handlescroll = 8, Handletimer = 16,
      Handlesize = 32, Handledraw = 64, Handledataarrived = 128,
      Handlebehaviorevent = 256, Handlemethodcall = 512,
      Handlescriptingmethodcall = 1024, Handleexchange = 4096,
      Handlegesture = 8192, Handleattributechange = 16384, Handlesom = 32768,
      Handleall = 65535
else:
  static :
    hint("Declaration of " & "EVENT_GROUPS" & " already exists, not redeclaring")
when not declared(Drawevents):
  type
    Drawevents* {.size: sizeof(cuint).} = enum
      Drawbackground = 0, Drawcontent = 1, Drawforeground = 2, Drawoutline = 3
else:
  static :
    hint("Declaration of " & "DRAW_EVENTS" & " already exists, not redeclaring")
when not declared(Ddmodes):
  type
    Ddmodes* {.size: sizeof(cuint).} = enum
      Ddmodenone = 0, Ddmodecopy = 1, Ddmodemove = 2, Ddmodecopyormove = 3,
      Ddmodelink = 4
else:
  static :
    hint("Declaration of " & "DD_MODES" & " already exists, not redeclaring")
when not declared(Initializationevents):
  type
    Initializationevents* {.size: sizeof(cuint).} = enum
      Behaviordetach = 0, Behaviorattach = 1
else:
  static :
    hint("Declaration of " & "INITIALIZATION_EVENTS" &
        " already exists, not redeclaring")
when not declared(Sciterimageencoding):
  type
    Sciterimageencoding* {.size: sizeof(cuint).} = enum
      Sciterimageencodingraw = 0, Sciterimageencodingpng = 1,
      Sciterimageencodingjpg = 2, Sciterimageencodingwebp = 3
else:
  static :
    hint("Declaration of " & "SCITER_IMAGE_ENCODING" &
        " already exists, not redeclaring")
when not declared(Requesttype):
  type
    Requesttype* {.size: sizeof(cuint).} = enum
      Getasync = 0, Postasync = 1, Getsync = 2, Postsync = 3
else:
  static :
    hint("Declaration of " & "REQUEST_TYPE" & " already exists, not redeclaring")
when not declared(Scrollsource):
  type
    Scrollsource* {.size: sizeof(cuint).} = enum
      Scrollsourceunknown = 0, Scrollsourcekeyboard = 1,
      Scrollsourcescrollbar = 2, Scrollsourceanimator = 3, Scrollsourcewheel = 4
else:
  static :
    hint("Declaration of " & "SCROLL_SOURCE" &
        " already exists, not redeclaring")
when not declared(Clickreason):
  type
    Clickreason* {.size: sizeof(cuint).} = enum
      Bymouseclick = 0, Bykeyclick = 1, Synthesized = 2, Bymouseonicon = 3
else:
  static :
    hint("Declaration of " & "CLICK_REASON" & " already exists, not redeclaring")
when not declared(Outputseverity):
  type
    Outputseverity* {.size: sizeof(cuint).} = enum
      Osinfo = 0, Oswarning = 1, Oserror = 2
else:
  static :
    hint("Declaration of " & "OUTPUT_SEVERITY" &
        " already exists, not redeclaring")
when not declared(Mousebuttons):
  type
    Mousebuttons* {.size: sizeof(cuint).} = enum
      Mainmousebutton = 1, Propmousebutton = 2, Middlemousebutton = 4
else:
  static :
    hint("Declaration of " & "MOUSE_BUTTONS" &
        " already exists, not redeclaring")
when not declared(Sciterscrollflags):
  type
    Sciterscrollflags* {.size: sizeof(cuint).} = enum
      Scrolltotop = 1, Scrollsmooth = 16
else:
  static :
    hint("Declaration of " & "SCITER_SCROLL_FLAGS" &
        " already exists, not redeclaring")
when not declared(Valueunitundefined):
  type
    Valueunitundefined* {.size: sizeof(cuint).} = enum
      Utnothing = 1
else:
  static :
    hint("Declaration of " & "VALUE_UNIT_UNDEFINED" &
        " already exists, not redeclaring")
when not declared(Editchangedreason):
  type
    Editchangedreason* {.size: sizeof(cuint).} = enum
      Byinschar = 0, Byinschars = 1, Bydelchar = 2, Bydelchars = 3,
      Byundoredo = 4
else:
  static :
    hint("Declaration of " & "EDIT_CHANGED_REASON" &
        " already exists, not redeclaring")
when not declared(Requestresult):
  type
    Requestresult* {.size: sizeof(cint).} = enum
      Requestpanic = -1, Requestok = 0, Requestbadparam = 1, Requestfailure = 2,
      Requestnotsupported = 3
else:
  static :
    hint("Declaration of " & "REQUEST_RESULT" &
        " already exists, not redeclaring")
when not declared(Sciterlinecaptype):
  type
    Sciterlinecaptype* {.size: sizeof(cuint).} = enum
      Sciterlinecapbutt = 0, Sciterlinecapsquare = 1, Sciterlinecapround = 2
else:
  static :
    hint("Declaration of " & "SCITER_LINE_CAP_TYPE" &
        " already exists, not redeclaring")
when not declared(Valueunittypedate):
  type
    Valueunittypedate* {.size: sizeof(cuint).} = enum
      Dthasdate = 1, Dthastime = 2, Dthasseconds = 4, Dtutc = 16
else:
  static :
    hint("Declaration of " & "VALUE_UNIT_TYPE_DATE" &
        " already exists, not redeclaring")
when not declared(Mouseevents):
  type
    Mouseevents* {.size: sizeof(cuint).} = enum
      Mouseenter = 0, Mouseleave = 1, Mousemove = 2, Mouseup = 3, Mousedown = 4,
      Mousedclick = 5, Mousewheel = 6, Mousetick = 7, Mouseidle = 8, Drop = 9,
      Dragenter = 10, Dragleave = 11, Dragrequest = 12, Mousetclick = 15,
      Mousedragrequest = 254, Mouseclick = 255, Dragging = 256,
      Mousehittest = 4094
else:
  static :
    hint("Declaration of " & "MOUSE_EVENTS" & " already exists, not redeclaring")
when not declared(Behaviormethodidentifiers):
  type
    Behaviormethodidentifiers* {.size: sizeof(cuint).} = enum
      Doclick = 0, Isempty = 252, Getvalue = 253, Setvalue = 254,
      Firstapplicationmethodid = 256
else:
  static :
    hint("Declaration of " & "BEHAVIOR_METHOD_IDENTIFIERS" &
        " already exists, not redeclaring")
when not declared(Draggingtype):
  type
    Draggingtype* {.size: sizeof(cuint).} = enum
      Nodragging = 0, Draggingmove = 1, Draggingcopy = 2
else:
  static :
    hint("Declaration of " & "DRAGGING_TYPE" &
        " already exists, not redeclaring")
when not declared(sompassportflags):
  type
    sompassportflags* {.size: sizeof(cuint).} = enum
      Somsealedobject = 0, Somextendableobject = 1
else:
  static :
    hint("Declaration of " & "som_passport_flags" &
        " already exists, not redeclaring")
when not declared(Scriptruntimefeatures):
  type
    Scriptruntimefeatures* {.size: sizeof(cuint).} = enum
      Allowfileio = 1, Allowsocketio = 2, Alloweval = 4, Allowsysinfo = 8
else:
  static :
    hint("Declaration of " & "SCRIPT_RUNTIME_FEATURES" &
        " already exists, not redeclaring")
when not declared(Elementareas):
  type
    Elementareas* {.size: sizeof(cuint).} = enum
      Contentbox = 0, Rootrelative = 1, Selfrelative = 2, Containerrelative = 3,
      Viewrelative = 4, Paddingbox = 16, Borderbox = 32, Marginbox = 48,
      Backimagearea = 64, Foreimagearea = 80, Scrollablearea = 96
else:
  static :
    hint("Declaration of " & "ELEMENT_AREAS" &
        " already exists, not redeclaring")
when not declared(Keyboardstates):
  type
    Keyboardstates* {.size: sizeof(cuint).} = enum
      Controlkeypressed = 1, Shiftkeypressed = 2, Altkeypressed = 4,
      Rightshiftkeypressed = 8, Cmdkeypressed = 16
else:
  static :
    hint("Declaration of " & "KEYBOARD_STATES" &
        " already exists, not redeclaring")
when not declared(Sciterxmsgcode):
  type
    Sciterxmsgcode* {.size: sizeof(cuint).} = enum
      Sxmcreate = 0, Sxmdestroy = 1, Sxmsize = 2, Sxmpaint = 3,
      Sxmresolution = 4, Sxmheartbit = 5, Sxmmouse = 6, Sxmkey = 7, Sxmfocus = 8
else:
  static :
    hint("Declaration of " & "SCITER_X_MSG_CODE" &
        " already exists, not redeclaring")
when not declared(Valueresult):
  type
    Valueresult* {.size: sizeof(cint).} = enum
      Hvoktrue = -1, Hvok = 0, Hvbadparameter = 1, Hvincompatibletype = 2
else:
  static :
    hint("Declaration of " & "VALUE_RESULT" & " already exists, not redeclaring")
when not declared(Setelementhtml):
  type
    Setelementhtml* {.size: sizeof(cuint).} = enum
      Sihreplacecontent = 0, Sihinsertatstart = 1, Sihappendafterlast = 2,
      Sohreplace = 3, Sohinsertbefore = 4, Sohinsertafter = 5
else:
  static :
    hint("Declaration of " & "SET_ELEMENT_HTML" &
        " already exists, not redeclaring")
when not declared(Outputsubsytems):
  type
    Outputsubsytems* {.size: sizeof(cuint).} = enum
      Otdom = 0, Otcsss = 1, Otcss = 2, Ottis = 3
else:
  static :
    hint("Declaration of " & "OUTPUT_SUBSYTEMS" &
        " already exists, not redeclaring")
when not declared(Focusevents):
  type
    Focusevents* {.size: sizeof(cuint).} = enum
      Focusout = 0, Focusin = 1, Focusgot = 2, Focuslost = 3, Focusrequest = 4,
      Focusadvancerequest = 5
else:
  static :
    hint("Declaration of " & "FOCUS_EVENTS" & " already exists, not redeclaring")
when not declared(Sciterpainttargettype):
  type
    Sciterpainttargettype* {.size: sizeof(cuint).} = enum
      Sptdefault = 0, Sptreceiver = 1, Sptsurface = 2
else:
  static :
    hint("Declaration of " & "SCITER_PAINT_TARGET_TYPE" &
        " already exists, not redeclaring")
when not declared(Valueunittype):
  type
    Valueunittype* {.size: sizeof(cuint).} = enum
      Utem = 1, Utex = 2, Utpr = 3, Utsp = 4, reserved1 = 5, reserved2 = 6,
      Utpx = 7, Utin = 8, Utcm = 9, Utmm = 10, Utpt = 11, Utpc = 12, Utdip = 13,
      reserved3 = 14, reserved4 = 15, Utprwidth = 16, Utprheight = 17,
      Utprviewwidth = 18, Utprviewheight = 19, Utprviewmin = 20,
      Utprviewmax = 21, Utrem = 22, Utppx = 23, Utch = 24
else:
  static :
    hint("Declaration of " & "VALUE_UNIT_TYPE" &
        " already exists, not redeclaring")
when not declared(Valuestringcvttype):
  type
    Valuestringcvttype* {.size: sizeof(cuint).} = enum
      Cvtsimple = 0, Cvtjsonliteral = 1, Cvtjsonmap = 2, Cvtxjsonliteral = 3
else:
  static :
    hint("Declaration of " & "VALUE_STRING_CVT_TYPE" &
        " already exists, not redeclaring")
when not declared(Cursortype):
  type
    Cursortype* {.size: sizeof(cuint).} = enum
      Cursorarrow = 0, Cursoribeam = 1, Cursorwait = 2, Cursorcross = 3,
      Cursoruparrow = 4, Cursorsizenwse = 5, Cursorsizenesw = 6,
      Cursorsizewe = 7, Cursorsizens = 8, Cursorsizeall = 9, Cursorno = 10,
      Cursorappstarting = 11, Cursorhelp = 12, Cursorhand = 13,
      Cursordragmove = 14, Cursordragcopy = 15
else:
  static :
    hint("Declaration of " & "CURSOR_TYPE" & " already exists, not redeclaring")
when not declared(Sciterwindowstate):
  type
    Sciterwindowstate* {.size: sizeof(cuint).} = enum
      Sciterwindowstateclosed = 0, Sciterwindowstateshown = 1,
      Sciterwindowstateminimized = 2, Sciterwindowstatemaximized = 3,
      Sciterwindowstatehidden = 4, Sciterwindowstatefullscreen = 5
else:
  static :
    hint("Declaration of " & "SCITER_WINDOW_STATE" &
        " already exists, not redeclaring")
when not declared(Valuetype):
  type
    Valuetype* {.size: sizeof(cuint).} = enum
      Tundefined = 0, Tnull = 1, Tbool = 2, Tint = 3, Tfloat = 4, Tstring = 5,
      Tdate = 6, Tbigint = 7, Tlength = 8, Tarray = 9, Tmap = 10,
      Tfunction = 11, Tbytes = 12, Tobject = 13, Tresource = 15, Tduration = 17,
      Tangle = 18, Tcolor = 19, Tasset = 21
else:
  static :
    hint("Declaration of " & "VALUE_TYPE" & " already exists, not redeclaring")
when not declared(Gesturetypeflags):
  type
    Gesturetypeflags* {.size: sizeof(cuint).} = enum
      Gestureflagzoom = 1, Gestureflagrotate = 2, Gestureflagpanvertical = 4,
      Gestureflagpanhorizontal = 8, Gestureflagtap1 = 16, Gestureflagtap2 = 32,
      Gestureflagpanwithgutter = 16384, Gestureflagpanwithinertia = 32768,
      Gestureflagsall = 65535
else:
  static :
    hint("Declaration of " & "GESTURE_TYPE_FLAGS" &
        " already exists, not redeclaring")
when not declared(Scloaddatareturncodes):
  type
    Scloaddatareturncodes* {.size: sizeof(cuint).} = enum
      Loadok = 0, Loaddiscard = 1, Loaddelayed = 2, Loadmyself = 3
else:
  static :
    hint("Declaration of " & "SC_LOAD_DATA_RETURN_CODES" &
        " already exists, not redeclaring")
when not declared(Behaviorevents):
  type
    Behaviorevents* {.size: sizeof(cuint).} = enum
      Buttonclick = 0, Buttonpress = 1, Buttonstatechanged = 2,
      Editvaluechanging = 3, Editvaluechanged = 4, Selectselectionchanged = 5,
      Selectvaluechanged = 6, Popuprequest = 7, Popupready = 8,
      Popupdismissed = 9, Menuitemactive = 10, Menuitemclick = 11,
      Contextmenurequest = 16, Visualstatuschanged = 17,
      Disabledstatuschanged = 18, Popupdismissing = 19, Contentchanged = 21,
      Click = 22, Change = 23, Hyperlinkclick = 128, Elementcollapsed = 144,
      Elementexpanded = 145, Activatechild = 146, Uistatechanged = 149,
      Formsubmit = 150, Formreset = 151, Documentcomplete = 152,
      Historypush = 153, Historydrop = 154, Historyprior = 155,
      Historynext = 156, Historystatechanged = 157, Closepopup = 158,
      Requesttooltip = 159, Animation = 160, Transition = 161, Swipe = 176,
      Documentcreated = 192, Documentcloserequest = 193, Documentclose = 194,
      Documentready = 195, Documentparsed = 196, Documentclosing = 198,
      Containercloserequest = 199, Containerclosing = 200,
      Videoinitialized = 209, Videostarted = 210, Videostopped = 211,
      Videobindrq = 212, Videoframerequest = 216, Paginationstarts = 224,
      Paginationpage = 225, Paginationends = 226, Custom = 240,
      Firstapplicationeventcode = 256
else:
  static :
    hint("Declaration of " & "BEHAVIOR_EVENTS" &
        " already exists, not redeclaring")
const
  Selectstatechanged* = Selectvaluechanged
when not declared(Contentchangebits):
  type
    Contentchangebits* {.size: sizeof(cuint).} = enum
      Contentadded = 1, Contentremoved = 2
else:
  static :
    hint("Declaration of " & "CONTENT_CHANGE_BITS" &
        " already exists, not redeclaring")
when not declared(Gfxlayer):
  type
    Gfxlayer* {.size: sizeof(cuint).} = enum
      Gfxlayergdi = 1, Gfxlayerwarp = 2, Gfxlayerd2d = 3, Gfxlayerskia = 4,
      Gfxlayerskiaopengl = 5, Gfxlayerauto = 65535
else:
  static :
    hint("Declaration of " & "GFX_LAYER" & " already exists, not redeclaring")
const
  Gfxlayercg* = Gfxlayergdi
const
  Gfxlayercairo* = Gfxlayergdi
const
  Gfxlayerd2dwarp* = Gfxlayerwarp
when not declared(Elementstatebits):
  type
    Elementstatebits* {.size: sizeof(cuint).} = enum
      Statelink = 1, Statehover = 2, Stateactive = 4, Statefocus = 8,
      Statevisited = 16, Statecurrent = 32, Statechecked = 64,
      Statedisabled = 128, Statereadonly = 256, Stateexpanded = 512,
      Statecollapsed = 1024, Stateincomplete = 2048, Stateanimating = 4096,
      Statefocusable = 8192, Stateanchor = 16384, Statesynthetic = 32768,
      Stateownspopup = 65536, Statetabfocus = 131072, Stateempty = 262144,
      Statebusy = 524288, Statedragover = 1048576, Statedroptarget = 2097152,
      Statemoving = 4194304, Statecopying = 8388608, Statedragsource = 16777216,
      Statedropmarker = 33554432, Statepressed = 67108864,
      Statepopup = 134217728, Stateisltr = 268435456, Stateisrtl = 536870912
else:
  static :
    hint("Declaration of " & "ELEMENT_STATE_BITS" &
        " already exists, not redeclaring")
when not declared(Scrollevents):
  type
    Scrollevents* {.size: sizeof(cuint).} = enum
      Scrollhome = 0, Scrollend = 1, Scrollstepplus = 2, Scrollstepminus = 3,
      Scrollpageplus = 4, Scrollpageminus = 5, Scrollpos = 6,
      Scrollsliderreleased = 7, Scrollcornerpressed = 8,
      Scrollcornerreleased = 9, Scrollsliderpressed = 10,
      Scrollanimationstart = 11, Scrollanimationend = 12
else:
  static :
    hint("Declaration of " & "SCROLL_EVENTS" &
        " already exists, not redeclaring")
when not declared(Ctltype):
  type
    Ctltype* {.size: sizeof(cuint).} = enum
      Ctlno = 0, Ctlunknown = 1, Ctledit = 2, Ctlnumeric = 3, Ctlclickable = 4,
      Ctlbutton = 5, Ctlcheckbox = 6, Ctlradio = 7, Ctlselectsingle = 8,
      Ctlselectmultiple = 9, Ctlddselect = 10, Ctltextarea = 11,
      Ctlhtmlarea = 12, Ctlpassword = 13, Ctlprogress = 14, Ctlslider = 15,
      Ctldecimal = 16, Ctlcurrency = 17, Ctlscrollbar = 18, Ctllist = 19,
      Ctlrichtext = 20, Ctlcalendar = 21, Ctldate = 22, Ctltime = 23,
      Ctlfile = 24, Ctlpath = 25, Ctllastinput = 26, Ctlform = 27,
      Ctlmenubar = 28, Ctlmenu = 29, Ctlmenubutton = 30, Ctlframe = 31,
      Ctlframeset = 32, Ctltooltip = 33, Ctlhidden = 34, Ctlurl = 35,
      Ctltoolbar = 36, Ctlwindow = 37, Ctllabel = 38, Ctlimage = 39,
      Ctlplaintext = 40
else:
  static :
    hint("Declaration of " & "CTL_TYPE" & " already exists, not redeclaring")
const
  Ctlhyperlink* = Ctllastinput
when not declared(Gesturecmd):
  type
    Gesturecmd* {.size: sizeof(cuint).} = enum
      Gesturestart = 0, Gesturemove = 1, Gestureend = 2, Gesturepan = 3,
      Gesturezoom = 4, Gesturerotate = 5, Gesturetap1 = 6, Gesturetap2 = 7,
      Gesturedoubletap = 8
else:
  static :
    hint("Declaration of " & "GESTURE_CMD" & " already exists, not redeclaring")
when not declared(Phasemask):
  type
    Phasemask* {.size: sizeof(cuint).} = enum
      Bubbling = 0, Sinking = 32768, Handled = 65536
else:
  static :
    hint("Declaration of " & "PHASE_MASK" & " already exists, not redeclaring")
when not declared(Requeststate):
  type
    Requeststate* {.size: sizeof(cuint).} = enum
      Rsforcedword = -1, Rspending = 0, Rssuccess = 1, Rsfailure = 2
else:
  static :
    hint("Declaration of " & "REQUEST_STATE" &
        " already exists, not redeclaring")
when not declared(Requestrqtype):
  type
    Requestrqtype* {.size: sizeof(cuint).} = enum
      Rrtforcedword = -1, Rrtget = 1, Rrtpost = 2, Rrtput = 3, Rrtdelete = 4
else:
  static :
    hint("Declaration of " & "REQUEST_RQ_TYPE" &
        " already exists, not redeclaring")
when not declared(Sciterresourcetype):
  type
    Sciterresourcetype* {.size: sizeof(cuint).} = enum
      Rtdataforcedword = -1, Rtdatahtml = 0, Rtdataimage = 1, Rtdatastyle = 2,
      Rtdatacursor = 3, Rtdatascript = 4, Rtdataraw = 5, Rtdatafont = 6,
      Rtdatasound = 7
else:
  static :
    hint("Declaration of " & "SciterResourceType" &
        " already exists, not redeclaring")
when not declared(structgdata):
  type
    structgdata* = distinct object
else:
  static :
    hint("Declaration of " & "struct__GData" &
        " already exists, not redeclaring")
when not declared(structscitergraphics):
  type
    structscitergraphics* = distinct object
else:
  static :
    hint("Declaration of " & "struct_SCITER_GRAPHICS" &
        " already exists, not redeclaring")
when not declared(compilerstdcall):
  type
    compilerstdcall* = distinct object
else:
  static :
    hint("Declaration of " & "__stdcall" & " already exists, not redeclaring")
when not declared(extern):
  type
    extern* = distinct object
else:
  static :
    hint("Declaration of " & "extern" & " already exists, not redeclaring")
when not declared(long):
  type
    long* = distinct object
else:
  static :
    hint("Declaration of " & "long" & " already exists, not redeclaring")
when not declared(structgtkwidgetprivate):
  type
    structgtkwidgetprivate* = distinct object
else:
  static :
    hint("Declaration of " & "struct__GtkWidgetPrivate" &
        " already exists, not redeclaring")
when not declared(double):
  type
    double* = distinct object
else:
  static :
    hint("Declaration of " & "double" & " already exists, not redeclaring")
type
  Hgfx_436207929* = pointer  ## Generated based on /home/dian/Projects/nsciter/sciter-js-sdk/include/sciter-x-graphics.h:40:29
  structsciterxmsgpaint_target_t_receiver_t* = object
    param*: pointer
    callback*: ptr Elementbitmapreceiver_436208117

  structsciterxmsgpaint_target_t* {.union.} = object
    psurface*: Lpvoid_436208209
    receiver*: structsciterxmsgpaint_target_t_receiver_t

  structsciterxmsgpaint_436207931* = object
    header*: Sciterxmsg_436208373 ## Generated based on /home/dian/Projects/nsciter/sciter-js-sdk/include/sciter-x-msg.h:138:16
    element*: Helement_436208277
    isfore*: Sbool_436208261
    targettype*: Uint_436208391
    target*: structsciterxmsgpaint_target_t

  Size_436207939* = structtagsize_436208143 ## Generated based on /home/dian/Projects/nsciter/sciter-js-sdk/include/sciter-x-primitives.h:199:5
  Lpscitergraphicsapi_436207941* = ptr structscitergraphicsapi_436208025 ## Generated based on /home/dian/Projects/nsciter/sciter-js-sdk/include/sciter-x-graphics.h:427:35
  Lpcbyte_436207943* = ptr Byte_436207974 ## Generated based on /home/dian/Projects/nsciter/sciter-js-sdk/include/sciter-x-primitives.h:288:23
  Scnpostednotification_436207945* = structscnpostednotification_436208103 ## Generated based on /home/dian/Projects/nsciter/sciter-js-sdk/include/sciter-x-def.h:246:3
  structgobject_436207949* = object
    gtypeinstance*: Gtypeinstance_436208257 ## Generated based on /usr/include/glib-2.0/gobject/gobject.h:265:9
    refcount*: guint_436207972
    qdata*: ptr Gdata_436208345

  structvalueparams_436207953* = object
    methodid*: Uint_436208391 ## Generated based on /home/dian/Projects/nsciter/sciter-js-sdk/include/sciter-x-behavior.h:618:18
    val*: Scitervalue_436208037

  structbehavioreventparams_436207955* = object
    cmd*: Uint_436208391     ## Generated based on /home/dian/Projects/nsciter/sciter-js-sdk/include/sciter-x-behavior.h:548:18
    hetarget*: Helement_436208277
    he*: Helement_436208277
    reason*: Uintptr_436208243
    data*: Scitervalue_436208037
    name*: Lpcwstr_436208381

  Psize_436207961* = ptr structtagsize_436208143 ## Generated based on /home/dian/Projects/nsciter/sciter-js-sdk/include/sciter-x-primitives.h:199:12
  Scnloaddata_436207963* = structscnloaddata_436208169 ## Generated based on /home/dian/Projects/nsciter/sciter-js-sdk/include/sciter-x-def.h:186:3
  Lpscnattachbehavior_436207967* = ptr Scnattachbehavior_436208251 ## Generated based on /home/dian/Projects/nsciter/sciter-js-sdk/include/sciter-x-def.h:225:30
  guint_436207971* = cuint   ## Generated based on /usr/include/glib-2.0/glib/gtypes.h:55:25
  Byte_436207973* = cuchar   ## Generated based on /home/dian/Projects/nsciter/sciter-js-sdk/include/sciter-x-primitives.h:165:25
  Keyparams_436207977* = structkeyparams_436208375 ## Generated based on /home/dian/Projects/nsciter/sciter-js-sdk/include/sciter-x-behavior.h:222:5
  gsize_436207979* = culong  ## Generated based on /usr/lib/glib-2.0/include/glibconfig.h:80:23
  Hrequest_436207987* = pointer ## Generated based on /home/dian/Projects/nsciter/sciter-js-sdk/include/sciter-x-request.h:29:18
  Sciterelementcallback_436207989* = proc (a0: Helement_436208277; a1: Lpvoid_436208209): Sbool_436208261 {.
      cdecl.}                ## Generated based on /home/dian/Projects/nsciter/sciter-js-sdk/include/sciter-x-dom.h:403:27
  structscnenginedestroyed_436207991* = object
    code*: Uint_436208391    ## Generated based on /home/dian/Projects/nsciter/sciter-js-sdk/include/sciter-x-def.h:229:16
    hwnd*: ptr Gtkwidget_436208409

  Timerparams_436207993* = structtimerparams_436208061 ## Generated based on /home/dian/Projects/nsciter/sciter-js-sdk/include/sciter-x-behavior.h:566:5
  Himg_436207995* = pointer  ## Generated based on /home/dian/Projects/nsciter/sciter-js-sdk/include/sciter-x-graphics.h:41:29
  Sciterxmsgfocus_436208001* = structsciterxmsgfocus_436208113 ## Generated based on /home/dian/Projects/nsciter/sciter-js-sdk/include/sciter-x-msg.h:106:3
  Sciterxmsgpaint_436208003* = structsciterxmsgpaint_436207932 ## Generated based on /home/dian/Projects/nsciter/sciter-js-sdk/include/sciter-x-msg.h:154:3
  somassett_436208005* = structsomassett_436208403 ## Generated based on /home/dian/Projects/nsciter/sciter-js-sdk/include/sciter-om.h:15:3
  Sccolorstop_436208009* = structsccolorstop_436208215 ## Generated based on /home/dian/Projects/nsciter/sciter-js-sdk/include/sciter-x-graphics.h:58:3
  Exchangeparams_436208018* = structexchangeparams_436208191 ## Generated based on /home/dian/Projects/nsciter/sciter-js-sdk/include/sciter-x-behavior.h:387:5
  structsciterxmsg_436208020* = object
    msg*: Uint_436208391     ## Generated based on /home/dian/Projects/nsciter/sciter-js-sdk/include/sciter-x-msg.h:36:16
  
  Nativefunctorinvoke_436208022* = proc (a0: pointer; a1: Uint_436208391;
      a2: ptr Value_436208127; a3: ptr Value_436208127): void {.cdecl.} ## Generated based on /home/dian/Projects/nsciter/sciter-js-sdk/include/value.h:113:14
  structscitergraphicsapi_436208024* = object
    imagecreate*: proc (a0: ptr Himg_436207996; a1: Uint_436208391; a2: Uint_436208391;
                        a3: Sbool_436208261): Graphinresult_436207936 {.cdecl.} ## Generated based on /home/dian/Projects/nsciter/sciter-js-sdk/include/sciter-x-graphics.h:133:8
    imagecreatefrompixmap*: proc (a0: ptr Himg_436207996; a1: Uint_436208391;
                                  a2: Uint_436208391; a3: Sbool_436208261;
                                  a4: ptr Byte_436207974): Graphinresult_436207936 {.
        cdecl.}
    imageaddref*: proc (a0: Himg_436207996): Graphinresult_436207936 {.cdecl.}
    imagerelease*: proc (a0: Himg_436207996): Graphinresult_436207936 {.cdecl.}
    imagegetinfo*: proc (a0: Himg_436207996; a1: ptr Uint_436208391;
                         a2: ptr Uint_436208391; a3: ptr Sbool_436208261): Graphinresult_436207936 {.
        cdecl.}
    imageclear*: proc (a0: Himg_436207996; a1: Sccolor_436208059): Graphinresult_436207936 {.
        cdecl.}
    imageload*: proc (a0: ptr Byte_436207974; a1: Uint_436208391; a2: ptr Himg_436207996): Graphinresult_436207936 {.
        cdecl.}
    imagesave*: proc (a0: Himg_436207996; a1: ptr imagewritefunction_436208233;
                      a2: pointer; a3: Uint_436208391; a4: Uint_436208391): Graphinresult_436207936 {.
        cdecl.}
    Rgba*: proc (a0: Uint_436208391; a1: Uint_436208391; a2: Uint_436208391;
                 a3: Uint_436208391): Sccolor_436208059 {.cdecl.}
    gcreate*: proc (a0: Himg_436207996; a1: ptr Hgfx_436207930): Graphinresult_436207936 {.
        cdecl.}
    gaddref*: proc (a0: Hgfx_436207930): Graphinresult_436207936 {.cdecl.}
    grelease*: proc (a0: Hgfx_436207930): Graphinresult_436207936 {.cdecl.}
    gline*: proc (a0: Hgfx_436207930; a1: Scpos_436208385; a2: Scpos_436208385;
                  a3: Scpos_436208385; a4: Scpos_436208385): Graphinresult_436207936 {.
        cdecl.}
    grectangle*: proc (a0: Hgfx_436207930; a1: Scpos_436208385; a2: Scpos_436208385;
                       a3: Scpos_436208385; a4: Scpos_436208385): Graphinresult_436207936 {.
        cdecl.}
    groundedrectangle*: proc (a0: Hgfx_436207930; a1: Scpos_436208385;
                              a2: Scpos_436208385; a3: Scpos_436208385;
                              a4: Scpos_436208385; a5: ptr Scdim_436208101): Graphinresult_436207936 {.
        cdecl.}
    gellipse*: proc (a0: Hgfx_436207930; a1: Scpos_436208385; a2: Scpos_436208385;
                     a3: Scdim_436208101; a4: Scdim_436208101): Graphinresult_436207936 {.
        cdecl.}
    garc*: proc (a0: Hgfx_436207930; a1: Scpos_436208385; a2: Scpos_436208385;
                 a3: Scpos_436208385; a4: Scpos_436208385; a5: Scangle_436208049;
                 a6: Scangle_436208049): Graphinresult_436207936 {.cdecl.}
    gstar*: proc (a0: Hgfx_436207930; a1: Scpos_436208385; a2: Scpos_436208385;
                  a3: Scdim_436208101; a4: Scdim_436208101; a5: Scangle_436208049;
                  a6: Uint_436208391): Graphinresult_436207936 {.cdecl.}
    gpolygon*: proc (a0: Hgfx_436207930; a1: ptr Scpos_436208385; a2: Uint_436208391): Graphinresult_436207936 {.
        cdecl.}
    gpolyline*: proc (a0: Hgfx_436207930; a1: ptr Scpos_436208385; a2: Uint_436208391): Graphinresult_436207936 {.
        cdecl.}
    pathcreate*: proc (a0: ptr Hpath_436208179): Graphinresult_436207936 {.cdecl.}
    pathaddref*: proc (a0: Hpath_436208179): Graphinresult_436207936 {.cdecl.}
    pathrelease*: proc (a0: Hpath_436208179): Graphinresult_436207936 {.cdecl.}
    pathmoveto*: proc (a0: Hpath_436208179; a1: Scpos_436208385; a2: Scpos_436208385;
                       a3: Sbool_436208261): Graphinresult_436207936 {.cdecl.}
    pathlineto*: proc (a0: Hpath_436208179; a1: Scpos_436208385; a2: Scpos_436208385;
                       a3: Sbool_436208261): Graphinresult_436207936 {.cdecl.}
    patharcto*: proc (a0: Hpath_436208179; a1: Scpos_436208385; a2: Scpos_436208385;
                      a3: Scangle_436208049; a4: Scdim_436208101; a5: Scdim_436208101;
                      a6: Sbool_436208261; a7: Sbool_436208261; a8: Sbool_436208261): Graphinresult_436207936 {.
        cdecl.}
    pathquadraticcurveto*: proc (a0: Hpath_436208179; a1: Scpos_436208385;
                                 a2: Scpos_436208385; a3: Scpos_436208385;
                                 a4: Scpos_436208385; a5: Sbool_436208261): Graphinresult_436207936 {.
        cdecl.}
    pathbeziercurveto*: proc (a0: Hpath_436208179; a1: Scpos_436208385;
                              a2: Scpos_436208385; a3: Scpos_436208385;
                              a4: Scpos_436208385; a5: Scpos_436208385;
                              a6: Scpos_436208385; a7: Sbool_436208261): Graphinresult_436207936 {.
        cdecl.}
    pathclosepath*: proc (a0: Hpath_436208179): Graphinresult_436207936 {.cdecl.}
    gdrawpath*: proc (a0: Hgfx_436207930; a1: Hpath_436208179; a2: Drawpathmode_436207966): Graphinresult_436207936 {.
        cdecl.}
    grotate*: proc (a0: Hgfx_436207930; a1: Scangle_436208049; a2: ptr Scpos_436208385;
                    a3: ptr Scpos_436208385): Graphinresult_436207936 {.cdecl.}
    gtranslate*: proc (a0: Hgfx_436207930; a1: Scpos_436208385; a2: Scpos_436208385): Graphinresult_436207936 {.
        cdecl.}
    gscale*: proc (a0: Hgfx_436207930; a1: Scdim_436208101; a2: Scdim_436208101): Graphinresult_436207936 {.
        cdecl.}
    gskew*: proc (a0: Hgfx_436207930; a1: Scdim_436208101; a2: Scdim_436208101): Graphinresult_436207936 {.
        cdecl.}
    gtransform*: proc (a0: Hgfx_436207930; a1: Scpos_436208385; a2: Scpos_436208385;
                       a3: Scpos_436208385; a4: Scpos_436208385; a5: Scpos_436208385;
                       a6: Scpos_436208385): Graphinresult_436207936 {.cdecl.}
    gstatesave*: proc (a0: Hgfx_436207930): Graphinresult_436207936 {.cdecl.}
    gstaterestore*: proc (a0: Hgfx_436207930): Graphinresult_436207936 {.cdecl.}
    glinewidth*: proc (a0: Hgfx_436207930; a1: Scdim_436208101): Graphinresult_436207936 {.
        cdecl.}
    glinejoin*: proc (a0: Hgfx_436207930; a1: Sciterlinejointype_436207948): Graphinresult_436207936 {.
        cdecl.}
    glinecap*: proc (a0: Hgfx_436207930; a1: Sciterlinecaptype_436208153): Graphinresult_436207936 {.
        cdecl.}
    glinecolor*: proc (a0: Hgfx_436207930; a1: Sccolor_436208059): Graphinresult_436207936 {.
        cdecl.}
    gfillcolor*: proc (a0: Hgfx_436207930; a1: Sccolor_436208059): Graphinresult_436207936 {.
        cdecl.}
    glinegradientlinear*: proc (a0: Hgfx_436207930; a1: Scpos_436208385;
                                a2: Scpos_436208385; a3: Scpos_436208385;
                                a4: Scpos_436208385; a5: ptr Sccolorstop_436208010;
                                a6: Uint_436208391): Graphinresult_436207936 {.
        cdecl.}
    gfillgradientlinear*: proc (a0: Hgfx_436207930; a1: Scpos_436208385;
                                a2: Scpos_436208385; a3: Scpos_436208385;
                                a4: Scpos_436208385; a5: ptr Sccolorstop_436208010;
                                a6: Uint_436208391): Graphinresult_436207936 {.
        cdecl.}
    glinegradientradial*: proc (a0: Hgfx_436207930; a1: Scpos_436208385;
                                a2: Scpos_436208385; a3: Scdim_436208101;
                                a4: Scdim_436208101; a5: ptr Sccolorstop_436208010;
                                a6: Uint_436208391): Graphinresult_436207936 {.
        cdecl.}
    gfillgradientradial*: proc (a0: Hgfx_436207930; a1: Scpos_436208385;
                                a2: Scpos_436208385; a3: Scdim_436208101;
                                a4: Scdim_436208101; a5: ptr Sccolorstop_436208010;
                                a6: Uint_436208391): Graphinresult_436207936 {.
        cdecl.}
    gfillmode*: proc (a0: Hgfx_436207930; a1: Sbool_436208261): Graphinresult_436207936 {.
        cdecl.}
    textcreateforelement*: proc (a0: ptr Htext_436208141; a1: Lpcwstr_436208381;
                                 a2: Uint_436208391; a3: Helement_436208277;
                                 a4: Lpcwstr_436208381): Graphinresult_436207936 {.
        cdecl.}
    textcreateforelementandstyle*: proc (a0: ptr Htext_436208141; a1: Lpcwstr_436208381;
        a2: Uint_436208391; a3: Helement_436208277; a4: Lpcwstr_436208381;
        a5: Uint_436208391): Graphinresult_436207936 {.cdecl.}
    textaddref*: proc (a0: Htext_436208141): Graphinresult_436207936 {.cdecl.}
    textrelease*: proc (a0: Htext_436208141): Graphinresult_436207936 {.cdecl.}
    textgetmetrics*: proc (a0: Htext_436208141; a1: ptr Scdim_436208101;
                           a2: ptr Scdim_436208101; a3: ptr Scdim_436208101;
                           a4: ptr Scdim_436208101; a5: ptr Scdim_436208101;
                           a6: ptr Uint_436208391): Graphinresult_436207936 {.
        cdecl.}
    textsetbox*: proc (a0: Htext_436208141; a1: Scdim_436208101; a2: Scdim_436208101): Graphinresult_436207936 {.
        cdecl.}
    gdrawtext*: proc (a0: Hgfx_436207930; a1: Htext_436208141; a2: Scpos_436208385;
                      a3: Scpos_436208385; a4: Uint_436208391): Graphinresult_436207936 {.
        cdecl.}
    gdrawimage*: proc (a0: Hgfx_436207930; a1: Himg_436207996; a2: Scpos_436208385;
                       a3: Scpos_436208385; a4: ptr Scdim_436208101;
                       a5: ptr Scdim_436208101; a6: ptr Uint_436208391;
                       a7: ptr Uint_436208391; a8: ptr Uint_436208391;
                       a9: ptr Uint_436208391; a10: ptr cfloat): Graphinresult_436207936 {.
        cdecl.}
    gworldtoscreen*: proc (a0: Hgfx_436207930; a1: ptr Scpos_436208385;
                           a2: ptr Scpos_436208385): Graphinresult_436207936 {.
        cdecl.}
    gscreentoworld*: proc (a0: Hgfx_436207930; a1: ptr Scpos_436208385;
                           a2: ptr Scpos_436208385): Graphinresult_436207936 {.
        cdecl.}
    gpushclipbox*: proc (a0: Hgfx_436207930; a1: Scpos_436208385; a2: Scpos_436208385;
                         a3: Scpos_436208385; a4: Scpos_436208385; a5: cfloat): Graphinresult_436207936 {.
        cdecl.}
    gpushclippath*: proc (a0: Hgfx_436207930; a1: Hpath_436208179; a2: cfloat): Graphinresult_436207936 {.
        cdecl.}
    gpopclip*: proc (a0: Hgfx_436207930): Graphinresult_436207936 {.cdecl.}
    imagepaint*: proc (a0: Himg_436207996; a1: ptr imagepaintfunction_436208285;
                       a2: pointer): Graphinresult_436207936 {.cdecl.}
    vwrapgfx*: proc (a0: Hgfx_436207930; a1: ptr Value_436208127): Graphinresult_436207936 {.
        cdecl.}
    vwrapimage*: proc (a0: Himg_436207996; a1: ptr Value_436208127): Graphinresult_436207936 {.
        cdecl.}
    vwrappath*: proc (a0: Hpath_436208179; a1: ptr Value_436208127): Graphinresult_436207936 {.
        cdecl.}
    vwraptext*: proc (a0: Htext_436208141; a1: ptr Value_436208127): Graphinresult_436207936 {.
        cdecl.}
    vunwrapgfx*: proc (a0: ptr Value_436208127; a1: ptr Hgfx_436207930): Graphinresult_436207936 {.
        cdecl.}
    vunwrapimage*: proc (a0: ptr Value_436208127; a1: ptr Himg_436207996): Graphinresult_436207936 {.
        cdecl.}
    vunwrappath*: proc (a0: ptr Value_436208127; a1: ptr Hpath_436208179): Graphinresult_436207936 {.
        cdecl.}
    vunwraptext*: proc (a0: ptr Value_436208127; a1: ptr Htext_436208141): Graphinresult_436207936 {.
        cdecl.}
    gflush*: proc (a0: Hgfx_436207930): Graphinresult_436207936 {.cdecl.}
    imagecreatefromelement*: proc (a0: ptr Himg_436207996; a1: Helement_436208277): Graphinresult_436207936 {.
        cdecl.}

  Lpcwstrreceiver_436208028* = proc (a0: Lpcwstr_436208381; a1: Uint_436208391;
                                     a2: Lpvoid_436208209): void {.cdecl.} ## Generated based on /home/dian/Projects/nsciter/sciter-js-sdk/include/sciter-x-primitives.h:292:26
  structinitializationparams_436208030* = object
    cmd*: Uint_436208391     ## Generated based on /home/dian/Projects/nsciter/sciter-js-sdk/include/sciter-x-behavior.h:106:18
  
  structsomparams_data_t* {.union.} = object
    passport*: ptr sompassportt_436208201
    asset*: ptr somassett_436208006

  structsomparams_436208032* = object
    cmd*: Uint_436208391     ## Generated based on /home/dian/Projects/nsciter/sciter-js-sdk/include/sciter-x-behavior.h:117:18
    data*: structsomparams_data_t

  Lpscndataloaded_436208034* = ptr Scndataloaded_436208405 ## Generated based on /home/dian/Projects/nsciter/sciter-js-sdk/include/sciter-x-def.h:209:27
  Scitervalue_436208036* = Value_436208127 ## Generated based on /home/dian/Projects/nsciter/sciter-js-sdk/include/sciter-x-value.h:29:17
  Mouseparams_436208038* = structmouseparams_436208327 ## Generated based on /home/dian/Projects/nsciter/sciter-js-sdk/include/sciter-x-behavior.h:184:5
  structsciterxmsgkey_436208040* = object
    header*: Sciterxmsg_436208373 ## Generated based on /home/dian/Projects/nsciter/sciter-js-sdk/include/sciter-x-msg.h:90:16
    event*: Keyevents_436207998
    code*: Uint_436208391
    modifiers*: Keyboardstates_436208265

  Lpcbytereceiver_436208042* = proc (a0: Lpcbyte_436207944; a1: Uint_436208391;
                                     a2: Lpvoid_436208209): void {.cdecl.} ## Generated based on /home/dian/Projects/nsciter/sciter-js-sdk/include/sciter-x-primitives.h:294:26
  Sciterxmsgdestroy_436208046* = structsciterxmsgdestroy_436208083 ## Generated based on /home/dian/Projects/nsciter/sciter-js-sdk/include/sciter-x-msg.h:60:3
  Scangle_436208048* = Screal_436208213 ## Generated based on /home/dian/Projects/nsciter/sciter-js-sdk/include/sciter-x-graphics.h:51:18
  Lpscnpostednotification_436208050* = ptr Scnpostednotification_436207946 ## Generated based on /home/dian/Projects/nsciter/sciter-js-sdk/include/sciter-x-def.h:248:34
  Lpscnkeyboardrequest_436208052* = ptr Scnkeyboardrequest_436208217 ## Generated based on /home/dian/Projects/nsciter/sciter-js-sdk/include/sciter-x-def.h:268:31
  somitemnextt_436208054* = proc (a0: ptr somassett_436208006;
                                  a1: ptr Scitervalue_436208037;
                                  a2: ptr Scitervalue_436208037): Sbool_436208261 {.
      cdecl.}                ## Generated based on /home/dian/Projects/nsciter/sciter-js-sdk/include/sciter-om-def.h:25:16
  Sccolor_436208058* = cuint ## Generated based on /home/dian/Projects/nsciter/sciter-js-sdk/include/sciter-x-graphics.h:52:22
  structtimerparams_436208060* = object
    timerid*: Uintptr_436208243 ## Generated based on /home/dian/Projects/nsciter/sciter-js-sdk/include/sciter-x-behavior.h:563:18
  
  Somparams_436208064* = structsomparams_436208033 ## Generated based on /home/dian/Projects/nsciter/sciter-js-sdk/include/sciter-x-behavior.h:127:5
  Lpcstrreceiver_436208066* = proc (a0: Lpcstr_436208149; a1: Uint_436208391;
                                    a2: Lpvoid_436208209): void {.cdecl.} ## Generated based on /home/dian/Projects/nsciter/sciter-js-sdk/include/sciter-x-primitives.h:293:26
  structsciterxmsgmouse_436208068* = object
    header*: Sciterxmsg_436208373 ## Generated based on /home/dian/Projects/nsciter/sciter-js-sdk/include/sciter-x-msg.h:79:16
    event*: Mouseevents_436208171
    button*: Mousebuttons_436208115
    modifiers*: Keyboardstates_436208265
    pos*: Point_436208299

  Methodparams_436208070* = structmethodparams_436208163 ## Generated based on /home/dian/Projects/nsciter/sciter-js-sdk/include/sciter-x-dom.h:89:32
  structscrollparams_436208072* = object
    cmd*: Uint_436208391     ## Generated based on /home/dian/Projects/nsciter/sciter-js-sdk/include/sciter-x-behavior.h:299:18
    target*: Helement_436208277
    pos*: Int_436208395
    vertical*: Sbool_436208261
    source*: Uint_436208391
    reason*: Uint_436208391

  structsciterxmsgresolution_436208074* = object
    header*: Sciterxmsg_436208373 ## Generated based on /home/dian/Projects/nsciter/sciter-js-sdk/include/sciter-x-msg.h:71:16
    pixelsperinch*: Uint_436208391

  structgtkwidget_436208076* = object
    parentinstance*: Ginitiallyunowned_436208365 ## Generated based on /usr/include/gtk-3.0/gtk/gtkwidget.h:133:8
    priv*: ptr Gtkwidgetprivate_436208317

  Scngraphicscriticalfailure_436208078* = structscngraphicscriticalfailure_436208369 ## Generated based on /home/dian/Projects/nsciter/sciter-js-sdk/include/sciter-x-def.h:256:3
  Lpelementeventproc_436208080* = ptr Elementeventproc_436208249 ## Generated based on /home/dian/Projects/nsciter/sciter-js-sdk/include/sciter-x-dom.h:559:27
  structsciterxmsgdestroy_436208082* = object
    header*: Sciterxmsg_436208373 ## Generated based on /home/dian/Projects/nsciter/sciter-js-sdk/include/sciter-x-msg.h:55:16
  
  Sciterlibraryinitfunc_436208086* = proc (a0: ptr Isciterapi_436208281;
      a1: ptr Scitervalue_436208037): Sbool_436208261 {.cdecl.} ## Generated based on /home/dian/Projects/nsciter/sciter-js-sdk/include/sciter-x.h:53:21
  Int64_436208088* = clonglong ## Generated based on /home/dian/Projects/nsciter/sciter-js-sdk/include/sciter-x-primitives.h:163:21
  Sciterxmsgresolution_436208090* = structsciterxmsgresolution_436208075 ## Generated based on /home/dian/Projects/nsciter/sciter-js-sdk/include/sciter-x-msg.h:77:3
  Rect_436208092* = structtagrect_436208455 ## Generated based on /home/dian/Projects/nsciter/sciter-js-sdk/include/sciter-x-primitives.h:186:5
  Scninvalidaterect_436208094* = structscninvalidaterect_436208135 ## Generated based on /home/dian/Projects/nsciter/sciter-js-sdk/include/sciter-x-def.h:276:3
  Scdim_436208100* = Screal_436208213 ## Generated based on /home/dian/Projects/nsciter/sciter-js-sdk/include/sciter-x-graphics.h:50:18
  structscnpostednotification_436208102* = object
    code*: Uint_436208391    ## Generated based on /home/dian/Projects/nsciter/sciter-js-sdk/include/sciter-x-def.h:239:16
    hwnd*: ptr Gtkwidget_436208409
    wparam*: Uintptr_436208243
    lparam*: Uintptr_436208243
    lreturn*: Uintptr_436208243

  structdataarrivedparams_436208106* = object
    initiator*: Helement_436208277 ## Generated based on /home/dian/Projects/nsciter/sciter-js-sdk/include/sciter-x-behavior.h:639:18
    data*: Lpcbyte_436207944
    datasize*: Uint_436208391
    datatype*: Uint_436208391
    status*: Uint_436208391
    uri*: Lpcwstr_436208381

  structscnattachbehavior_436208108* = object
    code*: Uint_436208391    ## Generated based on /home/dian/Projects/nsciter/sciter-js-sdk/include/sciter-x-def.h:213:16
    hwnd*: ptr Gtkwidget_436208409
    element*: Helement_436208277
    behaviorname*: Lpcstr_436208149
    elementproc*: ptr Elementeventproc_436208249
    elementtag*: Lpvoid_436208209

  structsciterxmsgfocus_436208112* = object
    header*: Sciterxmsg_436208373 ## Generated based on /home/dian/Projects/nsciter/sciter-js-sdk/include/sciter-x-msg.h:100:16
    got*: Sbool_436208261

  Elementbitmapreceiver_436208116* = proc (a0: Lpcbyte_436207944; a1: Int_436208395;
      a2: Int_436208395; a3: Uint_436208391; a4: Uint_436208391; a5: Lpvoid_436208209): void {.
      cdecl.}                ## Generated based on /home/dian/Projects/nsciter/sciter-js-sdk/include/sciter-x-msg.h:126:26
  Lpsciterrequestapi_436208120* = ptr structsciterrequestapi_436208439 ## Generated based on /home/dian/Projects/nsciter/sciter-js-sdk/include/sciter-x-request.h:203:34
  structscitercallbacknotification_436208122* = object
    code*: Uint_436208391    ## Generated based on /home/dian/Projects/nsciter/sciter-js-sdk/include/sciter-x-def.h:154:16
    hwnd*: ptr Gtkwidget_436208409

  Lpscngraphicscriticalfailure_436208124* = ptr Scngraphicscriticalfailure_436208079 ## Generated based on /home/dian/Projects/nsciter/sciter-js-sdk/include/sciter-x-def.h:258:40
  Value_436208126* = object
    t*: Uint_436208391       ## Generated based on /home/dian/Projects/nsciter/sciter-js-sdk/include/value.h:14:9
    u*: Uint_436208391
    d*: Uint64_436208443

  Lpuint_436208128* = ptr Uint_436208391 ## Generated based on /home/dian/Projects/nsciter/sciter-js-sdk/include/sciter-x-primitives.h:284:17
  structscninvalidaterect_436208134* = object
    code*: Uint_436208391    ## Generated based on /home/dian/Projects/nsciter/sciter-js-sdk/include/sciter-x-def.h:272:16
    hwnd*: ptr Gtkwidget_436208409
    invalidrect*: Rect_436208093

  somassetclasst_436208136* = structsomassetclasst_436208313 ## Generated based on /home/dian/Projects/nsciter/sciter-js-sdk/include/sciter-om.h:22:3
  Htext_436208140* = pointer ## Generated based on /home/dian/Projects/nsciter/sciter-js-sdk/include/sciter-x-graphics.h:43:29
  structtagsize_436208142* = object
    cx*: Int_436208395       ## Generated based on /home/dian/Projects/nsciter/sciter-js-sdk/include/sciter-x-primitives.h:195:18
    cy*: Int_436208395

  Lpscnenginedestroyed_436208144* = ptr Scnenginedestroyed_436208301 ## Generated based on /home/dian/Projects/nsciter/sciter-js-sdk/include/sciter-x-def.h:235:31
  Lprect_436208146* = ptr structtagrect_436208455 ## Generated based on /home/dian/Projects/nsciter/sciter-js-sdk/include/sciter-x-primitives.h:186:12
  Lpcstr_436208148* = ptr UncheckedArray[Char_436208161] ## Generated based on /home/dian/Projects/nsciter/sciter-js-sdk/include/sciter-x-primitives.h:170:23
  Elementcomparator_436208150* = proc (a0: Helement_436208277; a1: Helement_436208277;
                                       a2: Lpvoid_436208209): Int_436208395 {.
      cdecl.}                ## Generated based on /home/dian/Projects/nsciter/sciter-js-sdk/include/sciter-x-dom.h:810:25
  Hposition_436208156* = structhposition_436208333 ## Generated based on /home/dian/Projects/nsciter/sciter-js-sdk/include/sciter-x-dom.h:46:51
  Lpsize_436208158* = ptr structtagsize_436208143 ## Generated based on /home/dian/Projects/nsciter/sciter-js-sdk/include/sciter-x-primitives.h:199:20
  Char_436208160* = cschar   ## Generated based on /home/dian/Projects/nsciter/sciter-js-sdk/include/sciter-x-primitives.h:169:16
  structmethodparams_436208162* = object
    methodid*: Uint_436208391 ## Generated based on /home/dian/Projects/nsciter/sciter-js-sdk/include/sciter-x-dom.h:81:10
  
  Ppoint_436208164* = ptr structtagpoint_436208315 ## Generated based on /home/dian/Projects/nsciter/sciter-js-sdk/include/sciter-x-primitives.h:193:13
  Uint32_436208166* = cuint  ## Generated based on /home/dian/Projects/nsciter/sciter-js-sdk/include/sciter-x-primitives.h:160:24
  structscnloaddata_436208168* = object
    code*: Uint_436208391    ## Generated based on /home/dian/Projects/nsciter/sciter-js-sdk/include/sciter-x-def.h:171:16
    hwnd*: ptr Gtkwidget_436208409
    uri*: Lpcwstr_436208381
    outdata*: Lpcbyte_436207944
    outdatasize*: Uint_436208391
    datatype*: Uint_436208391
    requestid*: Hrequest_436207988
    principal*: Helement_436208277
    initiator*: Helement_436208277

  Lpsciterhostcallback_436208172* = ptr Sciterhostcallback_436208269 ## Generated based on /home/dian/Projects/nsciter/sciter-js-sdk/include/sciter-x-def.h:164:30
  Initializationparams_436208174* = structinitializationparams_436208031 ## Generated based on /home/dian/Projects/nsciter/sciter-js-sdk/include/sciter-x-behavior.h:109:5
  Urldatareceiver_436208176* = proc (a0: ptr Urldata_436208253; a1: Lpvoid_436208209): void {.
      cdecl.}                ## Generated based on /home/dian/Projects/nsciter/sciter-js-sdk/include/sciter-x-def.h:571:26
  Hpath_436208178* = pointer ## Generated based on /home/dian/Projects/nsciter/sciter-js-sdk/include/sciter-x-graphics.h:42:29
  Sciterwindowdelegate_436208182* = Lpvoid_436208209 ## Generated based on /home/dian/Projects/nsciter/sciter-js-sdk/include/sciter-x-def.h:691:18
  structsciterxmsgheartbit_436208184* = object
    header*: Sciterxmsg_436208373 ## Generated based on /home/dian/Projects/nsciter/sciter-js-sdk/include/sciter-x-msg.h:109:16
    time*: Uint_436208391

  structscndataloaded_436208186* = object
    code*: Uint_436208391    ## Generated based on /home/dian/Projects/nsciter/sciter-js-sdk/include/sciter-x-def.h:193:16
    hwnd*: ptr Gtkwidget_436208409
    uri*: Lpcwstr_436208381
    data*: Lpcbyte_436207944
    datasize*: Uint_436208391
    datatype*: Uint_436208391
    status*: Uint_436208391

  somitemgettert_436208188* = proc (a0: ptr somassett_436208006;
                                    a1: ptr Scitervalue_436208037;
                                    a2: ptr Scitervalue_436208037): Sbool_436208261 {.
      cdecl.}                ## Generated based on /home/dian/Projects/nsciter/sciter-js-sdk/include/sciter-om-def.h:23:16
  structexchangeparams_436208190* = object
    cmd*: Uint_436208391     ## Generated based on /home/dian/Projects/nsciter/sciter-js-sdk/include/sciter-x-behavior.h:378:18
    target*: Helement_436208277
    source*: Helement_436208277
    pos*: Point_436208299
    posview*: Point_436208299
    mode*: Uint_436208391
    data*: Scitervalue_436208037

  Behavioreventparams_436208192* = structbehavioreventparams_436207956 ## Generated based on /home/dian/Projects/nsciter/sciter-js-sdk/include/sciter-x-behavior.h:561:5
  somdisposet_436208196* = proc (a0: ptr somassett_436208006): void {.cdecl.} ## Generated based on /home/dian/Projects/nsciter/sciter-js-sdk/include/sciter-om-def.h:29:15
  sompassportt_436208200* = structsompassportt_436208355 ## Generated based on /home/dian/Projects/nsciter/sciter-js-sdk/include/sciter-om-def.h:69:3
  Int32_436208202* = cint    ## Generated based on /home/dian/Projects/nsciter/sciter-js-sdk/include/sciter-x-primitives.h:161:15
  Scriptingmethodparams_436208204* = structscriptingmethodparams_436208447 ## Generated based on /home/dian/Projects/nsciter/sciter-js-sdk/include/sciter-x-behavior.h:615:5
  Sciterxmsgsize_436208206* = structsciterxmsgsize_436208227 ## Generated based on /home/dian/Projects/nsciter/sciter-js-sdk/include/sciter-x-msg.h:69:3
  Lpvoid_436208208* = pointer ## Generated based on /home/dian/Projects/nsciter/sciter-js-sdk/include/sciter-x-primitives.h:173:17
  sompropgettert_436208210* = proc (a0: ptr somassett_436208006;
                                    a1: ptr Scitervalue_436208037): Sbool_436208261 {.
      cdecl.}                ## Generated based on /home/dian/Projects/nsciter/sciter-js-sdk/include/sciter-om-def.h:21:16
  Screal_436208212* = cfloat ## Generated based on /home/dian/Projects/nsciter/sciter-js-sdk/include/sciter-x-graphics.h:47:15
  structsccolorstop_436208214* = object
    color*: Sccolor_436208059 ## Generated based on /home/dian/Projects/nsciter/sciter-js-sdk/include/sciter-x-graphics.h:54:16
    offset*: cfloat

  Scnkeyboardrequest_436208216* = structscnkeyboardrequest_436208379 ## Generated based on /home/dian/Projects/nsciter/sciter-js-sdk/include/sciter-x-def.h:266:3
  Hrange_436208218* = pointer ## Generated based on /home/dian/Projects/nsciter/sciter-js-sdk/include/sciter-x-dom.h:44:18
  Lpcrect_436208220* = ptr Rect_436208093 ## Generated based on /home/dian/Projects/nsciter/sciter-js-sdk/include/sciter-x-primitives.h:187:24
  structisciterapi_436208222* = object
    version*: Uint_436208391 ## Generated based on /home/dian/Projects/nsciter/sciter-js-sdk/include/sciter-x-api.h:50:16
    Sciterclassname*: proc (): Lpcwstr_436208381 {.cdecl.}
    Sciterversion*: proc (a0: Sbool_436208261): Uint_436208391 {.cdecl.}
    Sciterdataready*: proc (a0: ptr Gtkwidget_436208409; a1: Lpcwstr_436208381;
                            a2: Lpcbyte_436207944; a3: Uint_436208391): Sbool_436208261 {.
        cdecl.}
    Sciterdatareadyasync*: proc (a0: ptr Gtkwidget_436208409; a1: Lpcwstr_436208381;
                                 a2: Lpcbyte_436207944; a3: Uint_436208391;
                                 a4: Lpvoid_436208209): Sbool_436208261 {.cdecl.}
    Sciterproc*: Lpvoid_436208209
    Sciterprocnd*: Lpvoid_436208209
    Sciterloadfile*: proc (a0: ptr Gtkwidget_436208409; a1: Lpcwstr_436208381): Sbool_436208261 {.
        cdecl.}
    Sciterloadhtml*: proc (a0: ptr Gtkwidget_436208409; a1: Lpcbyte_436207944;
                           a2: Uint_436208391; a3: Lpcwstr_436208381): Sbool_436208261 {.
        cdecl.}
    Scitersetcallback*: proc (a0: ptr Gtkwidget_436208409;
                              a1: Lpsciterhostcallback_436208173; a2: Lpvoid_436208209): void {.
        cdecl.}
    Scitersetmastercss*: proc (a0: Lpcbyte_436207944; a1: Uint_436208391): Sbool_436208261 {.
        cdecl.}
    Sciterappendmastercss*: proc (a0: Lpcbyte_436207944; a1: Uint_436208391): Sbool_436208261 {.
        cdecl.}
    Scitersetcss*: proc (a0: ptr Gtkwidget_436208409; a1: Lpcbyte_436207944;
                         a2: Uint_436208391; a3: Lpcwstr_436208381; a4: Lpcwstr_436208381): Sbool_436208261 {.
        cdecl.}
    Scitersetmediatype*: proc (a0: ptr Gtkwidget_436208409; a1: Lpcwstr_436208381): Sbool_436208261 {.
        cdecl.}
    Scitersetmediavars*: proc (a0: ptr Gtkwidget_436208409; a1: ptr Scitervalue_436208037): Sbool_436208261 {.
        cdecl.}
    Scitergetminwidth*: proc (a0: ptr Gtkwidget_436208409): Uint_436208391 {.
        cdecl.}
    Scitergetminheight*: proc (a0: ptr Gtkwidget_436208409; a1: Uint_436208391): Uint_436208391 {.
        cdecl.}
    Scitercall*: proc (a0: ptr Gtkwidget_436208409; a1: Lpcstr_436208149;
                       a2: Uint_436208391; a3: ptr Scitervalue_436208037;
                       a4: ptr Scitervalue_436208037): Sbool_436208261 {.cdecl.}
    Scitereval*: proc (a0: ptr Gtkwidget_436208409; a1: Lpcwstr_436208381;
                       a2: Uint_436208391; a3: ptr Scitervalue_436208037): Sbool_436208261 {.
        cdecl.}
    Sciterupdatewindow*: proc (a0: ptr Gtkwidget_436208409): void {.cdecl.}
    Scitertranslatemessage*: Lpvoid_436208209
    Scitersetoption*: proc (a0: ptr Gtkwidget_436208409; a1: Uint_436208391;
                            a2: Uintptr_436208243): Sbool_436208261 {.cdecl.}
    Scitergetppi*: proc (a0: ptr Gtkwidget_436208409; a1: ptr Uint_436208391;
                         a2: ptr Uint_436208391): void {.cdecl.}
    Scitergetviewexpando*: proc (a0: ptr Gtkwidget_436208409; a1: ptr Value_436208127): Sbool_436208261 {.
        cdecl.}
    Sciterrenderd2d*: Lpvoid_436208209
    Sciterd2dfactory*: Lpvoid_436208209
    Sciterdwfactory*: Lpvoid_436208209
    Scitergraphicscaps*: proc (a0: Lpuint_436208129): Sbool_436208261 {.cdecl.}
    Scitersethomeurl*: proc (a0: ptr Gtkwidget_436208409; a1: Lpcwstr_436208381): Sbool_436208261 {.
        cdecl.}
    Scitercreatensview*: Lpvoid_436208209
    Scitercreatewidget*: proc (a0: Lprect_436208147): ptr Gtkwidget_436208409 {.
        cdecl.}
    Scitercreatewindow*: proc (a0: Uint_436208391; a1: Lprect_436208147;
                               a2: ptr Sciterwindowdelegate_436208183;
                               a3: Lpvoid_436208209; a4: ptr Gtkwidget_436208409): ptr Gtkwidget_436208409 {.
        cdecl.}
    Scitersetupdebugoutput*: proc (a0: ptr Gtkwidget_436208409; a1: Lpvoid_436208209;
                                   a2: Debugoutputproc_436208255): void {.cdecl.}
    Sciteruseelement*: proc (a0: Helement_436208277): Int_436208395 {.cdecl.}
    Sciterunuseelement*: proc (a0: Helement_436208277): Int_436208395 {.cdecl.}
    Scitergetrootelement*: proc (a0: ptr Gtkwidget_436208409; a1: ptr Helement_436208277): Int_436208395 {.
        cdecl.}
    Scitergetfocuselement*: proc (a0: ptr Gtkwidget_436208409; a1: ptr Helement_436208277): Int_436208395 {.
        cdecl.}
    Sciterfindelement*: proc (a0: ptr Gtkwidget_436208409; a1: Point_436208299;
                              a2: ptr Helement_436208277): Int_436208395 {.cdecl.}
    Scitergetchildrencount*: proc (a0: Helement_436208277; a1: ptr Uint_436208391): Int_436208395 {.
        cdecl.}
    Scitergetnthchild*: proc (a0: Helement_436208277; a1: Uint_436208391;
                              a2: ptr Helement_436208277): Int_436208395 {.cdecl.}
    Scitergetparentelement*: proc (a0: Helement_436208277; a1: ptr Helement_436208277): Int_436208395 {.
        cdecl.}
    Scitergetelementhtmlcb*: proc (a0: Helement_436208277; a1: Sbool_436208261;
                                   a2: ptr Lpcbytereceiver_436208043; a3: Lpvoid_436208209): Int_436208395 {.
        cdecl.}
    Scitergetelementtextcb*: proc (a0: Helement_436208277;
                                   a1: ptr Lpcwstrreceiver_436208029; a2: Lpvoid_436208209): Int_436208395 {.
        cdecl.}
    Scitersetelementtext*: proc (a0: Helement_436208277; a1: Lpcwstr_436208381;
                                 a2: Uint_436208391): Int_436208395 {.cdecl.}
    Scitergetattributecount*: proc (a0: Helement_436208277; a1: Lpuint_436208129): Int_436208395 {.
        cdecl.}
    Scitergetnthattributenamecb*: proc (a0: Helement_436208277; a1: Uint_436208391;
                                        a2: ptr Lpcstrreceiver_436208067;
                                        a3: Lpvoid_436208209): Int_436208395 {.
        cdecl.}
    Scitergetnthattributevaluecb*: proc (a0: Helement_436208277; a1: Uint_436208391;
        a2: ptr Lpcwstrreceiver_436208029; a3: Lpvoid_436208209): Int_436208395 {.
        cdecl.}
    Scitergetattributebynamecb*: proc (a0: Helement_436208277; a1: Lpcstr_436208149;
                                       a2: ptr Lpcwstrreceiver_436208029;
                                       a3: Lpvoid_436208209): Int_436208395 {.
        cdecl.}
    Scitersetattributebyname*: proc (a0: Helement_436208277; a1: Lpcstr_436208149;
                                     a2: Lpcwstr_436208381): Int_436208395 {.
        cdecl.}
    Sciterclearattributes*: proc (a0: Helement_436208277): Int_436208395 {.cdecl.}
    Scitergetelementindex*: proc (a0: Helement_436208277; a1: Lpuint_436208129): Int_436208395 {.
        cdecl.}
    Scitergetelementtype*: proc (a0: Helement_436208277; a1: ptr Lpcstr_436208149): Int_436208395 {.
        cdecl.}
    Scitergetelementtypecb*: proc (a0: Helement_436208277;
                                   a1: ptr Lpcstrreceiver_436208067; a2: Lpvoid_436208209): Int_436208395 {.
        cdecl.}
    Scitergetstyleattributecb*: proc (a0: Helement_436208277; a1: Lpcstr_436208149;
                                      a2: ptr Lpcwstrreceiver_436208029;
                                      a3: Lpvoid_436208209): Int_436208395 {.
        cdecl.}
    Scitersetstyleattribute*: proc (a0: Helement_436208277; a1: Lpcstr_436208149;
                                    a2: Lpcwstr_436208381): Int_436208395 {.
        cdecl.}
    Scitergetelementlocation*: proc (a0: Helement_436208277; a1: Lprect_436208147;
                                     a2: Uint_436208391): Int_436208395 {.cdecl.}
    Sciterscrolltoview*: proc (a0: Helement_436208277; a1: Uint_436208391): Int_436208395 {.
        cdecl.}
    Sciterupdateelement*: proc (a0: Helement_436208277; a1: Sbool_436208261): Int_436208395 {.
        cdecl.}
    Sciterrefreshelementarea*: proc (a0: Helement_436208277; a1: Rect_436208093): Int_436208395 {.
        cdecl.}
    Scitersetcapture*: proc (a0: Helement_436208277): Int_436208395 {.cdecl.}
    Sciterreleasecapture*: proc (a0: Helement_436208277): Int_436208395 {.cdecl.}
    Scitergetelementhwnd*: proc (a0: Helement_436208277; a1: ptr ptr Gtkwidget_436208409;
                                 a2: Sbool_436208261): Int_436208395 {.cdecl.}
    Scitercombineurl*: proc (a0: Helement_436208277; a1: Lpwstr_436208387;
                             a2: Uint_436208391): Int_436208395 {.cdecl.}
    Sciterselectelements*: proc (a0: Helement_436208277; a1: Lpcstr_436208149;
                                 a2: ptr Sciterelementcallback_436207990;
                                 a3: Lpvoid_436208209): Int_436208395 {.cdecl.}
    Sciterselectelementsw*: proc (a0: Helement_436208277; a1: Lpcwstr_436208381;
                                  a2: ptr Sciterelementcallback_436207990;
                                  a3: Lpvoid_436208209): Int_436208395 {.cdecl.}
    Sciterselectparent*: proc (a0: Helement_436208277; a1: Lpcstr_436208149;
                               a2: Uint_436208391; a3: ptr Helement_436208277): Int_436208395 {.
        cdecl.}
    Sciterselectparentw*: proc (a0: Helement_436208277; a1: Lpcwstr_436208381;
                                a2: Uint_436208391; a3: ptr Helement_436208277): Int_436208395 {.
        cdecl.}
    Scitersetelementhtml*: proc (a0: Helement_436208277; a1: ptr Byte_436207974;
                                 a2: Uint_436208391; a3: Uint_436208391): Int_436208395 {.
        cdecl.}
    Scitergetelementuid*: proc (a0: Helement_436208277; a1: ptr Uint_436208391): Int_436208395 {.
        cdecl.}
    Scitergetelementbyuid*: proc (a0: ptr Gtkwidget_436208409; a1: Uint_436208391;
                                  a2: ptr Helement_436208277): Int_436208395 {.
        cdecl.}
    Scitershowpopup*: proc (a0: Helement_436208277; a1: Helement_436208277;
                            a2: Uint_436208391): Int_436208395 {.cdecl.}
    Scitershowpopupat*: proc (a0: Helement_436208277; a1: Point_436208299;
                              a2: Uint_436208391): Int_436208395 {.cdecl.}
    Sciterhidepopup*: proc (a0: Helement_436208277): Int_436208395 {.cdecl.}
    Scitergetelementstate*: proc (a0: Helement_436208277; a1: ptr Uint_436208391): Int_436208395 {.
        cdecl.}
    Scitersetelementstate*: proc (a0: Helement_436208277; a1: Uint_436208391;
                                  a2: Uint_436208391; a3: Sbool_436208261): Int_436208395 {.
        cdecl.}
    Scitercreateelement*: proc (a0: Lpcstr_436208149; a1: Lpcwstr_436208381;
                                a2: ptr Helement_436208277): Int_436208395 {.
        cdecl.}
    Scitercloneelement*: proc (a0: Helement_436208277; a1: ptr Helement_436208277): Int_436208395 {.
        cdecl.}
    Sciterinsertelement*: proc (a0: Helement_436208277; a1: Helement_436208277;
                                a2: Uint_436208391): Int_436208395 {.cdecl.}
    Sciterdetachelement*: proc (a0: Helement_436208277): Int_436208395 {.cdecl.}
    Sciterdeleteelement*: proc (a0: Helement_436208277): Int_436208395 {.cdecl.}
    Scitersettimer*: proc (a0: Helement_436208277; a1: Uint_436208391;
                           a2: Uintptr_436208243): Int_436208395 {.cdecl.}
    Sciterdetacheventhandler*: proc (a0: Helement_436208277;
                                     a1: Lpelementeventproc_436208081;
                                     a2: Lpvoid_436208209): Int_436208395 {.
        cdecl.}
    Sciterattacheventhandler*: proc (a0: Helement_436208277;
                                     a1: Lpelementeventproc_436208081;
                                     a2: Lpvoid_436208209): Int_436208395 {.
        cdecl.}
    Sciterwindowattacheventhandler*: proc (a0: ptr Gtkwidget_436208409;
        a1: Lpelementeventproc_436208081; a2: Lpvoid_436208209; a3: Uint_436208391): Int_436208395 {.
        cdecl.}
    Sciterwindowdetacheventhandler*: proc (a0: ptr Gtkwidget_436208409;
        a1: Lpelementeventproc_436208081; a2: Lpvoid_436208209): Int_436208395 {.
        cdecl.}
    Scitersendevent*: proc (a0: Helement_436208277; a1: Uint_436208391;
                            a2: Helement_436208277; a3: Uintptr_436208243;
                            a4: ptr Sbool_436208261): Int_436208395 {.cdecl.}
    Sciterpostevent*: proc (a0: Helement_436208277; a1: Uint_436208391;
                            a2: Helement_436208277; a3: Uintptr_436208243): Int_436208395 {.
        cdecl.}
    Scitercallbehaviormethod*: proc (a0: Helement_436208277;
                                     a1: ptr structmethodparams_436208163): Int_436208395 {.
        cdecl.}
    Sciterrequestelementdata*: proc (a0: Helement_436208277; a1: Lpcwstr_436208381;
                                     a2: Uint_436208391; a3: Helement_436208277): Int_436208395 {.
        cdecl.}
    Sciterhttprequest*: proc (a0: Helement_436208277; a1: Lpcwstr_436208381;
                              a2: Uint_436208391; a3: Uint_436208391;
                              a4: ptr structrequestparam_436208309; a5: Uint_436208391): Int_436208395 {.
        cdecl.}
    Scitergetscrollinfo*: proc (a0: Helement_436208277; a1: Lppoint_436208435;
                                a2: Lprect_436208147; a3: Lpsize_436208159): Int_436208395 {.
        cdecl.}
    Scitersetscrollpos*: proc (a0: Helement_436208277; a1: Point_436208299;
                               a2: Sbool_436208261): Int_436208395 {.cdecl.}
    Scitergetelementintrinsicwidths*: proc (a0: Helement_436208277; a1: ptr Int_436208395;
        a2: ptr Int_436208395): Int_436208395 {.cdecl.}
    Scitergetelementintrinsicheight*: proc (a0: Helement_436208277; a1: Int_436208395;
        a2: ptr Int_436208395): Int_436208395 {.cdecl.}
    Sciteriselementvisible*: proc (a0: Helement_436208277; a1: ptr Sbool_436208261): Int_436208395 {.
        cdecl.}
    Sciteriselementenabled*: proc (a0: Helement_436208277; a1: ptr Sbool_436208261): Int_436208395 {.
        cdecl.}
    Scitersortelements*: proc (a0: Helement_436208277; a1: Uint_436208391;
                               a2: Uint_436208391; a3: ptr Elementcomparator_436208151;
                               a4: Lpvoid_436208209): Int_436208395 {.cdecl.}
    Sciterswapelements*: proc (a0: Helement_436208277; a1: Helement_436208277): Int_436208395 {.
        cdecl.}
    Scitertraverseuievent*: proc (a0: Uint_436208391; a1: Lpvoid_436208209;
                                  a2: ptr Sbool_436208261): Int_436208395 {.
        cdecl.}
    Scitercallscriptingmethod*: proc (a0: Helement_436208277; a1: Lpcstr_436208149;
                                      a2: ptr Value_436208127; a3: Uint_436208391;
                                      a4: ptr Value_436208127): Int_436208395 {.
        cdecl.}
    Scitercallscriptingfunction*: proc (a0: Helement_436208277; a1: Lpcstr_436208149;
                                        a2: ptr Value_436208127; a3: Uint_436208391;
                                        a4: ptr Value_436208127): Int_436208395 {.
        cdecl.}
    Sciterevalelementscript*: proc (a0: Helement_436208277; a1: Lpcwstr_436208381;
                                    a2: Uint_436208391; a3: ptr Value_436208127): Int_436208395 {.
        cdecl.}
    Sciterattachhwndtoelement*: proc (a0: Helement_436208277; a1: ptr Gtkwidget_436208409): Int_436208395 {.
        cdecl.}
    Scitercontrolgettype*: proc (a0: Helement_436208277; a1: ptr Uint_436208391): Int_436208395 {.
        cdecl.}
    Scitergetvalue*: proc (a0: Helement_436208277; a1: ptr Value_436208127): Int_436208395 {.
        cdecl.}
    Scitersetvalue*: proc (a0: Helement_436208277; a1: ptr Value_436208127): Int_436208395 {.
        cdecl.}
    Scitergetexpando*: proc (a0: Helement_436208277; a1: ptr Value_436208127;
                             a2: Sbool_436208261): Int_436208395 {.cdecl.}
    Scitergetobject*: proc (a0: Helement_436208277; a1: pointer; a2: Sbool_436208261): Int_436208395 {.
        cdecl.}
    Scitergetelementnamespace*: proc (a0: Helement_436208277; a1: pointer): Int_436208395 {.
        cdecl.}
    Scitergethighlightedelement*: proc (a0: ptr Gtkwidget_436208409;
                                        a1: ptr Helement_436208277): Int_436208395 {.
        cdecl.}
    Scitersethighlightedelement*: proc (a0: ptr Gtkwidget_436208409;
                                        a1: Helement_436208277): Int_436208395 {.
        cdecl.}
    Sciternodeaddref*: proc (a0: Hnode_436208393): Int_436208395 {.cdecl.}
    Sciternoderelease*: proc (a0: Hnode_436208393): Int_436208395 {.cdecl.}
    Sciternodecastfromelement*: proc (a0: Helement_436208277; a1: ptr Hnode_436208393): Int_436208395 {.
        cdecl.}
    Sciternodecasttoelement*: proc (a0: Hnode_436208393; a1: ptr Helement_436208277): Int_436208395 {.
        cdecl.}
    Sciternodefirstchild*: proc (a0: Hnode_436208393; a1: ptr Hnode_436208393): Int_436208395 {.
        cdecl.}
    Sciternodelastchild*: proc (a0: Hnode_436208393; a1: ptr Hnode_436208393): Int_436208395 {.
        cdecl.}
    Sciternodenextsibling*: proc (a0: Hnode_436208393; a1: ptr Hnode_436208393): Int_436208395 {.
        cdecl.}
    Sciternodeprevsibling*: proc (a0: Hnode_436208393; a1: ptr Hnode_436208393): Int_436208395 {.
        cdecl.}
    Sciternodeparent*: proc (a0: Hnode_436208393; a1: ptr Helement_436208277): Int_436208395 {.
        cdecl.}
    Sciternodenthchild*: proc (a0: Hnode_436208393; a1: Uint_436208391;
                               a2: ptr Hnode_436208393): Int_436208395 {.cdecl.}
    Sciternodechildrencount*: proc (a0: Hnode_436208393; a1: ptr Uint_436208391): Int_436208395 {.
        cdecl.}
    Sciternodetype*: proc (a0: Hnode_436208393; a1: ptr Uint_436208391): Int_436208395 {.
        cdecl.}
    Sciternodegettext*: proc (a0: Hnode_436208393; a1: ptr Lpcwstrreceiver_436208029;
                              a2: Lpvoid_436208209): Int_436208395 {.cdecl.}
    Sciternodesettext*: proc (a0: Hnode_436208393; a1: Lpcwstr_436208381;
                              a2: Uint_436208391): Int_436208395 {.cdecl.}
    Sciternodeinsert*: proc (a0: Hnode_436208393; a1: Uint_436208391; a2: Hnode_436208393): Int_436208395 {.
        cdecl.}
    Sciternoderemove*: proc (a0: Hnode_436208393; a1: Sbool_436208261): Int_436208395 {.
        cdecl.}
    Scitercreatetextnode*: proc (a0: Lpcwstr_436208381; a1: Uint_436208391;
                                 a2: ptr Hnode_436208393): Int_436208395 {.cdecl.}
    Scitercreatecommentnode*: proc (a0: Lpcwstr_436208381; a1: Uint_436208391;
                                    a2: ptr Hnode_436208393): Int_436208395 {.
        cdecl.}
    Valueinit*: proc (a0: ptr Value_436208127): Uint_436208391 {.cdecl.}
    Valueclear*: proc (a0: ptr Value_436208127): Uint_436208391 {.cdecl.}
    Valuecompare*: proc (a0: ptr Value_436208127; a1: ptr Value_436208127): Uint_436208391 {.
        cdecl.}
    Valuecopy*: proc (a0: ptr Value_436208127; a1: ptr Value_436208127): Uint_436208391 {.
        cdecl.}
    Valueisolate*: proc (a0: ptr Value_436208127): Uint_436208391 {.cdecl.}
    Valuetype*: proc (a0: ptr Value_436208127; a1: ptr Uint_436208391;
                      a2: ptr Uint_436208391): Uint_436208391 {.cdecl.}
    Valuestringdata*: proc (a0: ptr Value_436208127; a1: ptr Lpcwstr_436208381;
                            a2: ptr Uint_436208391): Uint_436208391 {.cdecl.}
    Valuestringdataset*: proc (a0: ptr Value_436208127; a1: Lpcwstr_436208381;
                               a2: Uint_436208391; a3: Uint_436208391): Uint_436208391 {.
        cdecl.}
    Valueintdata*: proc (a0: ptr Value_436208127; a1: ptr Int_436208395): Uint_436208391 {.
        cdecl.}
    Valueintdataset*: proc (a0: ptr Value_436208127; a1: Int_436208395;
                            a2: Uint_436208391; a3: Uint_436208391): Uint_436208391 {.
        cdecl.}
    Valueint64data*: proc (a0: ptr Value_436208127; a1: ptr Int64_436208089): Uint_436208391 {.
        cdecl.}
    Valueint64dataset*: proc (a0: ptr Value_436208127; a1: Int64_436208089;
                              a2: Uint_436208391; a3: Uint_436208391): Uint_436208391 {.
        cdecl.}
    Valuefloatdata*: proc (a0: ptr Value_436208127; a1: ptr cdouble): Uint_436208391 {.
        cdecl.}
    Valuefloatdataset*: proc (a0: ptr Value_436208127; a1: cdouble; a2: Uint_436208391;
                              a3: Uint_436208391): Uint_436208391 {.cdecl.}
    Valuebinarydata*: proc (a0: ptr Value_436208127; a1: ptr Lpcbyte_436207944;
                            a2: ptr Uint_436208391): Uint_436208391 {.cdecl.}
    Valuebinarydataset*: proc (a0: ptr Value_436208127; a1: Lpcbyte_436207944;
                               a2: Uint_436208391; a3: Uint_436208391; a4: Uint_436208391): Uint_436208391 {.
        cdecl.}
    Valueelementscount*: proc (a0: ptr Value_436208127; a1: ptr Int_436208395): Uint_436208391 {.
        cdecl.}
    Valuenthelementvalue*: proc (a0: ptr Value_436208127; a1: Int_436208395;
                                 a2: ptr Value_436208127): Uint_436208391 {.
        cdecl.}
    Valuenthelementvalueset*: proc (a0: ptr Value_436208127; a1: Int_436208395;
                                    a2: ptr Value_436208127): Uint_436208391 {.
        cdecl.}
    Valuenthelementkey*: proc (a0: ptr Value_436208127; a1: Int_436208395;
                               a2: ptr Value_436208127): Uint_436208391 {.cdecl.}
    Valueenumelements*: proc (a0: ptr Value_436208127; a1: ptr Keyvaluecallback_436208383;
                              a2: Lpvoid_436208209): Uint_436208391 {.cdecl.}
    Valuesetvaluetokey*: proc (a0: ptr Value_436208127; a1: ptr Value_436208127;
                               a2: ptr Value_436208127): Uint_436208391 {.cdecl.}
    Valuegetvalueofkey*: proc (a0: ptr Value_436208127; a1: ptr Value_436208127;
                               a2: ptr Value_436208127): Uint_436208391 {.cdecl.}
    Valuetostring*: proc (a0: ptr Value_436208127; a1: Uint_436208391): Uint_436208391 {.
        cdecl.}
    Valuefromstring*: proc (a0: ptr Value_436208127; a1: Lpcwstr_436208381;
                            a2: Uint_436208391; a3: Uint_436208391): Uint_436208391 {.
        cdecl.}
    Valueinvoke*: proc (a0: ptr Value_436208127; a1: ptr Value_436208127;
                        a2: Uint_436208391; a3: ptr Value_436208127;
                        a4: ptr Value_436208127; a5: Lpcwstr_436208381): Uint_436208391 {.
        cdecl.}
    Valuenativefunctorset*: proc (a0: ptr Value_436208127;
                                  a1: ptr Nativefunctorinvoke_436208023;
                                  a2: ptr Nativefunctorrelease_436208289;
                                  a3: pointer): Uint_436208391 {.cdecl.}
    Valueisnativefunctor*: proc (a0: ptr Value_436208127): Sbool_436208261 {.
        cdecl.}
    reserved1*: Lpvoid_436208209
    reserved2*: Lpvoid_436208209
    reserved3*: Lpvoid_436208209
    reserved4*: Lpvoid_436208209
    Sciteropenarchive*: proc (a0: Lpcbyte_436207944; a1: Uint_436208391): Hsarchive_436208321 {.
        cdecl.}
    Scitergetarchiveitem*: proc (a0: Hsarchive_436208321; a1: Lpcwstr_436208381;
                                 a2: ptr Lpcbyte_436207944; a3: ptr Uint_436208391): Sbool_436208261 {.
        cdecl.}
    Sciterclosearchive*: proc (a0: Hsarchive_436208321): Sbool_436208261 {.cdecl.}
    Sciterfireevent*: proc (a0: ptr Behavioreventparams_436208193; a1: Sbool_436208261;
                            a2: ptr Sbool_436208261): Int_436208395 {.cdecl.}
    Scitergetcallbackparam*: proc (a0: ptr Gtkwidget_436208409): Lpvoid_436208209 {.
        cdecl.}
    Sciterpostcallback*: proc (a0: ptr Gtkwidget_436208409; a1: Uintptr_436208243;
                               a2: Uintptr_436208243; a3: Uint_436208391): Uintptr_436208243 {.
        cdecl.}
    Getscitergraphicsapi*: proc (): Lpscitergraphicsapi_436207942 {.cdecl.}
    Getsciterrequestapi*: proc (): Lpsciterrequestapi_436208121 {.cdecl.}
    Scitercreateondirectxwindow*: Lpvoid_436208209
    Sciterrenderondirectxwindow*: Lpvoid_436208209
    Sciterrenderondirectxtexture*: Lpvoid_436208209
    Sciterprocx*: proc (a0: ptr Gtkwidget_436208409; a1: ptr Sciterxmsg_436208373): Sbool_436208261 {.
        cdecl.}
    Sciteratomvalue*: proc (a0: cstring): Uint64_436208443 {.cdecl.}
    Sciteratomnamecb*: proc (a0: Uint64_436208443; a1: ptr Lpcstrreceiver_436208067;
                             a2: Lpvoid_436208209): Sbool_436208261 {.cdecl.}
    Scitersetglobalasset*: proc (a0: ptr somassett_436208006): Sbool_436208261 {.
        cdecl.}
    Scitergetelementasset*: proc (a0: Helement_436208277; a1: Uint64_436208443;
                                  a2: ptr ptr somassett_436208006): Int_436208395 {.
        cdecl.}
    Scitersetvariable*: proc (a0: ptr Gtkwidget_436208409; a1: Lpcstr_436208149;
                              a2: ptr Value_436208127): Uint_436208391 {.cdecl.}
    Scitergetvariable*: proc (a0: ptr Gtkwidget_436208409; a1: Lpcstr_436208149;
                              a2: ptr Value_436208127): Uint_436208391 {.cdecl.}
    Sciterelementunwrap*: proc (a0: ptr Value_436208127; a1: ptr Helement_436208277): Uint_436208391 {.
        cdecl.}
    Sciterelementwrap*: proc (a0: ptr Value_436208127; a1: Helement_436208277): Uint_436208391 {.
        cdecl.}
    Sciternodeunwrap*: proc (a0: ptr Value_436208127; a1: ptr Hnode_436208393): Uint_436208391 {.
        cdecl.}
    Sciternodewrap*: proc (a0: ptr Value_436208127; a1: Hnode_436208393): Uint_436208391 {.
        cdecl.}
    Sciterreleaseglobalasset*: proc (a0: ptr somassett_436208006): Sbool_436208261 {.
        cdecl.}
    Intptr*: proc (a0: ptr cint): proc (a0: Uint_436208391; a1: Uintptr_436208243;
                                        a2: Uintptr_436208243): cint {.cdecl.} {.
        cdecl.}

  structsciterxmsgsize_436208226* = object
    header*: Sciterxmsg_436208373 ## Generated based on /home/dian/Projects/nsciter/sciter-js-sdk/include/sciter-x-msg.h:62:16
    width*: Uint_436208391
    height*: Uint_436208391

  Wchar_436208228* = cint    ## Generated based on /home/dian/Projects/nsciter/sciter-js-sdk/include/sciter-x-primitives.h:166:20
  Scrollparams_436208230* = structscrollparams_436208073 ## Generated based on /home/dian/Projects/nsciter/sciter-js-sdk/include/sciter-x-behavior.h:307:5
  imagewritefunction_436208232* = proc (a0: Lpvoid_436208209; a1: ptr Byte_436207974;
                                        a2: Uint_436208391): Sbool_436208261 {.
      cdecl.}                ## Generated based on /home/dian/Projects/nsciter/sciter-js-sdk/include/sciter-x-graphics.h:129:21
  structgestureparams_436208234* = object
    cmd*: Uint_436208391     ## Generated based on /home/dian/Projects/nsciter/sciter-js-sdk/include/sciter-x-behavior.h:345:18
    target*: Helement_436208277
    pos*: Point_436208299
    posview*: Point_436208299
    flags*: Uint_436208391
    deltatime*: Uint_436208391
    deltaxy*: Size_436207940
    deltav*: cdouble

  structgtypeclass_436208236* = object
    gtype*: Gtype_436208367  ## Generated based on /usr/include/glib-2.0/gobject/gtype.h:424:8
  
  Isemptyparams_436208238* = structisemptyparams_436208247 ## Generated based on /home/dian/Projects/nsciter/sciter-js-sdk/include/sciter-x-behavior.h:635:5
  structgtypeinstance_436208240* = object
    gclass*: ptr Gtypeclass_436208349 ## Generated based on /usr/include/glib-2.0/gobject/gtype.h:434:8
  
  Uintptr_436208242* = csize_t ## Generated based on /home/dian/Projects/nsciter/sciter-js-sdk/include/sciter-x-primitives.h:172:18
  sommethoddeft_436208244* = structsommethoddeft_436208351 ## Generated based on /home/dian/Projects/nsciter/sciter-js-sdk/include/sciter-om-def.h:49:3
  structisemptyparams_436208246* = object
    methodid*: Uint_436208391 ## Generated based on /home/dian/Projects/nsciter/sciter-js-sdk/include/sciter-x-behavior.h:628:18
    isempty*: Uint_436208391

  Elementeventproc_436208248* = proc (a0: Lpvoid_436208209; a1: Helement_436208277;
                                      a2: Uint_436208391; a3: Lpvoid_436208209): Sbool_436208261 {.
      cdecl.}                ## Generated based on /home/dian/Projects/nsciter/sciter-js-sdk/include/sciter-x-behavior.h:69:28
  Scnattachbehavior_436208250* = structscnattachbehavior_436208109 ## Generated based on /home/dian/Projects/nsciter/sciter-js-sdk/include/sciter-x-def.h:224:3
  Urldata_436208252* = structurldata_436208441 ## Generated based on /home/dian/Projects/nsciter/sciter-js-sdk/include/sciter-x-def.h:569:3
  Debugoutputproc_436208254* = proc (a0: Lpvoid_436208209; a1: Uint_436208391;
                                     a2: Uint_436208391; a3: Lpcwstr_436208381;
                                     a4: Uint_436208391): void {.cdecl.} ## Generated based on /home/dian/Projects/nsciter/sciter-js-sdk/include/sciter-x-def.h:750:28
  Gtypeinstance_436208256* = structgtypeinstance_436208241 ## Generated based on /usr/include/glib-2.0/gobject/gtype.h:409:41
  somitemsettert_436208258* = proc (a0: ptr somassett_436208006;
                                    a1: ptr Scitervalue_436208037;
                                    a2: ptr Scitervalue_436208037): Sbool_436208261 {.
      cdecl.}                ## Generated based on /home/dian/Projects/nsciter/sciter-js-sdk/include/sciter-om-def.h:24:16
  Sbool_436208260* = cint    ## Generated based on /home/dian/Projects/nsciter/sciter-js-sdk/include/sciter-x-primitives.h:33:15
  structattributechangeparams_436208266* = object
    he*: Helement_436208277  ## Generated based on /home/dian/Projects/nsciter/sciter-js-sdk/include/sciter-x-behavior.h:651:18
    name*: Lpcstr_436208149
    value*: Lpcwstr_436208381

  Sciterhostcallback_436208268* = proc (a0: Lpscitercallbacknotification_436208417;
                                        a1: Lpvoid_436208209): Uint_436208391 {.
      cdecl.}                ## Generated based on /home/dian/Projects/nsciter/sciter-js-sdk/include/sciter-x-def.h:162:26
  Helement_436208276* = pointer ## Generated based on /home/dian/Projects/nsciter/sciter-js-sdk/include/sciter-x-dom.h:40:18
  Dataarrivedparams_436208278* = structdataarrivedparams_436208107 ## Generated based on /home/dian/Projects/nsciter/sciter-js-sdk/include/sciter-x-behavior.h:649:5
  Isciterapi_436208280* = structisciterapi_436208223 ## Generated based on /home/dian/Projects/nsciter/sciter-js-sdk/include/sciter-x-api.h:305:3
  structdrawparams_436208282* = object
    cmd*: Uint_436208391     ## Generated based on /home/dian/Projects/nsciter/sciter-js-sdk/include/sciter-x-behavior.h:400:18
    gfx*: Hgfx_436207930
    area*: Rect_436208093
    reserved*: Uint_436208391

  imagepaintfunction_436208284* = proc (a0: Lpvoid_436208209; a1: Hgfx_436207930;
                                        a2: Uint_436208391; a3: Uint_436208391): void {.
      cdecl.}                ## Generated based on /home/dian/Projects/nsciter/sciter-js-sdk/include/sciter-x-graphics.h:131:20
  Lpscnloaddata_436208286* = ptr Scnloaddata_436207964 ## Generated based on /home/dian/Projects/nsciter/sciter-js-sdk/include/sciter-x-def.h:188:25
  Nativefunctorrelease_436208288* = proc (a0: pointer): void {.cdecl.} ## Generated based on /home/dian/Projects/nsciter/sciter-js-sdk/include/value.h:114:14
  structfocusparams_436208290* = object
    cmd*: Uint_436208391     ## Generated based on /home/dian/Projects/nsciter/sciter-js-sdk/include/sciter-x-behavior.h:251:18
    target*: Helement_436208277
    cause*: Uint_436208391
    cancel*: Sbool_436208261

  Sciterbehaviorfactory_436208292* = proc (a0: Lpcstr_436208149; a1: Helement_436208277;
      a2: ptr Lpelementeventproctypedef_436208425; a3: ptr Lpvoid_436208209): Sbool_436208261 {.
      cdecl.}                ## Generated based on /home/dian/Projects/nsciter/sciter-js-sdk/include/sciter-x-behavior.h:72:27
  Sciterxmsgheartbit_436208294* = structsciterxmsgheartbit_436208185 ## Generated based on /home/dian/Projects/nsciter/sciter-js-sdk/include/sciter-x-msg.h:115:3
  Point_436208298* = structtagpoint_436208315 ## Generated based on /home/dian/Projects/nsciter/sciter-js-sdk/include/sciter-x-primitives.h:193:5
  Scnenginedestroyed_436208300* = structscnenginedestroyed_436207992 ## Generated based on /home/dian/Projects/nsciter/sciter-js-sdk/include/sciter-x-def.h:233:3
  sompropertydeft_436208302* = structsompropertydeft_436208389 ## Generated based on /home/dian/Projects/nsciter/sciter-js-sdk/include/sciter-om-def.h:39:3
  structsciterxmsgcreate_436208306* = object
    header*: Sciterxmsg_436208373 ## Generated based on /home/dian/Projects/nsciter/sciter-js-sdk/include/sciter-x-msg.h:44:16
    backend*: Uint_436208391
    transparent*: Sbool_436208261

  structrequestparam_436208308* = object
    name*: Lpcwstr_436208381 ## Generated based on /home/dian/Projects/nsciter/sciter-js-sdk/include/sciter-x-dom.h:84:10
    value*: Lpcwstr_436208381

  structsomassetclasst_436208312* = object
    assetaddref*: proc (a0: ptr somassett_436208006): clong {.cdecl.} ## Generated based on /home/dian/Projects/nsciter/sciter-js-sdk/include/sciter-om.h:17:16
    assetrelease*: proc (a0: ptr somassett_436208006): clong {.cdecl.}
    assetgetinterface*: proc (a0: ptr somassett_436208006; a1: cstring;
                              a2: ptr pointer): clong {.cdecl.}
    assetgetpassport*: proc (a0: ptr somassett_436208006): ptr structsompassportt_436208355 {.
        cdecl.}

  structtagpoint_436208314* = object
    x*: Int_436208395        ## Generated based on /home/dian/Projects/nsciter/sciter-js-sdk/include/sciter-x-primitives.h:189:18
    y*: Int_436208395

  Gtkwidgetprivate_436208316* = structgtkwidgetprivate ## Generated based on /usr/include/gtk-3.0/gtk/gtkwidget.h:66:40
  Hsarchive_436208320* = pointer ## Generated based on /home/dian/Projects/nsciter/sciter-js-sdk/include/sciter-x-dom.h:45:18
  Sciterxmsgkey_436208322* = structsciterxmsgkey_436208041 ## Generated based on /home/dian/Projects/nsciter/sciter-js-sdk/include/sciter-x-msg.h:98:3
  somanypropsettert_436208324* = proc (a0: ptr somassett_436208006; a1: Uint64_436208443;
                                       a2: ptr Scitervalue_436208037): Sbool_436208261 {.
      cdecl.}                ## Generated based on /home/dian/Projects/nsciter/sciter-js-sdk/include/sciter-om-def.h:27:16
  structmouseparams_436208326* = object
    cmd*: Uint_436208391     ## Generated based on /home/dian/Projects/nsciter/sciter-js-sdk/include/sciter-x-behavior.h:170:18
    target*: Helement_436208277
    pos*: Point_436208299
    posview*: Point_436208299
    buttonstate*: Uint_436208391
    altstate*: Uint_436208391
    cursortype*: Uint_436208391
    isonicon*: Sbool_436208261
    dragging*: Helement_436208277
    draggingmode*: Uint_436208391

  Valueparams_436208328* = structvalueparams_436207954 ## Generated based on /home/dian/Projects/nsciter/sciter-js-sdk/include/sciter-x-behavior.h:625:5
  structhposition_436208332* = object
    hn*: Hnode_436208393     ## Generated based on /home/dian/Projects/nsciter/sciter-js-sdk/include/sciter-x-dom.h:46:18
    pos*: Int_436208395

  somanypropgettert_436208334* = proc (a0: ptr somassett_436208006; a1: Uint64_436208443;
                                       a2: ptr Scitervalue_436208037): Sbool_436208261 {.
      cdecl.}                ## Generated based on /home/dian/Projects/nsciter/sciter-js-sdk/include/sciter-om-def.h:26:16
  Sciterxmsgmouse_436208338* = structsciterxmsgmouse_436208069 ## Generated based on /home/dian/Projects/nsciter/sciter-js-sdk/include/sciter-x-msg.h:88:3
  Gdata_436208344* = structgdata ## Generated based on /usr/include/glib-2.0/glib/gdataset.h:36:33
  Gtypeclass_436208348* = structgtypeclass_436208237 ## Generated based on /usr/include/glib-2.0/gobject/gtype.h:407:41
  structsommethoddeft_436208350* = object
    reserved*: pointer       ## Generated based on /home/dian/Projects/nsciter/sciter-js-sdk/include/sciter-om-def.h:41:16
    name*: somatomt_436208427
    params*: csize_t
    funcfield*: sommethodt_436208451

  structsompassportt_436208354* = object
    flags*: Uint64_436208443 ## Generated based on /home/dian/Projects/nsciter/sciter-js-sdk/include/sciter-om-def.h:58:16
    name*: somatomt_436208427
    properties*: ptr sompropertydeft_436208303
    nproperties*: csize_t
    methods*: ptr sommethoddeft_436208245
    nmethods*: csize_t
    itemgetter*: somitemgettert_436208189
    itemsetter*: somitemsettert_436208259
    itemnext*: somitemnextt_436208055
    propgetter*: somanypropgettert_436208335
    propsetter*: somanypropsettert_436208325

  Drawparams_436208356* = structdrawparams_436208283 ## Generated based on /home/dian/Projects/nsciter/sciter-js-sdk/include/sciter-x-behavior.h:407:5
  Sciterapiptr_436208360* = proc (): ptr Isciterapi_436208281 {.cdecl.} ## Generated based on /home/dian/Projects/nsciter/sciter-js-sdk/include/sciter-x-api.h:307:29
  Ginitiallyunowned_436208364* = structgobject_436207950 ## Generated based on /usr/include/glib-2.0/gobject/gobject.h:192:42
  Gtype_436208366* = gsize_436207980 ## Generated based on /usr/include/glib-2.0/gobject/gtype.h:400:41
  structscngraphicscriticalfailure_436208368* = object
    code*: Uint_436208391    ## Generated based on /home/dian/Projects/nsciter/sciter-js-sdk/include/sciter-x-def.h:252:16
    hwnd*: ptr Gtkwidget_436208409

  Sciterxmsg_436208372* = structsciterxmsg_436208021 ## Generated based on /home/dian/Projects/nsciter/sciter-js-sdk/include/sciter-x-msg.h:42:3
  structkeyparams_436208374* = object
    cmd*: Uint_436208391     ## Generated based on /home/dian/Projects/nsciter/sciter-js-sdk/include/sciter-x-behavior.h:216:18
    target*: Helement_436208277
    keycode*: Uint_436208391
    altstate*: Uint_436208391

  Requestparam_436208376* = structrequestparam_436208309 ## Generated based on /home/dian/Projects/nsciter/sciter-js-sdk/include/sciter-x-dom.h:90:32
  structscnkeyboardrequest_436208378* = object
    code*: Uint_436208391    ## Generated based on /home/dian/Projects/nsciter/sciter-js-sdk/include/sciter-x-def.h:262:16
    hwnd*: ptr Gtkwidget_436208409
    keyboardmode*: Uint_436208391

  Lpcwstr_436208380* = ptr Wchar_436208229 ## Generated based on /home/dian/Projects/nsciter/sciter-js-sdk/include/sciter-x-primitives.h:167:24
  Keyvaluecallback_436208382* = proc (a0: Lpvoid_436208209; a1: ptr Value_436208127;
                                      a2: ptr Value_436208127): Sbool_436208261 {.
      cdecl.}                ## Generated based on /home/dian/Projects/nsciter/sciter-js-sdk/include/value.h:234:27
  Scpos_436208384* = Screal_436208213 ## Generated based on /home/dian/Projects/nsciter/sciter-js-sdk/include/sciter-x-graphics.h:49:18
  Lpwstr_436208386* = ptr Wchar_436208229 ## Generated based on /home/dian/Projects/nsciter/sciter-js-sdk/include/sciter-x-primitives.h:168:18
  structsompropertydeft_436208388* = object
    reserved*: pointer       ## Generated based on /home/dian/Projects/nsciter/sciter-js-sdk/include/sciter-om-def.h:31:16
    name*: somatomt_436208427
    getter*: sompropgettert_436208211
    setter*: sompropsettert_436208413

  Uint_436208390* = cuint    ## Generated based on /home/dian/Projects/nsciter/sciter-js-sdk/include/sciter-x-primitives.h:158:24
  Hnode_436208392* = pointer ## Generated based on /home/dian/Projects/nsciter/sciter-js-sdk/include/sciter-x-dom.h:42:18
  Int_436208394* = cint      ## Generated based on /home/dian/Projects/nsciter/sciter-js-sdk/include/sciter-x-primitives.h:159:15
  Gestureparams_436208396* = structgestureparams_436208235 ## Generated based on /home/dian/Projects/nsciter/sciter-js-sdk/include/sciter-x-behavior.h:357:5
  Attributechangeparams_436208398* = structattributechangeparams_436208267 ## Generated based on /home/dian/Projects/nsciter/sciter-js-sdk/include/sciter-x-behavior.h:656:5
  structsomassett_anon0_t* = object
  
  structsomassett_436208402* = object
    anon0*: structsomassett_anon0_t ## Generated based on /home/dian/Projects/nsciter/sciter-js-sdk/include/sciter-om.h:13:16
    isa*: ptr structsomassetclasst_436208313

  Scndataloaded_436208404* = structscndataloaded_436208187 ## Generated based on /home/dian/Projects/nsciter/sciter-js-sdk/include/sciter-x-def.h:207:3
  Gtkwidget_436208408* = structgtkwidget_436208077 ## Generated based on /usr/include/gtk-3.0/gtk/gtktypes.h:46:40
  Focusparams_436208410* = structfocusparams_436208291 ## Generated based on /home/dian/Projects/nsciter/sciter-js-sdk/include/sciter-x-behavior.h:258:5
  sompropsettert_436208412* = proc (a0: ptr somassett_436208006;
                                    a1: ptr Scitervalue_436208037): Sbool_436208261 {.
      cdecl.}                ## Generated based on /home/dian/Projects/nsciter/sciter-js-sdk/include/sciter-om-def.h:22:16
  Lpscitercallbacknotification_436208416* = ptr Scitercallbacknotification_436208449 ## Generated based on /home/dian/Projects/nsciter/sciter-js-sdk/include/sciter-x-def.h:160:40
  Lpscninvalidaterect_436208420* = ptr Scninvalidaterect_436208095 ## Generated based on /home/dian/Projects/nsciter/sciter-js-sdk/include/sciter-x-def.h:278:30
  Scitergraphics_436208422* = structscitergraphics ## Generated based on /home/dian/Projects/nsciter/sciter-js-sdk/include/sciter-x-behavior.h:398:34
  Lpelementeventproctypedef_436208424* = ptr Elementeventproc_436208249 ## Generated based on /home/dian/Projects/nsciter/sciter-js-sdk/include/sciter-x-behavior.h:70:29
  somatomt_436208426* = Uint64_436208443 ## Generated based on /home/dian/Projects/nsciter/sciter-js-sdk/include/sciter-om.h:11:16
  Lppoint_436208434* = ptr structtagpoint_436208315 ## Generated based on /home/dian/Projects/nsciter/sciter-js-sdk/include/sciter-x-primitives.h:193:22
  structsciterrequestapi_436208438* = object
    Requestuse*: proc (a0: Hrequest_436207988): Requestresult_436208139 {.cdecl.} ## Generated based on /home/dian/Projects/nsciter/sciter-js-sdk/include/sciter-x-request.h:73:8
    Requestunuse*: proc (a0: Hrequest_436207988): Requestresult_436208139 {.
        cdecl.}
    Requesturl*: proc (a0: Hrequest_436207988; a1: ptr Lpcstrreceiver_436208067;
                       a2: Lpvoid_436208209): Requestresult_436208139 {.cdecl.}
    Requestcontenturl*: proc (a0: Hrequest_436207988; a1: ptr Lpcstrreceiver_436208067;
                              a2: Lpvoid_436208209): Requestresult_436208139 {.
        cdecl.}
    Requestgetrequesttype*: proc (a0: Hrequest_436207988; a1: ptr Requestrqtype_436208437): Requestresult_436208139 {.
        cdecl.}
    Requestgetrequesteddatatype*: proc (a0: Hrequest_436207988;
                                        a1: ptr Sciterresourcetype_436208445): Requestresult_436208139 {.
        cdecl.}
    Requestgetreceiveddatatype*: proc (a0: Hrequest_436207988;
                                       a1: ptr Lpcstrreceiver_436208067;
                                       a2: Lpvoid_436208209): Requestresult_436208139 {.
        cdecl.}
    Requestgetnumberofparameters*: proc (a0: Hrequest_436207988; a1: ptr Uint_436208391): Requestresult_436208139 {.
        cdecl.}
    Requestgetnthparametername*: proc (a0: Hrequest_436207988; a1: Uint_436208391;
                                       a2: ptr Lpcwstrreceiver_436208029;
                                       a3: Lpvoid_436208209): Requestresult_436208139 {.
        cdecl.}
    Requestgetnthparametervalue*: proc (a0: Hrequest_436207988; a1: Uint_436208391;
                                        a2: ptr Lpcwstrreceiver_436208029;
                                        a3: Lpvoid_436208209): Requestresult_436208139 {.
        cdecl.}
    Requestgettimes*: proc (a0: Hrequest_436207988; a1: ptr Uint_436208391;
                            a2: ptr Uint_436208391): Requestresult_436208139 {.
        cdecl.}
    Requestgetnumberofrqheaders*: proc (a0: Hrequest_436207988; a1: ptr Uint_436208391): Requestresult_436208139 {.
        cdecl.}
    Requestgetnthrqheadername*: proc (a0: Hrequest_436207988; a1: Uint_436208391;
                                      a2: ptr Lpcwstrreceiver_436208029;
                                      a3: Lpvoid_436208209): Requestresult_436208139 {.
        cdecl.}
    Requestgetnthrqheadervalue*: proc (a0: Hrequest_436207988; a1: Uint_436208391;
                                       a2: ptr Lpcwstrreceiver_436208029;
                                       a3: Lpvoid_436208209): Requestresult_436208139 {.
        cdecl.}
    Requestgetnumberofrspheaders*: proc (a0: Hrequest_436207988; a1: ptr Uint_436208391): Requestresult_436208139 {.
        cdecl.}
    Requestgetnthrspheadername*: proc (a0: Hrequest_436207988; a1: Uint_436208391;
                                       a2: ptr Lpcwstrreceiver_436208029;
                                       a3: Lpvoid_436208209): Requestresult_436208139 {.
        cdecl.}
    Requestgetnthrspheadervalue*: proc (a0: Hrequest_436207988; a1: Uint_436208391;
                                        a2: ptr Lpcwstrreceiver_436208029;
                                        a3: Lpvoid_436208209): Requestresult_436208139 {.
        cdecl.}
    Requestgetcompletionstatus*: proc (a0: Hrequest_436207988;
                                       a1: ptr Requeststate_436208433;
                                       a2: ptr Uint_436208391): Requestresult_436208139 {.
        cdecl.}
    Requestgetproxyhost*: proc (a0: Hrequest_436207988; a1: ptr Lpcstrreceiver_436208067;
                                a2: Lpvoid_436208209): Requestresult_436208139 {.
        cdecl.}
    Requestgetproxyport*: proc (a0: Hrequest_436207988; a1: ptr Uint_436208391): Requestresult_436208139 {.
        cdecl.}
    Requestsetsucceeded*: proc (a0: Hrequest_436207988; a1: Uint_436208391;
                                a2: Lpcbyte_436207944; a3: Uint_436208391): Requestresult_436208139 {.
        cdecl.}
    Requestsetfailed*: proc (a0: Hrequest_436207988; a1: Uint_436208391;
                             a2: Lpcbyte_436207944; a3: Uint_436208391): Requestresult_436208139 {.
        cdecl.}
    Requestappenddatachunk*: proc (a0: Hrequest_436207988; a1: Lpcbyte_436207944;
                                   a2: Uint_436208391): Requestresult_436208139 {.
        cdecl.}
    Requestsetrqheader*: proc (a0: Hrequest_436207988; a1: Lpcwstr_436208381;
                               a2: Lpcwstr_436208381): Requestresult_436208139 {.
        cdecl.}
    Requestsetrspheader*: proc (a0: Hrequest_436207988; a1: Lpcwstr_436208381;
                                a2: Lpcwstr_436208381): Requestresult_436208139 {.
        cdecl.}
    Requestsetreceiveddatatype*: proc (a0: Hrequest_436207988; a1: Lpcstr_436208149): Requestresult_436208139 {.
        cdecl.}
    Requestsetreceiveddataencoding*: proc (a0: Hrequest_436207988; a1: Lpcstr_436208149): Requestresult_436208139 {.
        cdecl.}
    Requestgetdata*: proc (a0: Hrequest_436207988; a1: ptr Lpcbytereceiver_436208043;
                           a2: Lpvoid_436208209): Requestresult_436208139 {.
        cdecl.}

  structurldata_436208440* = object
    requestedurl*: Lpcstr_436208149 ## Generated based on /home/dian/Projects/nsciter/sciter-js-sdk/include/sciter-x-def.h:559:16
    realurl*: Lpcstr_436208149
    requestedtype*: Sciterresourcetype_436208445
    httpheaders*: Lpcstr_436208149
    mimetype*: Lpcstr_436208149
    encoding*: Lpcstr_436208149
    data*: Lpcbyte_436207944
    datalength*: Uint_436208391

  Uint64_436208442* = culonglong ## Generated based on /home/dian/Projects/nsciter/sciter-js-sdk/include/sciter-x-primitives.h:162:30
  structscriptingmethodparams_436208446* = object
    name*: Lpcstr_436208149  ## Generated based on /home/dian/Projects/nsciter/sciter-js-sdk/include/sciter-x-behavior.h:609:18
    argv*: ptr Scitervalue_436208037
    argc*: Uint_436208391
    result*: Scitervalue_436208037

  Scitercallbacknotification_436208448* = structscitercallbacknotification_436208123 ## Generated based on /home/dian/Projects/nsciter/sciter-js-sdk/include/sciter-x-def.h:158:3
  sommethodt_436208450* = proc (a0: ptr somassett_436208006; a1: Uint_436208391;
                                a2: ptr Scitervalue_436208037;
                                a3: ptr Scitervalue_436208037): Sbool_436208261 {.
      cdecl.}                ## Generated based on /home/dian/Projects/nsciter/sciter-js-sdk/include/sciter-om-def.h:28:16
  Lpcvoid_436208452* = pointer ## Generated based on /home/dian/Projects/nsciter/sciter-js-sdk/include/sciter-x-primitives.h:174:23
  structtagrect_436208454* = object
    left*: Int_436208395     ## Generated based on /home/dian/Projects/nsciter/sciter-js-sdk/include/sciter-x-primitives.h:180:18
    top*: Int_436208395
    right*: Int_436208395
    bottom*: Int_436208395

  Sciterxmsgcreate_436208456* = structsciterxmsgcreate_436208307 ## Generated based on /home/dian/Projects/nsciter/sciter-js-sdk/include/sciter-x-msg.h:53:3
  Hgfx_436207930* = (when declared(Hgfx):
    Hgfx
   else:
    Hgfx_436207929)
  Valueunittypestring_436207928* = (when declared(Valueunittypestring):
    Valueunittypestring
   else:
    Valueunittypestring_436207926)
  structsciterxmsgpaint_436207932* = (when declared(structsciterxmsgpaint):
    structsciterxmsgpaint
   else:
    structsciterxmsgpaint_436207931)
  sompassportflags_436208199* = (when declared(sompassportflags):
    sompassportflags
   else:
    sompassportflags_436208198)
  sompassportt_436208201* = (when declared(sompassportt):
    sompassportt
   else:
    sompassportt_436208200)
  Somevents_436207934* = (when declared(Somevents):
    Somevents
   else:
    Somevents_436207933)
  Scriptingmethodparams_436208205* = (when declared(Scriptingmethodparams):
    Scriptingmethodparams
   else:
    Scriptingmethodparams_436208204)
  Int32_436208203* = (when declared(Int32):
    Int32
   else:
    Int32_436208202)
  Sciterxmsgsize_436208207* = (when declared(Sciterxmsgsize):
    Sciterxmsgsize
   else:
    Sciterxmsgsize_436208206)
  Lpvoid_436208209* = (when declared(Lpvoid):
    Lpvoid
   else:
    Lpvoid_436208208)
  sompropgettert_436208211* = (when declared(sompropgettert):
    sompropgettert
   else:
    sompropgettert_436208210)
  Graphinresult_436207936* = (when declared(Graphinresult):
    Graphinresult
   else:
    Graphinresult_436207935)
  Screal_436208213* = (when declared(Screal):
    Screal
   else:
    Screal_436208212)
  structsccolorstop_436208215* = (when declared(structsccolorstop):
    structsccolorstop
   else:
    structsccolorstop_436208214)
  Nodetype_436207938* = (when declared(Nodetype):
    Nodetype
   else:
    Nodetype_436207937)
  Scnkeyboardrequest_436208217* = (when declared(Scnkeyboardrequest):
    Scnkeyboardrequest
   else:
    Scnkeyboardrequest_436208216)
  Size_436207940* = (when declared(Size):
    Size
   else:
    Size_436207939)
  Hrange_436208219* = (when declared(Hrange):
    Hrange
   else:
    Hrange_436208218)
  Lpcrect_436208221* = (when declared(Lpcrect):
    Lpcrect
   else:
    Lpcrect_436208220)
  Lpscitergraphicsapi_436207942* = (when declared(Lpscitergraphicsapi):
    Lpscitergraphicsapi
   else:
    Lpscitergraphicsapi_436207941)
  structisciterapi_436208223* = (when declared(structisciterapi):
    structisciterapi
   else:
    structisciterapi_436208222)
  Lpcbyte_436207944* = (when declared(Lpcbyte):
    Lpcbyte
   else:
    Lpcbyte_436207943)
  Scriptruntimefeatures_436208225* = (when declared(Scriptruntimefeatures):
    Scriptruntimefeatures
   else:
    Scriptruntimefeatures_436208224)
  Scnpostednotification_436207946* = (when declared(Scnpostednotification):
    Scnpostednotification
   else:
    Scnpostednotification_436207945)
  Sciterlinejointype_436207948* = (when declared(Sciterlinejointype):
    Sciterlinejointype
   else:
    Sciterlinejointype_436207947)
  structsciterxmsgsize_436208227* = (when declared(structsciterxmsgsize):
    structsciterxmsgsize
   else:
    structsciterxmsgsize_436208226)
  structgobject_436207950* = (when declared(structgobject):
    structgobject
   else:
    structgobject_436207949)
  Wchar_436208229* = (when declared(Wchar):
    Wchar
   else:
    Wchar_436208228)
  Focuscmdtype_436207952* = (when declared(Focuscmdtype):
    Focuscmdtype
   else:
    Focuscmdtype_436207951)
  structvalueparams_436207954* = (when declared(structvalueparams):
    structvalueparams
   else:
    structvalueparams_436207953)
  Scrollparams_436208231* = (when declared(Scrollparams):
    Scrollparams
   else:
    Scrollparams_436208230)
  imagewritefunction_436208233* = (when declared(imagewritefunction):
    imagewritefunction
   else:
    imagewritefunction_436208232)
  structgestureparams_436208235* = (when declared(structgestureparams):
    structgestureparams
   else:
    structgestureparams_436208234)
  structgtypeclass_436208237* = (when declared(structgtypeclass):
    structgtypeclass
   else:
    structgtypeclass_436208236)
  structbehavioreventparams_436207956* = (when declared(
      structbehavioreventparams):
    structbehavioreventparams
   else:
    structbehavioreventparams_436207955)
  Scrollbarpart_436207958* = (when declared(Scrollbarpart):
    Scrollbarpart
   else:
    Scrollbarpart_436207957)
  Isemptyparams_436208239* = (when declared(Isemptyparams):
    Isemptyparams
   else:
    Isemptyparams_436208238)
  structgtypeinstance_436208241* = (when declared(structgtypeinstance):
    structgtypeinstance
   else:
    structgtypeinstance_436208240)
  structisemptyparams_436208247* = (when declared(structisemptyparams):
    structisemptyparams
   else:
    structisemptyparams_436208246)
  Sciterappcmd_436207960* = (when declared(Sciterappcmd):
    Sciterappcmd
   else:
    Sciterappcmd_436207959)
  Uintptr_436208243* = (when declared(Uintptr):
    Uintptr
   else:
    Uintptr_436208242)
  sommethoddeft_436208245* = (when declared(sommethoddeft):
    sommethoddeft
   else:
    sommethoddeft_436208244)
  Psize_436207962* = (when declared(Psize):
    Psize
   else:
    Psize_436207961)
  Scnloaddata_436207964* = (when declared(Scnloaddata):
    Scnloaddata
   else:
    Scnloaddata_436207963)
  Elementeventproc_436208249* = (when declared(Elementeventproc):
    Elementeventproc
   else:
    Elementeventproc_436208248)
  Scnattachbehavior_436208251* = (when declared(Scnattachbehavior):
    Scnattachbehavior
   else:
    Scnattachbehavior_436208250)
  Drawpathmode_436207966* = (when declared(Drawpathmode):
    Drawpathmode
   else:
    Drawpathmode_436207965)
  Urldata_436208253* = (when declared(Urldata):
    Urldata
   else:
    Urldata_436208252)
  Debugoutputproc_436208255* = (when declared(Debugoutputproc):
    Debugoutputproc
   else:
    Debugoutputproc_436208254)
  Gtypeinstance_436208257* = (when declared(Gtypeinstance):
    Gtypeinstance
   else:
    Gtypeinstance_436208256)
  somitemsettert_436208259* = (when declared(somitemsettert):
    somitemsettert
   else:
    somitemsettert_436208258)
  Lpscnattachbehavior_436207968* = (when declared(Lpscnattachbehavior):
    Lpscnattachbehavior
   else:
    Lpscnattachbehavior_436207967)
  Sbool_436208261* = (when declared(Sbool):
    Sbool
   else:
    Sbool_436208260)
  Nodeinstarget_436207970* = (when declared(Nodeinstarget):
    Nodeinstarget
   else:
    Nodeinstarget_436207969)
  Elementareas_436208263* = (when declared(Elementareas):
    Elementareas
   else:
    Elementareas_436208262)
  Keyboardstates_436208265* = (when declared(Keyboardstates):
    Keyboardstates
   else:
    Keyboardstates_436208264)
  structattributechangeparams_436208267* = (when declared(
      structattributechangeparams):
    structattributechangeparams
   else:
    structattributechangeparams_436208266)
  guint_436207972* = (when declared(guint):
    guint
   else:
    guint_436207971)
  Sciterhostcallback_436208269* = (when declared(Sciterhostcallback):
    Sciterhostcallback
   else:
    Sciterhostcallback_436208268)
  Sciterxmsgcode_436208271* = (when declared(Sciterxmsgcode):
    Sciterxmsgcode
   else:
    Sciterxmsgcode_436208270)
  gsize_436207980* = (when declared(gsize):
    gsize
   else:
    gsize_436207979)
  Sciterwindowcmd_436207976* = (when declared(Sciterwindowcmd):
    Sciterwindowcmd
   else:
    Sciterwindowcmd_436207975)
  Byte_436207974* = (when declared(Byte):
    Byte
   else:
    Byte_436207973)
  Keyparams_436207978* = (when declared(Keyparams):
    Keyparams
   else:
    Keyparams_436207977)
  Valueresult_436208273* = (when declared(Valueresult):
    Valueresult
   else:
    Valueresult_436208272)
  Valueunittypeobject_436207982* = (when declared(Valueunittypeobject):
    Valueunittypeobject
   else:
    Valueunittypeobject_436207981)
  Helement_436208277* = (when declared(Helement):
    Helement
   else:
    Helement_436208276)
  Scitercreatewindowflags_436207984* = (when declared(Scitercreatewindowflags):
    Scitercreatewindowflags
   else:
    Scitercreatewindowflags_436207983)
  Dataarrivedparams_436208279* = (when declared(Dataarrivedparams):
    Dataarrivedparams
   else:
    Dataarrivedparams_436208278)
  Gesturestate_436207986* = (when declared(Gesturestate):
    Gesturestate
   else:
    Gesturestate_436207985)
  Isciterapi_436208281* = (when declared(Isciterapi):
    Isciterapi
   else:
    Isciterapi_436208280)
  structdrawparams_436208283* = (when declared(structdrawparams):
    structdrawparams
   else:
    structdrawparams_436208282)
  Hrequest_436207988* = (when declared(Hrequest):
    Hrequest
   else:
    Hrequest_436207987)
  Sciterelementcallback_436207990* = (when declared(Sciterelementcallback):
    Sciterelementcallback
   else:
    Sciterelementcallback_436207989)
  Sciterrtoptions_436208000* = (when declared(Sciterrtoptions):
    Sciterrtoptions
   else:
    Sciterrtoptions_436207999)
  structscnenginedestroyed_436207992* = (when declared(structscnenginedestroyed):
    structscnenginedestroyed
   else:
    structscnenginedestroyed_436207991)
  Sciterxmsgfocus_436208002* = (when declared(Sciterxmsgfocus):
    Sciterxmsgfocus
   else:
    Sciterxmsgfocus_436208001)
  Timerparams_436207994* = (when declared(Timerparams):
    Timerparams
   else:
    Timerparams_436207993)
  Himg_436207996* = (when declared(Himg):
    Himg
   else:
    Himg_436207995)
  Sciterxmsgpaint_436208004* = (when declared(Sciterxmsgpaint):
    Sciterxmsgpaint
   else:
    Sciterxmsgpaint_436208003)
  Keyevents_436207998* = (when declared(Keyevents):
    Keyevents
   else:
    Keyevents_436207997)
  imagepaintfunction_436208285* = (when declared(imagepaintfunction):
    imagepaintfunction
   else:
    imagepaintfunction_436208284)
  Lpscnloaddata_436208287* = (when declared(Lpscnloaddata):
    Lpscnloaddata
   else:
    Lpscnloaddata_436208286)
  Nativefunctorrelease_436208289* = (when declared(Nativefunctorrelease):
    Nativefunctorrelease
   else:
    Nativefunctorrelease_436208288)
  structfocusparams_436208291* = (when declared(structfocusparams):
    structfocusparams
   else:
    structfocusparams_436208290)
  somassett_436208006* = (when declared(somassett):
    somassett
   else:
    somassett_436208005)
  Exchangecmd_436208008* = (when declared(Exchangecmd):
    Exchangecmd
   else:
    Exchangecmd_436208007)
  Sccolorstop_436208010* = (when declared(Sccolorstop):
    Sccolorstop
   else:
    Sccolorstop_436208009)
  Exchangeparams_436208019* = (when declared(Exchangeparams):
    Exchangeparams
   else:
    Exchangeparams_436208018)
  Sciterbehaviorfactory_436208293* = (when declared(Sciterbehaviorfactory):
    Sciterbehaviorfactory
   else:
    Sciterbehaviorfactory_436208292)
  structsciterxmsg_436208021* = (when declared(structsciterxmsg):
    structsciterxmsg
   else:
    structsciterxmsg_436208020)
  Nativefunctorinvoke_436208023* = (when declared(Nativefunctorinvoke):
    Nativefunctorinvoke
   else:
    Nativefunctorinvoke_436208022)
  Sciterxmsgheartbit_436208295* = (when declared(Sciterxmsgheartbit):
    Sciterxmsgheartbit
   else:
    Sciterxmsgheartbit_436208294)
  Setelementhtml_436208297* = (when declared(Setelementhtml):
    Setelementhtml
   else:
    Setelementhtml_436208296)
  structscitergraphicsapi_436208025* = (when declared(structscitergraphicsapi):
    structscitergraphicsapi
   else:
    structscitergraphicsapi_436208024)
  structinitializationparams_436208031* = (when declared(
      structinitializationparams):
    structinitializationparams
   else:
    structinitializationparams_436208030)
  Eventgroups_436208027* = (when declared(Eventgroups):
    Eventgroups
   else:
    Eventgroups_436208026)
  Lpcwstrreceiver_436208029* = (when declared(Lpcwstrreceiver):
    Lpcwstrreceiver
   else:
    Lpcwstrreceiver_436208028)
  Scnenginedestroyed_436208301* = (when declared(Scnenginedestroyed):
    Scnenginedestroyed
   else:
    Scnenginedestroyed_436208300)
  structsomparams_436208033* = (when declared(structsomparams):
    structsomparams
   else:
    structsomparams_436208032)
  Point_436208299* = (when declared(Point):
    Point
   else:
    Point_436208298)
  Lpscndataloaded_436208035* = (when declared(Lpscndataloaded):
    Lpscndataloaded
   else:
    Lpscndataloaded_436208034)
  sompropertydeft_436208303* = (when declared(sompropertydeft):
    sompropertydeft
   else:
    sompropertydeft_436208302)
  Scitervalue_436208037* = (when declared(Scitervalue):
    Scitervalue
   else:
    Scitervalue_436208036)
  Outputsubsytems_436208305* = (when declared(Outputsubsytems):
    Outputsubsytems
   else:
    Outputsubsytems_436208304)
  structsciterxmsgcreate_436208307* = (when declared(structsciterxmsgcreate):
    structsciterxmsgcreate
   else:
    structsciterxmsgcreate_436208306)
  Mouseparams_436208039* = (when declared(Mouseparams):
    Mouseparams
   else:
    Mouseparams_436208038)
  structsciterxmsgkey_436208041* = (when declared(structsciterxmsgkey):
    structsciterxmsgkey
   else:
    structsciterxmsgkey_436208040)
  structrequestparam_436208309* = (when declared(structrequestparam):
    structrequestparam
   else:
    structrequestparam_436208308)
  Focusevents_436208311* = (when declared(Focusevents):
    Focusevents
   else:
    Focusevents_436208310)
  Lpcbytereceiver_436208043* = (when declared(Lpcbytereceiver):
    Lpcbytereceiver
   else:
    Lpcbytereceiver_436208042)
  Drawevents_436208045* = (when declared(Drawevents):
    Drawevents
   else:
    Drawevents_436208044)
  Sciterxmsgdestroy_436208047* = (when declared(Sciterxmsgdestroy):
    Sciterxmsgdestroy
   else:
    Sciterxmsgdestroy_436208046)
  structsomassetclasst_436208313* = (when declared(structsomassetclasst):
    structsomassetclasst
   else:
    structsomassetclasst_436208312)
  Scangle_436208049* = (when declared(Scangle):
    Scangle
   else:
    Scangle_436208048)
  structtagpoint_436208315* = (when declared(structtagpoint):
    structtagpoint
   else:
    structtagpoint_436208314)
  Gtkwidgetprivate_436208317* = (when declared(Gtkwidgetprivate):
    Gtkwidgetprivate
   else:
    Gtkwidgetprivate_436208316)
  Sciterpainttargettype_436208319* = (when declared(Sciterpainttargettype):
    Sciterpainttargettype
   else:
    Sciterpainttargettype_436208318)
  Lpscnpostednotification_436208051* = (when declared(Lpscnpostednotification):
    Lpscnpostednotification
   else:
    Lpscnpostednotification_436208050)
  Hsarchive_436208321* = (when declared(Hsarchive):
    Hsarchive
   else:
    Hsarchive_436208320)
  Sciterxmsgkey_436208323* = (when declared(Sciterxmsgkey):
    Sciterxmsgkey
   else:
    Sciterxmsgkey_436208322)
  Lpscnkeyboardrequest_436208053* = (when declared(Lpscnkeyboardrequest):
    Lpscnkeyboardrequest
   else:
    Lpscnkeyboardrequest_436208052)
  somanypropsettert_436208325* = (when declared(somanypropsettert):
    somanypropsettert
   else:
    somanypropsettert_436208324)
  somitemnextt_436208055* = (when declared(somitemnextt):
    somitemnextt
   else:
    somitemnextt_436208054)
  Ddmodes_436208057* = (when declared(Ddmodes):
    Ddmodes
   else:
    Ddmodes_436208056)
  Sccolor_436208059* = (when declared(Sccolor):
    Sccolor
   else:
    Sccolor_436208058)
  structtimerparams_436208061* = (when declared(structtimerparams):
    structtimerparams
   else:
    structtimerparams_436208060)
  Initializationevents_436208063* = (when declared(Initializationevents):
    Initializationevents
   else:
    Initializationevents_436208062)
  Somparams_436208065* = (when declared(Somparams):
    Somparams
   else:
    Somparams_436208064)
  structmouseparams_436208327* = (when declared(structmouseparams):
    structmouseparams
   else:
    structmouseparams_436208326)
  Lpcstrreceiver_436208067* = (when declared(Lpcstrreceiver):
    Lpcstrreceiver
   else:
    Lpcstrreceiver_436208066)
  Valueparams_436208329* = (when declared(Valueparams):
    Valueparams
   else:
    Valueparams_436208328)
  Valueunittype_436208331* = (when declared(Valueunittype):
    Valueunittype
   else:
    Valueunittype_436208330)
  structhposition_436208333* = (when declared(structhposition):
    structhposition
   else:
    structhposition_436208332)
  somanypropgettert_436208335* = (when declared(somanypropgettert):
    somanypropgettert
   else:
    somanypropgettert_436208334)
  structsciterxmsgmouse_436208069* = (when declared(structsciterxmsgmouse):
    structsciterxmsgmouse
   else:
    structsciterxmsgmouse_436208068)
  Methodparams_436208071* = (when declared(Methodparams):
    Methodparams
   else:
    Methodparams_436208070)
  structscrollparams_436208073* = (when declared(structscrollparams):
    structscrollparams
   else:
    structscrollparams_436208072)
  structsciterxmsgresolution_436208075* = (when declared(
      structsciterxmsgresolution):
    structsciterxmsgresolution
   else:
    structsciterxmsgresolution_436208074)
  Valuestringcvttype_436208337* = (when declared(Valuestringcvttype):
    Valuestringcvttype
   else:
    Valuestringcvttype_436208336)
  Sciterxmsgmouse_436208339* = (when declared(Sciterxmsgmouse):
    Sciterxmsgmouse
   else:
    Sciterxmsgmouse_436208338)
  structgtkwidget_436208077* = (when declared(structgtkwidget):
    structgtkwidget
   else:
    structgtkwidget_436208076)
  Cursortype_436208341* = (when declared(Cursortype):
    Cursortype
   else:
    Cursortype_436208340)
  Scngraphicscriticalfailure_436208079* = (when declared(
      Scngraphicscriticalfailure):
    Scngraphicscriticalfailure
   else:
    Scngraphicscriticalfailure_436208078)
  Lpelementeventproc_436208081* = (when declared(Lpelementeventproc):
    Lpelementeventproc
   else:
    Lpelementeventproc_436208080)
  structsciterxmsgdestroy_436208083* = (when declared(structsciterxmsgdestroy):
    structsciterxmsgdestroy
   else:
    structsciterxmsgdestroy_436208082)
  Sciterimageencoding_436208085* = (when declared(Sciterimageencoding):
    Sciterimageencoding
   else:
    Sciterimageencoding_436208084)
  Sciterlibraryinitfunc_436208087* = (when declared(Sciterlibraryinitfunc):
    Sciterlibraryinitfunc
   else:
    Sciterlibraryinitfunc_436208086)
  Int64_436208089* = (when declared(Int64):
    Int64
   else:
    Int64_436208088)
  Sciterxmsgresolution_436208091* = (when declared(Sciterxmsgresolution):
    Sciterxmsgresolution
   else:
    Sciterxmsgresolution_436208090)
  Rect_436208093* = (when declared(Rect):
    Rect
   else:
    Rect_436208092)
  Scninvalidaterect_436208095* = (when declared(Scninvalidaterect):
    Scninvalidaterect
   else:
    Scninvalidaterect_436208094)
  Sciterwindowstate_436208343* = (when declared(Sciterwindowstate):
    Sciterwindowstate
   else:
    Sciterwindowstate_436208342)
  Requesttype_436208097* = (when declared(Requesttype):
    Requesttype
   else:
    Requesttype_436208096)
  Scrollsource_436208099* = (when declared(Scrollsource):
    Scrollsource
   else:
    Scrollsource_436208098)
  Scdim_436208101* = (when declared(Scdim):
    Scdim
   else:
    Scdim_436208100)
  structscnpostednotification_436208103* = (when declared(
      structscnpostednotification):
    structscnpostednotification
   else:
    structscnpostednotification_436208102)
  Clickreason_436208105* = (when declared(Clickreason):
    Clickreason
   else:
    Clickreason_436208104)
  Gdata_436208345* = (when declared(Gdata):
    Gdata
   else:
    Gdata_436208344)
  Valuetype_436208347* = (when declared(Valuetype):
    Valuetype
   else:
    Valuetype_436208346)
  structdataarrivedparams_436208107* = (when declared(structdataarrivedparams):
    structdataarrivedparams
   else:
    structdataarrivedparams_436208106)
  structscnattachbehavior_436208109* = (when declared(structscnattachbehavior):
    structscnattachbehavior
   else:
    structscnattachbehavior_436208108)
  Gtypeclass_436208349* = (when declared(Gtypeclass):
    Gtypeclass
   else:
    Gtypeclass_436208348)
  structsommethoddeft_436208351* = (when declared(structsommethoddeft):
    structsommethoddeft
   else:
    structsommethoddeft_436208350)
  Gesturetypeflags_436208353* = (when declared(Gesturetypeflags):
    Gesturetypeflags
   else:
    Gesturetypeflags_436208352)
  Outputseverity_436208111* = (when declared(Outputseverity):
    Outputseverity
   else:
    Outputseverity_436208110)
  structsciterxmsgfocus_436208113* = (when declared(structsciterxmsgfocus):
    structsciterxmsgfocus
   else:
    structsciterxmsgfocus_436208112)
  Mousebuttons_436208115* = (when declared(Mousebuttons):
    Mousebuttons
   else:
    Mousebuttons_436208114)
  structsompassportt_436208355* = (when declared(structsompassportt):
    structsompassportt
   else:
    structsompassportt_436208354)
  Drawparams_436208357* = (when declared(Drawparams):
    Drawparams
   else:
    Drawparams_436208356)
  Scloaddatareturncodes_436208359* = (when declared(Scloaddatareturncodes):
    Scloaddatareturncodes
   else:
    Scloaddatareturncodes_436208358)
  Sciterapiptr_436208361* = (when declared(Sciterapiptr):
    Sciterapiptr
   else:
    Sciterapiptr_436208360)
  Elementbitmapreceiver_436208117* = (when declared(Elementbitmapreceiver):
    Elementbitmapreceiver
   else:
    Elementbitmapreceiver_436208116)
  Sciterscrollflags_436208119* = (when declared(Sciterscrollflags):
    Sciterscrollflags
   else:
    Sciterscrollflags_436208118)
  Lpsciterrequestapi_436208121* = (when declared(Lpsciterrequestapi):
    Lpsciterrequestapi
   else:
    Lpsciterrequestapi_436208120)
  Behaviorevents_436208363* = (when declared(Behaviorevents):
    Behaviorevents
   else:
    Behaviorevents_436208362)
  structscitercallbacknotification_436208123* = (when declared(
      structscitercallbacknotification):
    structscitercallbacknotification
   else:
    structscitercallbacknotification_436208122)
  Lpscngraphicscriticalfailure_436208125* = (when declared(
      Lpscngraphicscriticalfailure):
    Lpscngraphicscriticalfailure
   else:
    Lpscngraphicscriticalfailure_436208124)
  Ginitiallyunowned_436208365* = (when declared(Ginitiallyunowned):
    Ginitiallyunowned
   else:
    Ginitiallyunowned_436208364)
  Value_436208127* = (when declared(Value):
    Value
   else:
    Value_436208126)
  Lpuint_436208129* = (when declared(Lpuint):
    Lpuint
   else:
    Lpuint_436208128)
  Valueunitundefined_436208131* = (when declared(Valueunitundefined):
    Valueunitundefined
   else:
    Valueunitundefined_436208130)
  Gtype_436208367* = (when declared(Gtype):
    Gtype
   else:
    Gtype_436208366)
  structscngraphicscriticalfailure_436208369* = (when declared(
      structscngraphicscriticalfailure):
    structscngraphicscriticalfailure
   else:
    structscngraphicscriticalfailure_436208368)
  Editchangedreason_436208133* = (when declared(Editchangedreason):
    Editchangedreason
   else:
    Editchangedreason_436208132)
  structscninvalidaterect_436208135* = (when declared(structscninvalidaterect):
    structscninvalidaterect
   else:
    structscninvalidaterect_436208134)
  Contentchangebits_436208371* = (when declared(Contentchangebits):
    Contentchangebits
   else:
    Contentchangebits_436208370)
  Sciterxmsg_436208373* = (when declared(Sciterxmsg):
    Sciterxmsg
   else:
    Sciterxmsg_436208372)
  somassetclasst_436208137* = (when declared(somassetclasst):
    somassetclasst
   else:
    somassetclasst_436208136)
  structkeyparams_436208375* = (when declared(structkeyparams):
    structkeyparams
   else:
    structkeyparams_436208374)
  Requestresult_436208139* = (when declared(Requestresult):
    Requestresult
   else:
    Requestresult_436208138)
  Requestparam_436208377* = (when declared(Requestparam):
    Requestparam
   else:
    Requestparam_436208376)
  Htext_436208141* = (when declared(Htext):
    Htext
   else:
    Htext_436208140)
  structscnkeyboardrequest_436208379* = (when declared(structscnkeyboardrequest):
    structscnkeyboardrequest
   else:
    structscnkeyboardrequest_436208378)
  Lpcwstr_436208381* = (when declared(Lpcwstr):
    Lpcwstr
   else:
    Lpcwstr_436208380)
  Keyvaluecallback_436208383* = (when declared(Keyvaluecallback):
    Keyvaluecallback
   else:
    Keyvaluecallback_436208382)
  structtagsize_436208143* = (when declared(structtagsize):
    structtagsize
   else:
    structtagsize_436208142)
  Scpos_436208385* = (when declared(Scpos):
    Scpos
   else:
    Scpos_436208384)
  Lpscnenginedestroyed_436208145* = (when declared(Lpscnenginedestroyed):
    Lpscnenginedestroyed
   else:
    Lpscnenginedestroyed_436208144)
  Lpwstr_436208387* = (when declared(Lpwstr):
    Lpwstr
   else:
    Lpwstr_436208386)
  structsompropertydeft_436208389* = (when declared(structsompropertydeft):
    structsompropertydeft
   else:
    structsompropertydeft_436208388)
  Uint_436208391* = (when declared(Uint):
    Uint
   else:
    Uint_436208390)
  Hnode_436208393* = (when declared(Hnode):
    Hnode
   else:
    Hnode_436208392)
  Int_436208395* = (when declared(Int):
    Int
   else:
    Int_436208394)
  Gestureparams_436208397* = (when declared(Gestureparams):
    Gestureparams
   else:
    Gestureparams_436208396)
  Lprect_436208147* = (when declared(Lprect):
    Lprect
   else:
    Lprect_436208146)
  Lpcstr_436208149* = (when declared(Lpcstr):
    Lpcstr
   else:
    Lpcstr_436208148)
  Sciterlinecaptype_436208153* = (when declared(Sciterlinecaptype):
    Sciterlinecaptype
   else:
    Sciterlinecaptype_436208152)
  Elementcomparator_436208151* = (when declared(Elementcomparator):
    Elementcomparator
   else:
    Elementcomparator_436208150)
  Attributechangeparams_436208399* = (when declared(Attributechangeparams):
    Attributechangeparams
   else:
    Attributechangeparams_436208398)
  Valueunittypedate_436208155* = (when declared(Valueunittypedate):
    Valueunittypedate
   else:
    Valueunittypedate_436208154)
  structmethodparams_436208163* = (when declared(structmethodparams):
    structmethodparams
   else:
    structmethodparams_436208162)
  Hposition_436208157* = (when declared(Hposition):
    Hposition
   else:
    Hposition_436208156)
  Lpsize_436208159* = (when declared(Lpsize):
    Lpsize
   else:
    Lpsize_436208158)
  Char_436208161* = (when declared(Char):
    Char
   else:
    Char_436208160)
  Gfxlayer_436208401* = (when declared(Gfxlayer):
    Gfxlayer
   else:
    Gfxlayer_436208400)
  structsomassett_436208403* = (when declared(structsomassett):
    structsomassett
   else:
    structsomassett_436208402)
  Ppoint_436208165* = (when declared(Ppoint):
    Ppoint
   else:
    Ppoint_436208164)
  Scndataloaded_436208405* = (when declared(Scndataloaded):
    Scndataloaded
   else:
    Scndataloaded_436208404)
  Elementstatebits_436208407* = (when declared(Elementstatebits):
    Elementstatebits
   else:
    Elementstatebits_436208406)
  Gtkwidget_436208409* = (when declared(Gtkwidget):
    Gtkwidget
   else:
    Gtkwidget_436208408)
  Focusparams_436208411* = (when declared(Focusparams):
    Focusparams
   else:
    Focusparams_436208410)
  Uint32_436208167* = (when declared(Uint32):
    Uint32
   else:
    Uint32_436208166)
  structscnloaddata_436208169* = (when declared(structscnloaddata):
    structscnloaddata
   else:
    structscnloaddata_436208168)
  sompropsettert_436208413* = (when declared(sompropsettert):
    sompropsettert
   else:
    sompropsettert_436208412)
  Mouseevents_436208171* = (when declared(Mouseevents):
    Mouseevents
   else:
    Mouseevents_436208170)
  Lpsciterhostcallback_436208173* = (when declared(Lpsciterhostcallback):
    Lpsciterhostcallback
   else:
    Lpsciterhostcallback_436208172)
  Scrollevents_436208415* = (when declared(Scrollevents):
    Scrollevents
   else:
    Scrollevents_436208414)
  Initializationparams_436208175* = (when declared(Initializationparams):
    Initializationparams
   else:
    Initializationparams_436208174)
  Lpscitercallbacknotification_436208417* = (when declared(
      Lpscitercallbacknotification):
    Lpscitercallbacknotification
   else:
    Lpscitercallbacknotification_436208416)
  Ctltype_436208419* = (when declared(Ctltype):
    Ctltype
   else:
    Ctltype_436208418)
  Lpscninvalidaterect_436208421* = (when declared(Lpscninvalidaterect):
    Lpscninvalidaterect
   else:
    Lpscninvalidaterect_436208420)
  Urldatareceiver_436208177* = (when declared(Urldatareceiver):
    Urldatareceiver
   else:
    Urldatareceiver_436208176)
  Hpath_436208179* = (when declared(Hpath):
    Hpath
   else:
    Hpath_436208178)
  Behaviormethodidentifiers_436208181* = (when declared(
      Behaviormethodidentifiers):
    Behaviormethodidentifiers
   else:
    Behaviormethodidentifiers_436208180)
  Scitergraphics_436208423* = (when declared(Scitergraphics):
    Scitergraphics
   else:
    Scitergraphics_436208422)
  Lpelementeventproctypedef_436208425* = (when declared(
      Lpelementeventproctypedef):
    Lpelementeventproctypedef
   else:
    Lpelementeventproctypedef_436208424)
  somatomt_436208427* = (when declared(somatomt):
    somatomt
   else:
    somatomt_436208426)
  Gesturecmd_436208429* = (when declared(Gesturecmd):
    Gesturecmd
   else:
    Gesturecmd_436208428)
  Phasemask_436208431* = (when declared(Phasemask):
    Phasemask
   else:
    Phasemask_436208430)
  Sciterwindowdelegate_436208183* = (when declared(Sciterwindowdelegate):
    Sciterwindowdelegate
   else:
    Sciterwindowdelegate_436208182)
  Requeststate_436208433* = (when declared(Requeststate):
    Requeststate
   else:
    Requeststate_436208432)
  structsciterxmsgheartbit_436208185* = (when declared(structsciterxmsgheartbit):
    structsciterxmsgheartbit
   else:
    structsciterxmsgheartbit_436208184)
  Lppoint_436208435* = (when declared(Lppoint):
    Lppoint
   else:
    Lppoint_436208434)
  structscndataloaded_436208187* = (when declared(structscndataloaded):
    structscndataloaded
   else:
    structscndataloaded_436208186)
  Requestrqtype_436208437* = (when declared(Requestrqtype):
    Requestrqtype
   else:
    Requestrqtype_436208436)
  structsciterrequestapi_436208439* = (when declared(structsciterrequestapi):
    structsciterrequestapi
   else:
    structsciterrequestapi_436208438)
  structurldata_436208441* = (when declared(structurldata):
    structurldata
   else:
    structurldata_436208440)
  Scitercallbacknotification_436208449* = (when declared(
      Scitercallbacknotification):
    Scitercallbacknotification
   else:
    Scitercallbacknotification_436208448)
  Uint64_436208443* = (when declared(Uint64):
    Uint64
   else:
    Uint64_436208442)
  Sciterresourcetype_436208445* = (when declared(Sciterresourcetype):
    Sciterresourcetype
   else:
    Sciterresourcetype_436208444)
  structscriptingmethodparams_436208447* = (when declared(
      structscriptingmethodparams):
    structscriptingmethodparams
   else:
    structscriptingmethodparams_436208446)
  somitemgettert_436208189* = (when declared(somitemgettert):
    somitemgettert
   else:
    somitemgettert_436208188)
  sommethodt_436208451* = (when declared(sommethodt):
    sommethodt
   else:
    sommethodt_436208450)
  Lpcvoid_436208453* = (when declared(Lpcvoid):
    Lpcvoid
   else:
    Lpcvoid_436208452)
  structexchangeparams_436208191* = (when declared(structexchangeparams):
    structexchangeparams
   else:
    structexchangeparams_436208190)
  Behavioreventparams_436208193* = (when declared(Behavioreventparams):
    Behavioreventparams
   else:
    Behavioreventparams_436208192)
  Draggingtype_436208195* = (when declared(Draggingtype):
    Draggingtype
   else:
    Draggingtype_436208194)
  somdisposet_436208197* = (when declared(somdisposet):
    somdisposet
   else:
    somdisposet_436208196)
  structtagrect_436208455* = (when declared(structtagrect):
    structtagrect
   else:
    structtagrect_436208454)
  Sciterxmsgcreate_436208457* = (when declared(Sciterxmsgcreate):
    Sciterxmsgcreate
   else:
    Sciterxmsgcreate_436208456)
when not declared(Hgfx):
  type
    Hgfx* = Hgfx_436207929
else:
  static :
    hint("Declaration of " & "HGFX" & " already exists, not redeclaring")
when not declared(structsciterxmsgpaint):
  type
    structsciterxmsgpaint* = structsciterxmsgpaint_436207931
else:
  static :
    hint("Declaration of " & "struct_SCITER_X_MSG_PAINT" &
        " already exists, not redeclaring")
when not declared(sompassportt):
  type
    sompassportt* = sompassportt_436208200
else:
  static :
    hint("Declaration of " & "som_passport_t" &
        " already exists, not redeclaring")
when not declared(Scriptingmethodparams):
  type
    Scriptingmethodparams* = Scriptingmethodparams_436208204
else:
  static :
    hint("Declaration of " & "SCRIPTING_METHOD_PARAMS" &
        " already exists, not redeclaring")
when not declared(Int32):
  type
    Int32* = Int32_436208202
else:
  static :
    hint("Declaration of " & "INT32" & " already exists, not redeclaring")
when not declared(Sciterxmsgsize):
  type
    Sciterxmsgsize* = Sciterxmsgsize_436208206
else:
  static :
    hint("Declaration of " & "SCITER_X_MSG_SIZE" &
        " already exists, not redeclaring")
when not declared(Lpvoid):
  type
    Lpvoid* = Lpvoid_436208208
else:
  static :
    hint("Declaration of " & "LPVOID" & " already exists, not redeclaring")
when not declared(sompropgettert):
  type
    sompropgettert* = sompropgettert_436208210
else:
  static :
    hint("Declaration of " & "som_prop_getter_t" &
        " already exists, not redeclaring")
when not declared(Screal):
  type
    Screal* = Screal_436208212
else:
  static :
    hint("Declaration of " & "SC_REAL" & " already exists, not redeclaring")
when not declared(structsccolorstop):
  type
    structsccolorstop* = structsccolorstop_436208214
else:
  static :
    hint("Declaration of " & "struct_SC_COLOR_STOP" &
        " already exists, not redeclaring")
when not declared(Scnkeyboardrequest):
  type
    Scnkeyboardrequest* = Scnkeyboardrequest_436208216
else:
  static :
    hint("Declaration of " & "SCN_KEYBOARD_REQUEST" &
        " already exists, not redeclaring")
when not declared(Size):
  type
    Size* = Size_436207939
else:
  static :
    hint("Declaration of " & "SIZE" & " already exists, not redeclaring")
when not declared(Hrange):
  type
    Hrange* = Hrange_436208218
else:
  static :
    hint("Declaration of " & "HRANGE" & " already exists, not redeclaring")
when not declared(Lpcrect):
  type
    Lpcrect* = Lpcrect_436208220
else:
  static :
    hint("Declaration of " & "LPCRECT" & " already exists, not redeclaring")
when not declared(Lpscitergraphicsapi):
  type
    Lpscitergraphicsapi* = Lpscitergraphicsapi_436207941
else:
  static :
    hint("Declaration of " & "LPSciterGraphicsAPI" &
        " already exists, not redeclaring")
when not declared(structisciterapi):
  type
    structisciterapi* = structisciterapi_436208222
else:
  static :
    hint("Declaration of " & "struct__ISciterAPI" &
        " already exists, not redeclaring")
when not declared(Lpcbyte):
  type
    Lpcbyte* = Lpcbyte_436207943
else:
  static :
    hint("Declaration of " & "LPCBYTE" & " already exists, not redeclaring")
when not declared(Scnpostednotification):
  type
    Scnpostednotification* = Scnpostednotification_436207945
else:
  static :
    hint("Declaration of " & "SCN_POSTED_NOTIFICATION" &
        " already exists, not redeclaring")
when not declared(structsciterxmsgsize):
  type
    structsciterxmsgsize* = structsciterxmsgsize_436208226
else:
  static :
    hint("Declaration of " & "struct_SCITER_X_MSG_SIZE" &
        " already exists, not redeclaring")
when not declared(structgobject):
  type
    structgobject* = structgobject_436207949
else:
  static :
    hint("Declaration of " & "struct__GObject" &
        " already exists, not redeclaring")
when not declared(Wchar):
  type
    Wchar* = Wchar_436208228
else:
  static :
    hint("Declaration of " & "WCHAR" & " already exists, not redeclaring")
when not declared(structvalueparams):
  type
    structvalueparams* = structvalueparams_436207953
else:
  static :
    hint("Declaration of " & "struct_VALUE_PARAMS" &
        " already exists, not redeclaring")
when not declared(Scrollparams):
  type
    Scrollparams* = Scrollparams_436208230
else:
  static :
    hint("Declaration of " & "SCROLL_PARAMS" &
        " already exists, not redeclaring")
when not declared(imagewritefunction):
  type
    imagewritefunction* = imagewritefunction_436208232
else:
  static :
    hint("Declaration of " & "image_write_function" &
        " already exists, not redeclaring")
when not declared(structgestureparams):
  type
    structgestureparams* = structgestureparams_436208234
else:
  static :
    hint("Declaration of " & "struct_GESTURE_PARAMS" &
        " already exists, not redeclaring")
when not declared(structgtypeclass):
  type
    structgtypeclass* = structgtypeclass_436208236
else:
  static :
    hint("Declaration of " & "struct__GTypeClass" &
        " already exists, not redeclaring")
when not declared(structbehavioreventparams):
  type
    structbehavioreventparams* = structbehavioreventparams_436207955
else:
  static :
    hint("Declaration of " & "struct_BEHAVIOR_EVENT_PARAMS" &
        " already exists, not redeclaring")
when not declared(Isemptyparams):
  type
    Isemptyparams* = Isemptyparams_436208238
else:
  static :
    hint("Declaration of " & "IS_EMPTY_PARAMS" &
        " already exists, not redeclaring")
when not declared(structgtypeinstance):
  type
    structgtypeinstance* = structgtypeinstance_436208240
else:
  static :
    hint("Declaration of " & "struct__GTypeInstance" &
        " already exists, not redeclaring")
when not declared(structisemptyparams):
  type
    structisemptyparams* = structisemptyparams_436208246
else:
  static :
    hint("Declaration of " & "struct_IS_EMPTY_PARAMS" &
        " already exists, not redeclaring")
when not declared(Uintptr):
  type
    Uintptr* = Uintptr_436208242
else:
  static :
    hint("Declaration of " & "UINT_PTR" & " already exists, not redeclaring")
when not declared(sommethoddeft):
  type
    sommethoddeft* = sommethoddeft_436208244
else:
  static :
    hint("Declaration of " & "som_method_def_t" &
        " already exists, not redeclaring")
when not declared(Psize):
  type
    Psize* = Psize_436207961
else:
  static :
    hint("Declaration of " & "PSIZE" & " already exists, not redeclaring")
when not declared(Scnloaddata):
  type
    Scnloaddata* = Scnloaddata_436207963
else:
  static :
    hint("Declaration of " & "SCN_LOAD_DATA" &
        " already exists, not redeclaring")
when not declared(Elementeventproc):
  type
    Elementeventproc* = Elementeventproc_436208248
else:
  static :
    hint("Declaration of " & "ElementEventProc" &
        " already exists, not redeclaring")
when not declared(Scnattachbehavior):
  type
    Scnattachbehavior* = Scnattachbehavior_436208250
else:
  static :
    hint("Declaration of " & "SCN_ATTACH_BEHAVIOR" &
        " already exists, not redeclaring")
when not declared(Urldata):
  type
    Urldata* = Urldata_436208252
else:
  static :
    hint("Declaration of " & "URL_DATA" & " already exists, not redeclaring")
when not declared(Debugoutputproc):
  type
    Debugoutputproc* = Debugoutputproc_436208254
else:
  static :
    hint("Declaration of " & "DEBUG_OUTPUT_PROC" &
        " already exists, not redeclaring")
when not declared(Gtypeinstance):
  type
    Gtypeinstance* = Gtypeinstance_436208256
else:
  static :
    hint("Declaration of " & "GTypeInstance" &
        " already exists, not redeclaring")
when not declared(somitemsettert):
  type
    somitemsettert* = somitemsettert_436208258
else:
  static :
    hint("Declaration of " & "som_item_setter_t" &
        " already exists, not redeclaring")
when not declared(Lpscnattachbehavior):
  type
    Lpscnattachbehavior* = Lpscnattachbehavior_436207967
else:
  static :
    hint("Declaration of " & "LPSCN_ATTACH_BEHAVIOR" &
        " already exists, not redeclaring")
when not declared(Sbool):
  type
    Sbool* = Sbool_436208260
else:
  static :
    hint("Declaration of " & "SBOOL" & " already exists, not redeclaring")
when not declared(structattributechangeparams):
  type
    structattributechangeparams* = structattributechangeparams_436208266
else:
  static :
    hint("Declaration of " & "struct_ATTRIBUTE_CHANGE_PARAMS" &
        " already exists, not redeclaring")
when not declared(guint):
  type
    guint* = guint_436207971
else:
  static :
    hint("Declaration of " & "guint" & " already exists, not redeclaring")
when not declared(Sciterhostcallback):
  type
    Sciterhostcallback* = Sciterhostcallback_436208268
else:
  static :
    hint("Declaration of " & "SciterHostCallback" &
        " already exists, not redeclaring")
when not declared(gsize):
  type
    gsize* = gsize_436207979
else:
  static :
    hint("Declaration of " & "gsize" & " already exists, not redeclaring")
when not declared(Byte):
  type
    Byte* = Byte_436207973
else:
  static :
    hint("Declaration of " & "BYTE" & " already exists, not redeclaring")
when not declared(Keyparams):
  type
    Keyparams* = Keyparams_436207977
else:
  static :
    hint("Declaration of " & "KEY_PARAMS" & " already exists, not redeclaring")
when not declared(Helement):
  type
    Helement* = Helement_436208276
else:
  static :
    hint("Declaration of " & "HELEMENT" & " already exists, not redeclaring")
when not declared(Dataarrivedparams):
  type
    Dataarrivedparams* = Dataarrivedparams_436208278
else:
  static :
    hint("Declaration of " & "DATA_ARRIVED_PARAMS" &
        " already exists, not redeclaring")
when not declared(Isciterapi):
  type
    Isciterapi* = Isciterapi_436208280
else:
  static :
    hint("Declaration of " & "ISciterAPI" & " already exists, not redeclaring")
when not declared(structdrawparams):
  type
    structdrawparams* = structdrawparams_436208282
else:
  static :
    hint("Declaration of " & "struct_DRAW_PARAMS" &
        " already exists, not redeclaring")
when not declared(Hrequest):
  type
    Hrequest* = Hrequest_436207987
else:
  static :
    hint("Declaration of " & "HREQUEST" & " already exists, not redeclaring")
when not declared(Sciterelementcallback):
  type
    Sciterelementcallback* = Sciterelementcallback_436207989
else:
  static :
    hint("Declaration of " & "SciterElementCallback" &
        " already exists, not redeclaring")
when not declared(structscnenginedestroyed):
  type
    structscnenginedestroyed* = structscnenginedestroyed_436207991
else:
  static :
    hint("Declaration of " & "struct_SCN_ENGINE_DESTROYED" &
        " already exists, not redeclaring")
when not declared(Sciterxmsgfocus):
  type
    Sciterxmsgfocus* = Sciterxmsgfocus_436208001
else:
  static :
    hint("Declaration of " & "SCITER_X_MSG_FOCUS" &
        " already exists, not redeclaring")
when not declared(Timerparams):
  type
    Timerparams* = Timerparams_436207993
else:
  static :
    hint("Declaration of " & "TIMER_PARAMS" & " already exists, not redeclaring")
when not declared(Himg):
  type
    Himg* = Himg_436207995
else:
  static :
    hint("Declaration of " & "HIMG" & " already exists, not redeclaring")
when not declared(Sciterxmsgpaint):
  type
    Sciterxmsgpaint* = Sciterxmsgpaint_436208003
else:
  static :
    hint("Declaration of " & "SCITER_X_MSG_PAINT" &
        " already exists, not redeclaring")
when not declared(imagepaintfunction):
  type
    imagepaintfunction* = imagepaintfunction_436208284
else:
  static :
    hint("Declaration of " & "image_paint_function" &
        " already exists, not redeclaring")
when not declared(Lpscnloaddata):
  type
    Lpscnloaddata* = Lpscnloaddata_436208286
else:
  static :
    hint("Declaration of " & "LPSCN_LOAD_DATA" &
        " already exists, not redeclaring")
when not declared(Nativefunctorrelease):
  type
    Nativefunctorrelease* = Nativefunctorrelease_436208288
else:
  static :
    hint("Declaration of " & "NATIVE_FUNCTOR_RELEASE" &
        " already exists, not redeclaring")
when not declared(structfocusparams):
  type
    structfocusparams* = structfocusparams_436208290
else:
  static :
    hint("Declaration of " & "struct_FOCUS_PARAMS" &
        " already exists, not redeclaring")
when not declared(somassett):
  type
    somassett* = somassett_436208005
else:
  static :
    hint("Declaration of " & "som_asset_t" & " already exists, not redeclaring")
when not declared(Sccolorstop):
  type
    Sccolorstop* = Sccolorstop_436208009
else:
  static :
    hint("Declaration of " & "SC_COLOR_STOP" &
        " already exists, not redeclaring")
when not declared(Exchangeparams):
  type
    Exchangeparams* = Exchangeparams_436208018
else:
  static :
    hint("Declaration of " & "EXCHANGE_PARAMS" &
        " already exists, not redeclaring")
when not declared(Sciterbehaviorfactory):
  type
    Sciterbehaviorfactory* = Sciterbehaviorfactory_436208292
else:
  static :
    hint("Declaration of " & "SciterBehaviorFactory" &
        " already exists, not redeclaring")
when not declared(structsciterxmsg):
  type
    structsciterxmsg* = structsciterxmsg_436208020
else:
  static :
    hint("Declaration of " & "struct_SCITER_X_MSG" &
        " already exists, not redeclaring")
when not declared(Nativefunctorinvoke):
  type
    Nativefunctorinvoke* = Nativefunctorinvoke_436208022
else:
  static :
    hint("Declaration of " & "NATIVE_FUNCTOR_INVOKE" &
        " already exists, not redeclaring")
when not declared(Sciterxmsgheartbit):
  type
    Sciterxmsgheartbit* = Sciterxmsgheartbit_436208294
else:
  static :
    hint("Declaration of " & "SCITER_X_MSG_HEARTBIT" &
        " already exists, not redeclaring")
when not declared(structscitergraphicsapi):
  type
    structscitergraphicsapi* = structscitergraphicsapi_436208024
else:
  static :
    hint("Declaration of " & "struct_SciterGraphicsAPI" &
        " already exists, not redeclaring")
when not declared(structinitializationparams):
  type
    structinitializationparams* = structinitializationparams_436208030
else:
  static :
    hint("Declaration of " & "struct_INITIALIZATION_PARAMS" &
        " already exists, not redeclaring")
when not declared(Lpcwstrreceiver):
  type
    Lpcwstrreceiver* = Lpcwstrreceiver_436208028
else:
  static :
    hint("Declaration of " & "LPCWSTR_RECEIVER" &
        " already exists, not redeclaring")
when not declared(Scnenginedestroyed):
  type
    Scnenginedestroyed* = Scnenginedestroyed_436208300
else:
  static :
    hint("Declaration of " & "SCN_ENGINE_DESTROYED" &
        " already exists, not redeclaring")
when not declared(structsomparams):
  type
    structsomparams* = structsomparams_436208032
else:
  static :
    hint("Declaration of " & "struct_SOM_PARAMS" &
        " already exists, not redeclaring")
when not declared(Point):
  type
    Point* = Point_436208298
else:
  static :
    hint("Declaration of " & "POINT" & " already exists, not redeclaring")
when not declared(Lpscndataloaded):
  type
    Lpscndataloaded* = Lpscndataloaded_436208034
else:
  static :
    hint("Declaration of " & "LPSCN_DATA_LOADED" &
        " already exists, not redeclaring")
when not declared(sompropertydeft):
  type
    sompropertydeft* = sompropertydeft_436208302
else:
  static :
    hint("Declaration of " & "som_property_def_t" &
        " already exists, not redeclaring")
when not declared(Scitervalue):
  type
    Scitervalue* = Scitervalue_436208036
else:
  static :
    hint("Declaration of " & "SCITER_VALUE" & " already exists, not redeclaring")
when not declared(structsciterxmsgcreate):
  type
    structsciterxmsgcreate* = structsciterxmsgcreate_436208306
else:
  static :
    hint("Declaration of " & "struct_SCITER_X_MSG_CREATE" &
        " already exists, not redeclaring")
when not declared(Mouseparams):
  type
    Mouseparams* = Mouseparams_436208038
else:
  static :
    hint("Declaration of " & "MOUSE_PARAMS" & " already exists, not redeclaring")
when not declared(structsciterxmsgkey):
  type
    structsciterxmsgkey* = structsciterxmsgkey_436208040
else:
  static :
    hint("Declaration of " & "struct_SCITER_X_MSG_KEY" &
        " already exists, not redeclaring")
when not declared(structrequestparam):
  type
    structrequestparam* = structrequestparam_436208308
else:
  static :
    hint("Declaration of " & "struct_REQUEST_PARAM" &
        " already exists, not redeclaring")
when not declared(Lpcbytereceiver):
  type
    Lpcbytereceiver* = Lpcbytereceiver_436208042
else:
  static :
    hint("Declaration of " & "LPCBYTE_RECEIVER" &
        " already exists, not redeclaring")
when not declared(Sciterxmsgdestroy):
  type
    Sciterxmsgdestroy* = Sciterxmsgdestroy_436208046
else:
  static :
    hint("Declaration of " & "SCITER_X_MSG_DESTROY" &
        " already exists, not redeclaring")
when not declared(structsomassetclasst):
  type
    structsomassetclasst* = structsomassetclasst_436208312
else:
  static :
    hint("Declaration of " & "struct_som_asset_class_t" &
        " already exists, not redeclaring")
when not declared(Scangle):
  type
    Scangle* = Scangle_436208048
else:
  static :
    hint("Declaration of " & "SC_ANGLE" & " already exists, not redeclaring")
when not declared(structtagpoint):
  type
    structtagpoint* = structtagpoint_436208314
else:
  static :
    hint("Declaration of " & "struct_tagPOINT" &
        " already exists, not redeclaring")
when not declared(Gtkwidgetprivate):
  type
    Gtkwidgetprivate* = Gtkwidgetprivate_436208316
else:
  static :
    hint("Declaration of " & "GtkWidgetPrivate" &
        " already exists, not redeclaring")
when not declared(Lpscnpostednotification):
  type
    Lpscnpostednotification* = Lpscnpostednotification_436208050
else:
  static :
    hint("Declaration of " & "LPSCN_POSTED_NOTIFICATION" &
        " already exists, not redeclaring")
when not declared(Hsarchive):
  type
    Hsarchive* = Hsarchive_436208320
else:
  static :
    hint("Declaration of " & "HSARCHIVE" & " already exists, not redeclaring")
when not declared(Sciterxmsgkey):
  type
    Sciterxmsgkey* = Sciterxmsgkey_436208322
else:
  static :
    hint("Declaration of " & "SCITER_X_MSG_KEY" &
        " already exists, not redeclaring")
when not declared(Lpscnkeyboardrequest):
  type
    Lpscnkeyboardrequest* = Lpscnkeyboardrequest_436208052
else:
  static :
    hint("Declaration of " & "LPSCN_KEYBOARD_REQUEST" &
        " already exists, not redeclaring")
when not declared(somanypropsettert):
  type
    somanypropsettert* = somanypropsettert_436208324
else:
  static :
    hint("Declaration of " & "som_any_prop_setter_t" &
        " already exists, not redeclaring")
when not declared(somitemnextt):
  type
    somitemnextt* = somitemnextt_436208054
else:
  static :
    hint("Declaration of " & "som_item_next_t" &
        " already exists, not redeclaring")
when not declared(Sccolor):
  type
    Sccolor* = Sccolor_436208058
else:
  static :
    hint("Declaration of " & "SC_COLOR" & " already exists, not redeclaring")
when not declared(structtimerparams):
  type
    structtimerparams* = structtimerparams_436208060
else:
  static :
    hint("Declaration of " & "struct_TIMER_PARAMS" &
        " already exists, not redeclaring")
when not declared(Somparams):
  type
    Somparams* = Somparams_436208064
else:
  static :
    hint("Declaration of " & "SOM_PARAMS" & " already exists, not redeclaring")
when not declared(structmouseparams):
  type
    structmouseparams* = structmouseparams_436208326
else:
  static :
    hint("Declaration of " & "struct_MOUSE_PARAMS" &
        " already exists, not redeclaring")
when not declared(Lpcstrreceiver):
  type
    Lpcstrreceiver* = Lpcstrreceiver_436208066
else:
  static :
    hint("Declaration of " & "LPCSTR_RECEIVER" &
        " already exists, not redeclaring")
when not declared(Valueparams):
  type
    Valueparams* = Valueparams_436208328
else:
  static :
    hint("Declaration of " & "VALUE_PARAMS" & " already exists, not redeclaring")
when not declared(structhposition):
  type
    structhposition* = structhposition_436208332
else:
  static :
    hint("Declaration of " & "struct_hposition" &
        " already exists, not redeclaring")
when not declared(somanypropgettert):
  type
    somanypropgettert* = somanypropgettert_436208334
else:
  static :
    hint("Declaration of " & "som_any_prop_getter_t" &
        " already exists, not redeclaring")
when not declared(structsciterxmsgmouse):
  type
    structsciterxmsgmouse* = structsciterxmsgmouse_436208068
else:
  static :
    hint("Declaration of " & "struct_SCITER_X_MSG_MOUSE" &
        " already exists, not redeclaring")
when not declared(Methodparams):
  type
    Methodparams* = Methodparams_436208070
else:
  static :
    hint("Declaration of " & "METHOD_PARAMS" &
        " already exists, not redeclaring")
when not declared(structscrollparams):
  type
    structscrollparams* = structscrollparams_436208072
else:
  static :
    hint("Declaration of " & "struct_SCROLL_PARAMS" &
        " already exists, not redeclaring")
when not declared(structsciterxmsgresolution):
  type
    structsciterxmsgresolution* = structsciterxmsgresolution_436208074
else:
  static :
    hint("Declaration of " & "struct_SCITER_X_MSG_RESOLUTION" &
        " already exists, not redeclaring")
when not declared(Sciterxmsgmouse):
  type
    Sciterxmsgmouse* = Sciterxmsgmouse_436208338
else:
  static :
    hint("Declaration of " & "SCITER_X_MSG_MOUSE" &
        " already exists, not redeclaring")
when not declared(structgtkwidget):
  type
    structgtkwidget* = structgtkwidget_436208076
else:
  static :
    hint("Declaration of " & "struct__GtkWidget" &
        " already exists, not redeclaring")
when not declared(Scngraphicscriticalfailure):
  type
    Scngraphicscriticalfailure* = Scngraphicscriticalfailure_436208078
else:
  static :
    hint("Declaration of " & "SCN_GRAPHICS_CRITICAL_FAILURE" &
        " already exists, not redeclaring")
when not declared(Lpelementeventproc):
  type
    Lpelementeventproc* = Lpelementeventproc_436208080
else:
  static :
    hint("Declaration of " & "LPELEMENT_EVENT_PROC" &
        " already exists, not redeclaring")
when not declared(structsciterxmsgdestroy):
  type
    structsciterxmsgdestroy* = structsciterxmsgdestroy_436208082
else:
  static :
    hint("Declaration of " & "struct_SCITER_X_MSG_DESTROY" &
        " already exists, not redeclaring")
when not declared(Sciterlibraryinitfunc):
  type
    Sciterlibraryinitfunc* = Sciterlibraryinitfunc_436208086
else:
  static :
    hint("Declaration of " & "SciterLibraryInitFunc" &
        " already exists, not redeclaring")
when not declared(Int64):
  type
    Int64* = Int64_436208088
else:
  static :
    hint("Declaration of " & "INT64" & " already exists, not redeclaring")
when not declared(Sciterxmsgresolution):
  type
    Sciterxmsgresolution* = Sciterxmsgresolution_436208090
else:
  static :
    hint("Declaration of " & "SCITER_X_MSG_RESOLUTION" &
        " already exists, not redeclaring")
when not declared(Rect):
  type
    Rect* = Rect_436208092
else:
  static :
    hint("Declaration of " & "RECT" & " already exists, not redeclaring")
when not declared(Scninvalidaterect):
  type
    Scninvalidaterect* = Scninvalidaterect_436208094
else:
  static :
    hint("Declaration of " & "SCN_INVALIDATE_RECT" &
        " already exists, not redeclaring")
when not declared(Scdim):
  type
    Scdim* = Scdim_436208100
else:
  static :
    hint("Declaration of " & "SC_DIM" & " already exists, not redeclaring")
when not declared(structscnpostednotification):
  type
    structscnpostednotification* = structscnpostednotification_436208102
else:
  static :
    hint("Declaration of " & "struct_SCN_POSTED_NOTIFICATION" &
        " already exists, not redeclaring")
when not declared(Gdata):
  type
    Gdata* = Gdata_436208344
else:
  static :
    hint("Declaration of " & "GData" & " already exists, not redeclaring")
when not declared(structdataarrivedparams):
  type
    structdataarrivedparams* = structdataarrivedparams_436208106
else:
  static :
    hint("Declaration of " & "struct_DATA_ARRIVED_PARAMS" &
        " already exists, not redeclaring")
when not declared(structscnattachbehavior):
  type
    structscnattachbehavior* = structscnattachbehavior_436208108
else:
  static :
    hint("Declaration of " & "struct_SCN_ATTACH_BEHAVIOR" &
        " already exists, not redeclaring")
when not declared(Gtypeclass):
  type
    Gtypeclass* = Gtypeclass_436208348
else:
  static :
    hint("Declaration of " & "GTypeClass" & " already exists, not redeclaring")
when not declared(structsommethoddeft):
  type
    structsommethoddeft* = structsommethoddeft_436208350
else:
  static :
    hint("Declaration of " & "struct_som_method_def_t" &
        " already exists, not redeclaring")
when not declared(structsciterxmsgfocus):
  type
    structsciterxmsgfocus* = structsciterxmsgfocus_436208112
else:
  static :
    hint("Declaration of " & "struct_SCITER_X_MSG_FOCUS" &
        " already exists, not redeclaring")
when not declared(structsompassportt):
  type
    structsompassportt* = structsompassportt_436208354
else:
  static :
    hint("Declaration of " & "struct_som_passport_t" &
        " already exists, not redeclaring")
when not declared(Drawparams):
  type
    Drawparams* = Drawparams_436208356
else:
  static :
    hint("Declaration of " & "DRAW_PARAMS" & " already exists, not redeclaring")
when not declared(Sciterapiptr):
  type
    Sciterapiptr* = Sciterapiptr_436208360
else:
  static :
    hint("Declaration of " & "SciterAPI_ptr" &
        " already exists, not redeclaring")
when not declared(Elementbitmapreceiver):
  type
    Elementbitmapreceiver* = Elementbitmapreceiver_436208116
else:
  static :
    hint("Declaration of " & "ELEMENT_BITMAP_RECEIVER" &
        " already exists, not redeclaring")
when not declared(Lpsciterrequestapi):
  type
    Lpsciterrequestapi* = Lpsciterrequestapi_436208120
else:
  static :
    hint("Declaration of " & "LPSciterRequestAPI" &
        " already exists, not redeclaring")
when not declared(structscitercallbacknotification):
  type
    structscitercallbacknotification* = structscitercallbacknotification_436208122
else:
  static :
    hint("Declaration of " & "struct_SCITER_CALLBACK_NOTIFICATION" &
        " already exists, not redeclaring")
when not declared(Lpscngraphicscriticalfailure):
  type
    Lpscngraphicscriticalfailure* = Lpscngraphicscriticalfailure_436208124
else:
  static :
    hint("Declaration of " & "LPSCN_GRAPHICS_CRITICAL_FAILURE" &
        " already exists, not redeclaring")
when not declared(Ginitiallyunowned):
  type
    Ginitiallyunowned* = Ginitiallyunowned_436208364
else:
  static :
    hint("Declaration of " & "GInitiallyUnowned" &
        " already exists, not redeclaring")
when not declared(Value):
  type
    Value* = Value_436208126
else:
  static :
    hint("Declaration of " & "VALUE" & " already exists, not redeclaring")
when not declared(Lpuint):
  type
    Lpuint* = Lpuint_436208128
else:
  static :
    hint("Declaration of " & "LPUINT" & " already exists, not redeclaring")
when not declared(Gtype):
  type
    Gtype* = Gtype_436208366
else:
  static :
    hint("Declaration of " & "GType" & " already exists, not redeclaring")
when not declared(structscngraphicscriticalfailure):
  type
    structscngraphicscriticalfailure* = structscngraphicscriticalfailure_436208368
else:
  static :
    hint("Declaration of " & "struct_SCN_GRAPHICS_CRITICAL_FAILURE" &
        " already exists, not redeclaring")
when not declared(structscninvalidaterect):
  type
    structscninvalidaterect* = structscninvalidaterect_436208134
else:
  static :
    hint("Declaration of " & "struct_SCN_INVALIDATE_RECT" &
        " already exists, not redeclaring")
when not declared(Sciterxmsg):
  type
    Sciterxmsg* = Sciterxmsg_436208372
else:
  static :
    hint("Declaration of " & "SCITER_X_MSG" & " already exists, not redeclaring")
when not declared(somassetclasst):
  type
    somassetclasst* = somassetclasst_436208136
else:
  static :
    hint("Declaration of " & "som_asset_class_t" &
        " already exists, not redeclaring")
when not declared(structkeyparams):
  type
    structkeyparams* = structkeyparams_436208374
else:
  static :
    hint("Declaration of " & "struct_KEY_PARAMS" &
        " already exists, not redeclaring")
when not declared(Requestparam):
  type
    Requestparam* = Requestparam_436208376
else:
  static :
    hint("Declaration of " & "REQUEST_PARAM" &
        " already exists, not redeclaring")
when not declared(Htext):
  type
    Htext* = Htext_436208140
else:
  static :
    hint("Declaration of " & "HTEXT" & " already exists, not redeclaring")
when not declared(structscnkeyboardrequest):
  type
    structscnkeyboardrequest* = structscnkeyboardrequest_436208378
else:
  static :
    hint("Declaration of " & "struct_SCN_KEYBOARD_REQUEST" &
        " already exists, not redeclaring")
when not declared(Lpcwstr):
  type
    Lpcwstr* = Lpcwstr_436208380
else:
  static :
    hint("Declaration of " & "LPCWSTR" & " already exists, not redeclaring")
when not declared(Keyvaluecallback):
  type
    Keyvaluecallback* = Keyvaluecallback_436208382
else:
  static :
    hint("Declaration of " & "KeyValueCallback" &
        " already exists, not redeclaring")
when not declared(structtagsize):
  type
    structtagsize* = structtagsize_436208142
else:
  static :
    hint("Declaration of " & "struct_tagSIZE" &
        " already exists, not redeclaring")
when not declared(Scpos):
  type
    Scpos* = Scpos_436208384
else:
  static :
    hint("Declaration of " & "SC_POS" & " already exists, not redeclaring")
when not declared(Lpscnenginedestroyed):
  type
    Lpscnenginedestroyed* = Lpscnenginedestroyed_436208144
else:
  static :
    hint("Declaration of " & "LPSCN_ENGINE_DESTROYED" &
        " already exists, not redeclaring")
when not declared(Lpwstr):
  type
    Lpwstr* = Lpwstr_436208386
else:
  static :
    hint("Declaration of " & "LPWSTR" & " already exists, not redeclaring")
when not declared(structsompropertydeft):
  type
    structsompropertydeft* = structsompropertydeft_436208388
else:
  static :
    hint("Declaration of " & "struct_som_property_def_t" &
        " already exists, not redeclaring")
when not declared(Uint):
  type
    Uint* = Uint_436208390
else:
  static :
    hint("Declaration of " & "UINT" & " already exists, not redeclaring")
when not declared(Hnode):
  type
    Hnode* = Hnode_436208392
else:
  static :
    hint("Declaration of " & "HNODE" & " already exists, not redeclaring")
when not declared(Int):
  type
    Int* = Int_436208394
else:
  static :
    hint("Declaration of " & "INT" & " already exists, not redeclaring")
when not declared(Gestureparams):
  type
    Gestureparams* = Gestureparams_436208396
else:
  static :
    hint("Declaration of " & "GESTURE_PARAMS" &
        " already exists, not redeclaring")
when not declared(Lprect):
  type
    Lprect* = Lprect_436208146
else:
  static :
    hint("Declaration of " & "LPRECT" & " already exists, not redeclaring")
when not declared(Lpcstr):
  type
    Lpcstr* = Lpcstr_436208148
else:
  static :
    hint("Declaration of " & "LPCSTR" & " already exists, not redeclaring")
when not declared(Elementcomparator):
  type
    Elementcomparator* = Elementcomparator_436208150
else:
  static :
    hint("Declaration of " & "ELEMENT_COMPARATOR" &
        " already exists, not redeclaring")
when not declared(Attributechangeparams):
  type
    Attributechangeparams* = Attributechangeparams_436208398
else:
  static :
    hint("Declaration of " & "ATTRIBUTE_CHANGE_PARAMS" &
        " already exists, not redeclaring")
when not declared(structmethodparams):
  type
    structmethodparams* = structmethodparams_436208162
else:
  static :
    hint("Declaration of " & "struct_METHOD_PARAMS" &
        " already exists, not redeclaring")
when not declared(Hposition):
  type
    Hposition* = Hposition_436208156
else:
  static :
    hint("Declaration of " & "HPOSITION" & " already exists, not redeclaring")
when not declared(Lpsize):
  type
    Lpsize* = Lpsize_436208158
else:
  static :
    hint("Declaration of " & "LPSIZE" & " already exists, not redeclaring")
when not declared(Char):
  type
    Char* = Char_436208160
else:
  static :
    hint("Declaration of " & "CHAR" & " already exists, not redeclaring")
when not declared(structsomassett):
  type
    structsomassett* = structsomassett_436208402
else:
  static :
    hint("Declaration of " & "struct_som_asset_t" &
        " already exists, not redeclaring")
when not declared(Ppoint):
  type
    Ppoint* = Ppoint_436208164
else:
  static :
    hint("Declaration of " & "PPOINT" & " already exists, not redeclaring")
when not declared(Scndataloaded):
  type
    Scndataloaded* = Scndataloaded_436208404
else:
  static :
    hint("Declaration of " & "SCN_DATA_LOADED" &
        " already exists, not redeclaring")
when not declared(Gtkwidget):
  type
    Gtkwidget* = Gtkwidget_436208408
else:
  static :
    hint("Declaration of " & "GtkWidget" & " already exists, not redeclaring")
when not declared(Focusparams):
  type
    Focusparams* = Focusparams_436208410
else:
  static :
    hint("Declaration of " & "FOCUS_PARAMS" & " already exists, not redeclaring")
when not declared(Uint32):
  type
    Uint32* = Uint32_436208166
else:
  static :
    hint("Declaration of " & "UINT32" & " already exists, not redeclaring")
when not declared(structscnloaddata):
  type
    structscnloaddata* = structscnloaddata_436208168
else:
  static :
    hint("Declaration of " & "struct_SCN_LOAD_DATA" &
        " already exists, not redeclaring")
when not declared(sompropsettert):
  type
    sompropsettert* = sompropsettert_436208412
else:
  static :
    hint("Declaration of " & "som_prop_setter_t" &
        " already exists, not redeclaring")
when not declared(Lpsciterhostcallback):
  type
    Lpsciterhostcallback* = Lpsciterhostcallback_436208172
else:
  static :
    hint("Declaration of " & "LPSciterHostCallback" &
        " already exists, not redeclaring")
when not declared(Initializationparams):
  type
    Initializationparams* = Initializationparams_436208174
else:
  static :
    hint("Declaration of " & "INITIALIZATION_PARAMS" &
        " already exists, not redeclaring")
when not declared(Lpscitercallbacknotification):
  type
    Lpscitercallbacknotification* = Lpscitercallbacknotification_436208416
else:
  static :
    hint("Declaration of " & "LPSCITER_CALLBACK_NOTIFICATION" &
        " already exists, not redeclaring")
when not declared(Lpscninvalidaterect):
  type
    Lpscninvalidaterect* = Lpscninvalidaterect_436208420
else:
  static :
    hint("Declaration of " & "LPSCN_INVALIDATE_RECT" &
        " already exists, not redeclaring")
when not declared(Urldatareceiver):
  type
    Urldatareceiver* = Urldatareceiver_436208176
else:
  static :
    hint("Declaration of " & "URL_DATA_RECEIVER" &
        " already exists, not redeclaring")
when not declared(Hpath):
  type
    Hpath* = Hpath_436208178
else:
  static :
    hint("Declaration of " & "HPATH" & " already exists, not redeclaring")
when not declared(Scitergraphics):
  type
    Scitergraphics* = Scitergraphics_436208422
else:
  static :
    hint("Declaration of " & "SCITER_GRAPHICS" &
        " already exists, not redeclaring")
when not declared(Lpelementeventproctypedef):
  type
    Lpelementeventproctypedef* = Lpelementeventproctypedef_436208424
else:
  static :
    hint("Declaration of " & "LPElementEventProc" &
        " already exists, not redeclaring")
when not declared(somatomt):
  type
    somatomt* = somatomt_436208426
else:
  static :
    hint("Declaration of " & "som_atom_t" & " already exists, not redeclaring")
when not declared(Sciterwindowdelegate):
  type
    Sciterwindowdelegate* = Sciterwindowdelegate_436208182
else:
  static :
    hint("Declaration of " & "SciterWindowDelegate" &
        " already exists, not redeclaring")
when not declared(structsciterxmsgheartbit):
  type
    structsciterxmsgheartbit* = structsciterxmsgheartbit_436208184
else:
  static :
    hint("Declaration of " & "struct_SCITER_X_MSG_HEARTBIT" &
        " already exists, not redeclaring")
when not declared(Lppoint):
  type
    Lppoint* = Lppoint_436208434
else:
  static :
    hint("Declaration of " & "LPPOINT" & " already exists, not redeclaring")
when not declared(structscndataloaded):
  type
    structscndataloaded* = structscndataloaded_436208186
else:
  static :
    hint("Declaration of " & "struct_SCN_DATA_LOADED" &
        " already exists, not redeclaring")
when not declared(structsciterrequestapi):
  type
    structsciterrequestapi* = structsciterrequestapi_436208438
else:
  static :
    hint("Declaration of " & "struct_SciterRequestAPI" &
        " already exists, not redeclaring")
when not declared(structurldata):
  type
    structurldata* = structurldata_436208440
else:
  static :
    hint("Declaration of " & "struct_URL_DATA" &
        " already exists, not redeclaring")
when not declared(Scitercallbacknotification):
  type
    Scitercallbacknotification* = Scitercallbacknotification_436208448
else:
  static :
    hint("Declaration of " & "SCITER_CALLBACK_NOTIFICATION" &
        " already exists, not redeclaring")
when not declared(Uint64):
  type
    Uint64* = Uint64_436208442
else:
  static :
    hint("Declaration of " & "UINT64" & " already exists, not redeclaring")
when not declared(structscriptingmethodparams):
  type
    structscriptingmethodparams* = structscriptingmethodparams_436208446
else:
  static :
    hint("Declaration of " & "struct_SCRIPTING_METHOD_PARAMS" &
        " already exists, not redeclaring")
when not declared(somitemgettert):
  type
    somitemgettert* = somitemgettert_436208188
else:
  static :
    hint("Declaration of " & "som_item_getter_t" &
        " already exists, not redeclaring")
when not declared(sommethodt):
  type
    sommethodt* = sommethodt_436208450
else:
  static :
    hint("Declaration of " & "som_method_t" & " already exists, not redeclaring")
when not declared(Lpcvoid):
  type
    Lpcvoid* = Lpcvoid_436208452
else:
  static :
    hint("Declaration of " & "LPCVOID" & " already exists, not redeclaring")
when not declared(structexchangeparams):
  type
    structexchangeparams* = structexchangeparams_436208190
else:
  static :
    hint("Declaration of " & "struct_EXCHANGE_PARAMS" &
        " already exists, not redeclaring")
when not declared(Behavioreventparams):
  type
    Behavioreventparams* = Behavioreventparams_436208192
else:
  static :
    hint("Declaration of " & "BEHAVIOR_EVENT_PARAMS" &
        " already exists, not redeclaring")
when not declared(somdisposet):
  type
    somdisposet* = somdisposet_436208196
else:
  static :
    hint("Declaration of " & "som_dispose_t" &
        " already exists, not redeclaring")
when not declared(structtagrect):
  type
    structtagrect* = structtagrect_436208454
else:
  static :
    hint("Declaration of " & "struct_tagRECT" &
        " already exists, not redeclaring")
when not declared(Sciterxmsgcreate):
  type
    Sciterxmsgcreate* = Sciterxmsgcreate_436208456
else:
  static :
    hint("Declaration of " & "SCITER_X_MSG_CREATE" &
        " already exists, not redeclaring")
when not declared(Lresult):
  when long is typedesc:
    type
      Lresult* = long        ## Generated based on /home/dian/Projects/nsciter/sciter-js-sdk/include/sciter-x-types.h:71:11
  else:
    const
      Lresult* = long        ## Generated based on /home/dian/Projects/nsciter/sciter-js-sdk/include/sciter-x-types.h:71:11
else:
  static :
    hint("Declaration of " & "LRESULT" & " already exists, not redeclaring")
when not declared(Sckeyboardrequest):
  const
    Sckeyboardrequest* = 8   ## Generated based on /home/dian/Projects/nsciter/sciter-js-sdk/include/sciter-x-def.h:142:9
else:
  static :
    hint("Declaration of " & "SC_KEYBOARD_REQUEST" &
        " already exists, not redeclaring")
when not declared(Scdominvalidhwnd):
  const
    Scdominvalidhwnd* = 1    ## Generated based on /home/dian/Projects/nsciter/sciter-js-sdk/include/sciter-x-dom.h:74:9
else:
  static :
    hint("Declaration of " & "SCDOM_INVALID_HWND" &
        " already exists, not redeclaring")
when not declared(Hdc):
  when Lpvoid_436208209 is typedesc:
    type
      Hdc* = Lpvoid_436208209 ## Generated based on /home/dian/Projects/nsciter/sciter-js-sdk/include/sciter-x-types.h:72:11
  else:
    const
      Hdc* = Lpvoid_436208209 ## Generated based on /home/dian/Projects/nsciter/sciter-js-sdk/include/sciter-x-types.h:72:11
else:
  static :
    hint("Declaration of " & "HDC" & " already exists, not redeclaring")
when not declared(Scdominvalidhandle):
  const
    Scdominvalidhandle* = 2  ## Generated based on /home/dian/Projects/nsciter/sciter-js-sdk/include/sciter-x-dom.h:75:9
else:
  static :
    hint("Declaration of " & "SCDOM_INVALID_HANDLE" &
        " already exists, not redeclaring")
when not declared(Sciterapiversion):
  const
    Sciterapiversion* = 9    ## Generated based on /home/dian/Projects/nsciter/sciter-js-sdk/include/sciter-x-api.h:47:11
else:
  static :
    hint("Declaration of " & "SCITER_API_VERSION" &
        " already exists, not redeclaring")
when not declared(Scpostednotification):
  const
    Scpostednotification* = 6 ## Generated based on /home/dian/Projects/nsciter/sciter-js-sdk/include/sciter-x-def.h:124:9
else:
  static :
    hint("Declaration of " & "SC_POSTED_NOTIFICATION" &
        " already exists, not redeclaring")
when not declared(Scdompassivehandle):
  const
    Scdompassivehandle* = 3  ## Generated based on /home/dian/Projects/nsciter/sciter-js-sdk/include/sciter-x-dom.h:76:9
else:
  static :
    hint("Declaration of " & "SCDOM_PASSIVE_HANDLE" &
        " already exists, not redeclaring")
when not declared(Scdomoperationfailed):
  const
    Scdomoperationfailed* = 5 ## Generated based on /home/dian/Projects/nsciter/sciter-js-sdk/include/sciter-x-dom.h:78:9
else:
  static :
    hint("Declaration of " & "SCDOM_OPERATION_FAILED" &
        " already exists, not redeclaring")
when not declared(Scdomok):
  const
    Scdomok* = 0             ## Generated based on /home/dian/Projects/nsciter/sciter-js-sdk/include/sciter-x-dom.h:73:9
else:
  static :
    hint("Declaration of " & "SCDOM_OK" & " already exists, not redeclaring")
when not declared(Floatvalue):
  when double is typedesc:
    type
      Floatvalue* = double   ## Generated based on /home/dian/Projects/nsciter/sciter-js-sdk/include/value.h:21:9
  else:
    const
      Floatvalue* = double   ## Generated based on /home/dian/Projects/nsciter/sciter-js-sdk/include/value.h:21:9
else:
  static :
    hint("Declaration of " & "FLOAT_VALUE" & " already exists, not redeclaring")
when not declared(Sciterenumurldata):
  proc Sciterenumurldata*(hwndsciter: ptr Gtkwidget_436208409;
                          receiver: ptr Urldatareceiver_436208177;
                          param: Lpvoid_436208209; url: Lpcstr_436208149): Sbool_436208261 {.
      cdecl, importc: "SciterEnumUrlData".}
else:
  static :
    hint("Declaration of " & "SciterEnumUrlData" &
        " already exists, not redeclaring")
when not declared(Scitersetupdebugoutput):
  proc Scitersetupdebugoutput*(hwndornull: ptr Gtkwidget_436208409;
                               param: Lpvoid_436208209;
                               pfoutput: Debugoutputproc_436208255): void {.
      cdecl, importc: "SciterSetupDebugOutput".}
else:
  static :
    hint("Declaration of " & "SciterSetupDebugOutput" &
        " already exists, not redeclaring")
when not declared(Scdomresult):
  when Int_436208395 is typedesc:
    type
      Scdomresult* = Int_436208395 ## Generated based on /home/dian/Projects/nsciter/sciter-js-sdk/include/sciter-x-dom.h:71:9
  else:
    const
      Scdomresult* = Int_436208395 ## Generated based on /home/dian/Projects/nsciter/sciter-js-sdk/include/sciter-x-dom.h:71:9
else:
  static :
    hint("Declaration of " & "SCDOM_RESULT" & " already exists, not redeclaring")
when not declared(Scgraphicscriticalfailure):
  const
    Scgraphicscriticalfailure* = 7 ## Generated based on /home/dian/Projects/nsciter/sciter-js-sdk/include/sciter-x-def.h:133:9
else:
  static :
    hint("Declaration of " & "SC_GRAPHICS_CRITICAL_FAILURE" &
        " already exists, not redeclaring")
when not declared(Scinvalidaterect):
  const
    Scinvalidaterect* = 9    ## Generated based on /home/dian/Projects/nsciter/sciter-js-sdk/include/sciter-x-def.h:149:9
else:
  static :
    hint("Declaration of " & "SC_INVALIDATE_RECT" &
        " already exists, not redeclaring")
when not declared(Scdominvalidparameter):
  const
    Scdominvalidparameter* = 4 ## Generated based on /home/dian/Projects/nsciter/sciter-js-sdk/include/sciter-x-dom.h:77:9
else:
  static :
    hint("Declaration of " & "SCDOM_INVALID_PARAMETER" &
        " already exists, not redeclaring")
when not declared(Scitergetelementnamespace):
  proc Scitergetelementnamespace*(he: Helement_436208277; pval: pointer): Int_436208395 {.
      cdecl, importc: "SciterGetElementNamespace".}
else:
  static :
    hint("Declaration of " & "SciterGetElementNamespace" &
        " already exists, not redeclaring")
when not declared(Scitergetobject):
  proc Scitergetobject*(he: Helement_436208277; pval: pointer;
                        forcecreation: Sbool_436208261): Int_436208395 {.cdecl,
      importc: "SciterGetObject".}
else:
  static :
    hint("Declaration of " & "SciterGetObject" &
        " already exists, not redeclaring")
when not declared(Scloaddata):
  const
    Scloaddata* = 1          ## Generated based on /home/dian/Projects/nsciter/sciter-js-sdk/include/sciter-x-def.h:77:9
else:
  static :
    hint("Declaration of " & "SC_LOAD_DATA" & " already exists, not redeclaring")
when not declared(Scdataloaded):
  const
    Scdataloaded* = 2        ## Generated based on /home/dian/Projects/nsciter/sciter-js-sdk/include/sciter-x-def.h:88:9
else:
  static :
    hint("Declaration of " & "SC_DATA_LOADED" &
        " already exists, not redeclaring")
when not declared(Scattachbehavior):
  const
    Scattachbehavior* = 4    ## Generated based on /home/dian/Projects/nsciter/sciter-js-sdk/include/sciter-x-def.h:109:9
else:
  static :
    hint("Declaration of " & "SC_ATTACH_BEHAVIOR" &
        " already exists, not redeclaring")
when not declared(Scenginedestroyed):
  const
    Scenginedestroyed* = 5   ## Generated based on /home/dian/Projects/nsciter/sciter-js-sdk/include/sciter-x-def.h:117:9
else:
  static :
    hint("Declaration of " & "SC_ENGINE_DESTROYED" &
        " already exists, not redeclaring")
when not declared(Externc):
  when extern is typedesc:
    type
      Externc* = extern      ## Generated based on /home/dian/Projects/nsciter/sciter-js-sdk/include/sciter-x-primitives.h:332:11
  else:
    const
      Externc* = extern      ## Generated based on /home/dian/Projects/nsciter/sciter-js-sdk/include/sciter-x-primitives.h:332:11
else:
  static :
    hint("Declaration of " & "EXTERN_C" & " already exists, not redeclaring")
when not declared(Stdcall):
  when compilerstdcall is typedesc:
    type
      Stdcall* = compilerstdcall ## Generated based on /home/dian/Projects/nsciter/sciter-js-sdk/include/sciter-x-primitives.h:296:9
  else:
    const
      Stdcall* = compilerstdcall ## Generated based on /home/dian/Projects/nsciter/sciter-js-sdk/include/sciter-x-primitives.h:296:9
else:
  static :
    hint("Declaration of " & "STDCALL" & " already exists, not redeclaring")
when not declared(Somvalue):
  when Scitervalue_436208037 is typedesc:
    type
      Somvalue* = Scitervalue_436208037 ## Generated based on /home/dian/Projects/nsciter/sciter-js-sdk/include/sciter-om-def.h:15:11
  else:
    const
      Somvalue* = Scitervalue_436208037 ## Generated based on /home/dian/Projects/nsciter/sciter-js-sdk/include/sciter-om-def.h:15:11
else:
  static :
    hint("Declaration of " & "SOM_VALUE" & " already exists, not redeclaring")
when not declared(Hinstance):
  when Lpvoid_436208209 is typedesc:
    type
      Hinstance* = Lpvoid_436208209 ## Generated based on /home/dian/Projects/nsciter/sciter-js-sdk/include/sciter-x-types.h:70:11
  else:
    const
      Hinstance* = Lpvoid_436208209 ## Generated based on /home/dian/Projects/nsciter/sciter-js-sdk/include/sciter-x-types.h:70:11
else:
  static :
    hint("Declaration of " & "HINSTANCE" & " already exists, not redeclaring")

const SCITER_DLL_NAME* = "libsciter-gtk.so"