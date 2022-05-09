
from macros import hint

when not declared(enummousebuttons):
  type
    enummousebuttons* {.size: sizeof(cint).} = enum
      Mainmousebutton = 1, Propmousebutton = 2, Middlemousebutton = 4
else:
  static :
    hint("Declaration of " & "enum_MOUSE_BUTTONS" &
        " already exists, not redeclaring")
when not declared(enumclickreason):
  type
    enumclickreason* {.size: sizeof(cint).} = enum
      Bymouseclick = 0, Bykeyclick = 1, Synthesized = 2, Bymouseonicon = 3
else:
  static :
    hint("Declaration of " & "enum_CLICK_REASON" &
        " already exists, not redeclaring")
when not declared(enumsciterxmsgcode):
  type
    enumsciterxmsgcode* {.size: sizeof(cint).} = enum
      Sxmcreate = 0, Sxmdestroy = 1, Sxmsize = 2, Sxmpaint = 3,
      Sxmresolution = 4, Sxmheartbit = 5, Sxmmouse = 6, Sxmkey = 7, Sxmfocus = 8
else:
  static :
    hint("Declaration of " & "enum_SCITER_X_MSG_CODE" &
        " already exists, not redeclaring")
when not declared(enumdrawpathmode):
  type
    enumdrawpathmode* {.size: sizeof(cint).} = enum
      Drawfillonly = 1, Drawstrokeonly = 2, Drawfillandstroke = 3
else:
  static :
    hint("Declaration of " & "enum_DRAW_PATH_MODE" &
        " already exists, not redeclaring")
when not declared(enumsciterrtoptions):
  type
    enumsciterrtoptions* {.size: sizeof(cint).} = enum
      Scitersmoothscroll = 1, Sciterconnectiontimeout = 2, Sciterhttpserror = 3,
      Sciterfontsmoothing = 4, Scitertransparentwindow = 6,
      Scitersetgpublacklist = 7, Scitersetscriptruntimefeatures = 8,
      Scitersetgfxlayer = 9, Scitersetdebugmode = 10, Scitersetuxtheming = 11,
      Sciteralphawindow = 12, Scitersetinitscript = 13,
      Scitersetmainwindow = 14, Scitersetmaxhttpdatalength = 15,
      Scitersetpxasdip = 16, Sciterenableuiautomation = 17
else:
  static :
    hint("Declaration of " & "enum_SCITER_RT_OPTIONS" &
        " already exists, not redeclaring")
when not declared(enumvaluetype):
  type
    enumvaluetype* {.size: sizeof(cint).} = enum
      Tundefined = 0, Tnull = 1, Tbool = 2, Tint = 3, Tfloat = 4, Tstring = 5,
      Tdate = 6, Tbigint = 7, Tlength = 8, Tarray = 9, Tmap = 10,
      Tfunction = 11, Tbytes = 12, Tobject = 13, Tresource = 15, Tduration = 17,
      Tangle = 18, Tcolor = 19, Tasset = 21
else:
  static :
    hint("Declaration of " & "enum_VALUE_TYPE" &
        " already exists, not redeclaring")
when not declared(enumscrollsource):
  type
    enumscrollsource* {.size: sizeof(cint).} = enum
      Scrollsourceunknown = 0, Scrollsourcekeyboard = 1,
      Scrollsourcescrollbar = 2, Scrollsourceanimator = 3, Scrollsourcewheel = 4
else:
  static :
    hint("Declaration of " & "enum_SCROLL_SOURCE" &
        " already exists, not redeclaring")
when not declared(enumgfxlayer):
  type
    enumgfxlayer* {.size: sizeof(cint).} = enum
      Gfxlayergdi = 1, Gfxlayerwarp = 2, Gfxlayerd2d = 3, Gfxlayerskia = 4,
      Gfxlayerskiaopengl = 5, Gfxlayerauto = 65535
else:
  static :
    hint("Declaration of " & "enum_GFX_LAYER" &
        " already exists, not redeclaring")
const
  Gfxlayercg* = Gfxlayergdi
const
  Gfxlayercairo* = Gfxlayergdi
const
  Gfxlayerd2dwarp* = Gfxlayerwarp
when not declared(enumvaluestringcvttype):
  type
    enumvaluestringcvttype* {.size: sizeof(cint).} = enum
      Cvtsimple = 0, Cvtjsonliteral = 1, Cvtjsonmap = 2, Cvtxjsonliteral = 3
else:
  static :
    hint("Declaration of " & "enum_VALUE_STRING_CVT_TYPE" &
        " already exists, not redeclaring")
when not declared(enumscrollbarpart):
  type
    enumscrollbarpart* {.size: sizeof(cint).} = enum
      Scrollbarbase = 0, Scrollbarplus = 1, Scrollbarminus = 2,
      Scrollbarslider = 3, Scrollbarpageminus = 4, Scrollbarpageplus = 5,
      Scrollbarcorner = 6
else:
  static :
    hint("Declaration of " & "enum_SCROLLBAR_PART" &
        " already exists, not redeclaring")
when not declared(enumoutputseverity):
  type
    enumoutputseverity* {.size: sizeof(cint).} = enum
      Osinfo = 0, Oswarning = 1, Oserror = 2
else:
  static :
    hint("Declaration of " & "enum_OUTPUT_SEVERITY" &
        " already exists, not redeclaring")
when not declared(enumdrawevents):
  type
    enumdrawevents* {.size: sizeof(cint).} = enum
      Drawbackground = 0, Drawcontent = 1, Drawforeground = 2, Drawoutline = 3
else:
  static :
    hint("Declaration of " & "enum_DRAW_EVENTS" &
        " already exists, not redeclaring")
when not declared(enumvalueunittype):
  type
    enumvalueunittype* {.size: sizeof(cint).} = enum
      Utem = 1, Utex = 2, Utpr = 3, Utsp = 4, reserved1 = 5, reserved2 = 6,
      Utpx = 7, Utin = 8, Utcm = 9, Utmm = 10, Utpt = 11, Utpc = 12, Utdip = 13,
      reserved3 = 14, reserved4 = 15, Utprwidth = 16, Utprheight = 17,
      Utprviewwidth = 18, Utprviewheight = 19, Utprviewmin = 20,
      Utprviewmax = 21, Utrem = 22, Utppx = 23, Utch = 24
else:
  static :
    hint("Declaration of " & "enum_VALUE_UNIT_TYPE" &
        " already exists, not redeclaring")
when not declared(enumbehaviormethodidentifiers):
  type
    enumbehaviormethodidentifiers* {.size: sizeof(cint).} = enum
      Doclick = 0, Isempty = 252, Getvalue = 253, Setvalue = 254,
      Firstapplicationmethodid = 256
else:
  static :
    hint("Declaration of " & "enum_BEHAVIOR_METHOD_IDENTIFIERS" &
        " already exists, not redeclaring")
when not declared(enumsompassportflags):
  type
    enumsompassportflags* {.size: sizeof(cint).} = enum
      Somsealedobject = 0, Somextendableobject = 1
else:
  static :
    hint("Declaration of " & "enum_som_passport_flags" &
        " already exists, not redeclaring")
when not declared(enumrequestrqtype):
  type
    enumrequestrqtype* {.size: sizeof(cint).} = enum
      Rrtforcedword = -1, Rrtget = 1, Rrtpost = 2, Rrtput = 3, Rrtdelete = 4
else:
  static :
    hint("Declaration of " & "enum_REQUEST_RQ_TYPE" &
        " already exists, not redeclaring")
when not declared(enumsciterwindowstate):
  type
    enumsciterwindowstate* {.size: sizeof(cint).} = enum
      Sciterwindowstateclosed = 0, Sciterwindowstateshown = 1,
      Sciterwindowstateminimized = 2, Sciterwindowstatemaximized = 3,
      Sciterwindowstatehidden = 4, Sciterwindowstatefullscreen = 5
else:
  static :
    hint("Declaration of " & "enum_SCITER_WINDOW_STATE" &
        " already exists, not redeclaring")
when not declared(enumfocusevents):
  type
    enumfocusevents* {.size: sizeof(cint).} = enum
      Focusout = 0, Focusin = 1, Focusgot = 2, Focuslost = 3, Focusrequest = 4,
      Focusadvancerequest = 5
else:
  static :
    hint("Declaration of " & "enum_FOCUS_EVENTS" &
        " already exists, not redeclaring")
when not declared(enumcontentchangebits):
  type
    enumcontentchangebits* {.size: sizeof(cint).} = enum
      Contentadded = 1, Contentremoved = 2
else:
  static :
    hint("Declaration of " & "enum_CONTENT_CHANGE_BITS" &
        " already exists, not redeclaring")
when not declared(enumscitercreatewindowflags):
  type
    enumscitercreatewindowflags* {.size: sizeof(cint).} = enum
      Swchild = 1, Swtitlebar = 2, Swresizeable = 4, Swtool = 8,
      Swcontrols = 16, Swglassy = 32, Swalpha = 64, Swmain = 128, Swpopup = 256,
      Swenabledebug = 512, Swownsvm = 1024
else:
  static :
    hint("Declaration of " & "enum_SCITER_CREATE_WINDOW_FLAGS" &
        " already exists, not redeclaring")
when not declared(enumsomevents):
  type
    enumsomevents* {.size: sizeof(cint).} = enum
      Somgetpassport = 0, Somgetasset = 1
else:
  static :
    hint("Declaration of " & "enum_SOM_EVENTS" &
        " already exists, not redeclaring")
when not declared(enumgesturestate):
  type
    enumgesturestate* {.size: sizeof(cint).} = enum
      Gesturestatebegin = 1, Gesturestateinertia = 2, Gesturestateend = 4
else:
  static :
    hint("Declaration of " & "enum_GESTURE_STATE" &
        " already exists, not redeclaring")
when not declared(enumgesturetypeflags):
  type
    enumgesturetypeflags* {.size: sizeof(cint).} = enum
      Gestureflagzoom = 1, Gestureflagrotate = 2, Gestureflagpanvertical = 4,
      Gestureflagpanhorizontal = 8, Gestureflagtap1 = 16, Gestureflagtap2 = 32,
      Gestureflagpanwithgutter = 16384, Gestureflagpanwithinertia = 32768,
      Gestureflagsall = 65535
else:
  static :
    hint("Declaration of " & "enum_GESTURE_TYPE_FLAGS" &
        " already exists, not redeclaring")
when not declared(enumkeyboardstates):
  type
    enumkeyboardstates* {.size: sizeof(cint).} = enum
      Controlkeypressed = 1, Shiftkeypressed = 2, Altkeypressed = 4,
      Rightshiftkeypressed = 8, Cmdkeypressed = 16
else:
  static :
    hint("Declaration of " & "enum_KEYBOARD_STATES" &
        " already exists, not redeclaring")
when not declared(enumctltype):
  type
    enumctltype* {.size: sizeof(cint).} = enum
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
    hint("Declaration of " & "enum_CTL_TYPE" &
        " already exists, not redeclaring")
const
  Ctlhyperlink* = Ctllastinput
when not declared(enumsciterpainttargettype):
  type
    enumsciterpainttargettype* {.size: sizeof(cint).} = enum
      Sptdefault = 0, Sptreceiver = 1, Sptsurface = 2
else:
  static :
    hint("Declaration of " & "enum_SCITER_PAINT_TARGET_TYPE" &
        " already exists, not redeclaring")
when not declared(enumexchangecmd):
  type
    enumexchangecmd* {.size: sizeof(cint).} = enum
      Xdragenter = 0, Xdragleave = 1, Xdrag = 2, Xdrop = 3, Xpaste = 4,
      Xdragrequest = 5, Xdragcancel = 6, Xwillacceptdrop = 7
else:
  static :
    hint("Declaration of " & "enum_EXCHANGE_CMD" &
        " already exists, not redeclaring")
when not declared(enumsetelementhtml):
  type
    enumsetelementhtml* {.size: sizeof(cint).} = enum
      Sihreplacecontent = 0, Sihinsertatstart = 1, Sihappendafterlast = 2,
      Sohreplace = 3, Sohinsertbefore = 4, Sohinsertafter = 5
else:
  static :
    hint("Declaration of " & "enum_SET_ELEMENT_HTML" &
        " already exists, not redeclaring")
when not declared(enumdraggingtype):
  type
    enumdraggingtype* {.size: sizeof(cint).} = enum
      Nodragging = 0, Draggingmove = 1, Draggingcopy = 2
else:
  static :
    hint("Declaration of " & "enum_DRAGGING_TYPE" &
        " already exists, not redeclaring")
when not declared(enumoutputsubsytems):
  type
    enumoutputsubsytems* {.size: sizeof(cint).} = enum
      Otdom = 0, Otcsss = 1, Otcss = 2, Ottis = 3
else:
  static :
    hint("Declaration of " & "enum_OUTPUT_SUBSYTEMS" &
        " already exists, not redeclaring")
when not declared(enumscloaddatareturncodes):
  type
    enumscloaddatareturncodes* {.size: sizeof(cint).} = enum
      Loadok = 0, Loaddiscard = 1, Loaddelayed = 2, Loadmyself = 3
else:
  static :
    hint("Declaration of " & "enum_SC_LOAD_DATA_RETURN_CODES" &
        " already exists, not redeclaring")
when not declared(enumsciterlinejointype):
  type
    enumsciterlinejointype* {.size: sizeof(cint).} = enum
      Sciterjoinmiter = 0, Sciterjoinround = 1, Sciterjoinbevel = 2,
      Sciterjoinmiterorbevel = 3
else:
  static :
    hint("Declaration of " & "enum_SCITER_LINE_JOIN_TYPE" &
        " already exists, not redeclaring")
when not declared(enumvalueresult):
  type
    enumvalueresult* {.size: sizeof(cint).} = enum
      Hvoktrue = -1, Hvok = 0, Hvbadparameter = 1, Hvincompatibletype = 2
else:
  static :
    hint("Declaration of " & "enum_VALUE_RESULT" &
        " already exists, not redeclaring")
when not declared(enumeditchangedreason):
  type
    enumeditchangedreason* {.size: sizeof(cint).} = enum
      Byinschar = 0, Byinschars = 1, Bydelchar = 2, Bydelchars = 3,
      Byundoredo = 4
else:
  static :
    hint("Declaration of " & "enum_EDIT_CHANGED_REASON" &
        " already exists, not redeclaring")
when not declared(enummouseevents):
  type
    enummouseevents* {.size: sizeof(cint).} = enum
      Mouseenter = 0, Mouseleave = 1, Mousemove = 2, Mouseup = 3, Mousedown = 4,
      Mousedclick = 5, Mousewheel = 6, Mousetick = 7, Mouseidle = 8, Drop = 9,
      Dragenter = 10, Dragleave = 11, Dragrequest = 12, Mousetclick = 15,
      Mousedragrequest = 254, Mouseclick = 255, Dragging = 256,
      Mousehittest = 4094
else:
  static :
    hint("Declaration of " & "enum_MOUSE_EVENTS" &
        " already exists, not redeclaring")
when not declared(enumsciterimageencoding):
  type
    enumsciterimageencoding* {.size: sizeof(cint).} = enum
      Sciterimageencodingraw = 0, Sciterimageencodingpng = 1,
      Sciterimageencodingjpg = 2, Sciterimageencodingwebp = 3
else:
  static :
    hint("Declaration of " & "enum_SCITER_IMAGE_ENCODING" &
        " already exists, not redeclaring")
when not declared(enumsciterscrollflags):
  type
    enumsciterscrollflags* {.size: sizeof(cint).} = enum
      Scrolltotop = 1, Scrollsmooth = 16
else:
  static :
    hint("Declaration of " & "enum_SCITER_SCROLL_FLAGS" &
        " already exists, not redeclaring")
when not declared(enumddmodes):
  type
    enumddmodes* {.size: sizeof(cint).} = enum
      Ddmodenone = 0, Ddmodecopy = 1, Ddmodemove = 2, Ddmodecopyormove = 3,
      Ddmodelink = 4
else:
  static :
    hint("Declaration of " & "enum_DD_MODES" &
        " already exists, not redeclaring")
when not declared(enumsciterlinecaptype):
  type
    enumsciterlinecaptype* {.size: sizeof(cint).} = enum
      Sciterlinecapbutt = 0, Sciterlinecapsquare = 1, Sciterlinecapround = 2
else:
  static :
    hint("Declaration of " & "enum_SCITER_LINE_CAP_TYPE" &
        " already exists, not redeclaring")
when not declared(enuminitializationevents):
  type
    enuminitializationevents* {.size: sizeof(cint).} = enum
      Behaviordetach = 0, Behaviorattach = 1
else:
  static :
    hint("Declaration of " & "enum_INITIALIZATION_EVENTS" &
        " already exists, not redeclaring")
when not declared(enumvalueunittypestring):
  type
    enumvalueunittypestring* {.size: sizeof(cint).} = enum
      Utstringstring = 0, Utstringerror = 1, Utstringsecure = 2,
      Utstringsymbol = 65535
else:
  static :
    hint("Declaration of " & "enum_VALUE_UNIT_TYPE_STRING" &
        " already exists, not redeclaring")
when not declared(enumsciterresourcetype):
  type
    enumsciterresourcetype* {.size: sizeof(cint).} = enum
      Rtdataforcedword = -1, Rtdatahtml = 0, Rtdataimage = 1, Rtdatastyle = 2,
      Rtdatacursor = 3, Rtdatascript = 4, Rtdataraw = 5, Rtdatafont = 6,
      Rtdatasound = 7
else:
  static :
    hint("Declaration of " & "enum_SciterResourceType" &
        " already exists, not redeclaring")
when not declared(enumsciterwindowcmd):
  type
    enumsciterwindowcmd* {.size: sizeof(cint).} = enum
      Sciterwindowsetstate = 1, Sciterwindowgetstate = 2,
      Sciterwindowactivate = 3
else:
  static :
    hint("Declaration of " & "enum_SCITER_WINDOW_CMD" &
        " already exists, not redeclaring")
when not declared(enumeventgroups):
  type
    enumeventgroups* {.size: sizeof(cint).} = enum
      Subscriptionsrequest = -1, Handleinitialization = 0, Handlemouse = 1,
      Handlekey = 2, Handlefocus = 4, Handlescroll = 8, Handletimer = 16,
      Handlesize = 32, Handledraw = 64, Handledataarrived = 128,
      Handlebehaviorevent = 256, Handlemethodcall = 512,
      Handlescriptingmethodcall = 1024, Handleexchange = 4096,
      Handlegesture = 8192, Handleattributechange = 16384, Handlesom = 32768,
      Handleall = 65535
else:
  static :
    hint("Declaration of " & "enum_EVENT_GROUPS" &
        " already exists, not redeclaring")
when not declared(enumvalueunittypeobject):
  type
    enumvalueunittypeobject* {.size: sizeof(cint).} = enum
      Utobjectarray = 0, Utobjectobject = 1, Utobjectclass = 2,
      Utobjectnative = 3, Utobjectfunction = 4, Utobjecterror = 5
else:
  static :
    hint("Declaration of " & "enum_VALUE_UNIT_TYPE_OBJECT" &
        " already exists, not redeclaring")
when not declared(enumvalueunitundefined):
  type
    enumvalueunitundefined* {.size: sizeof(cint).} = enum
      Utnothing = 1
else:
  static :
    hint("Declaration of " & "enum_VALUE_UNIT_UNDEFINED" &
        " already exists, not redeclaring")
when not declared(enumvalueunittypedate):
  type
    enumvalueunittypedate* {.size: sizeof(cint).} = enum
      Dthasdate = 1, Dthastime = 2, Dthasseconds = 4, Dtutc = 16
else:
  static :
    hint("Declaration of " & "enum_VALUE_UNIT_TYPE_DATE" &
        " already exists, not redeclaring")
when not declared(enumelementstatebits):
  type
    enumelementstatebits* {.size: sizeof(cint).} = enum
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
    hint("Declaration of " & "enum_ELEMENT_STATE_BITS" &
        " already exists, not redeclaring")
when not declared(enumrequesttype):
  type
    enumrequesttype* {.size: sizeof(cint).} = enum
      Getasync = 0, Postasync = 1, Getsync = 2, Postsync = 3
else:
  static :
    hint("Declaration of " & "enum_REQUEST_TYPE" &
        " already exists, not redeclaring")
when not declared(enumbehaviorevents):
  type
    enumbehaviorevents* {.size: sizeof(cint).} = enum
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
    hint("Declaration of " & "enum_BEHAVIOR_EVENTS" &
        " already exists, not redeclaring")
const
  Selectstatechanged* = Selectvaluechanged
when not declared(enumnodetype):
  type
    enumnodetype* {.size: sizeof(cint).} = enum
      Ntelement = 0, Nttext = 1, Ntcomment = 2
else:
  static :
    hint("Declaration of " & "enum_NODE_TYPE" &
        " already exists, not redeclaring")
when not declared(enumnodeinstarget):
  type
    enumnodeinstarget* {.size: sizeof(cint).} = enum
      Nitbefore = 0, Nitafter = 1, Nitappend = 2, Nitprepend = 3
else:
  static :
    hint("Declaration of " & "enum_NODE_INS_TARGET" &
        " already exists, not redeclaring")
when not declared(enumcursortype):
  type
    enumcursortype* {.size: sizeof(cint).} = enum
      Cursorarrow = 0, Cursoribeam = 1, Cursorwait = 2, Cursorcross = 3,
      Cursoruparrow = 4, Cursorsizenwse = 5, Cursorsizenesw = 6,
      Cursorsizewe = 7, Cursorsizens = 8, Cursorsizeall = 9, Cursorno = 10,
      Cursorappstarting = 11, Cursorhelp = 12, Cursorhand = 13,
      Cursordragmove = 14, Cursordragcopy = 15
else:
  static :
    hint("Declaration of " & "enum_CURSOR_TYPE" &
        " already exists, not redeclaring")
when not declared(enumrequestresult):
  type
    enumrequestresult* {.size: sizeof(cint).} = enum
      Requestpanic = -1, Requestok = 0, Requestbadparam = 1, Requestfailure = 2,
      Requestnotsupported = 3
else:
  static :
    hint("Declaration of " & "enum_REQUEST_RESULT" &
        " already exists, not redeclaring")
when not declared(enumgesturecmd):
  type
    enumgesturecmd* {.size: sizeof(cint).} = enum
      Gesturestart = 0, Gesturemove = 1, Gestureend = 2, Gesturepan = 3,
      Gesturezoom = 4, Gesturerotate = 5, Gesturetap1 = 6, Gesturetap2 = 7,
      Gesturedoubletap = 8
else:
  static :
    hint("Declaration of " & "enum_GESTURE_CMD" &
        " already exists, not redeclaring")
when not declared(enumscriptruntimefeatures):
  type
    enumscriptruntimefeatures* {.size: sizeof(cint).} = enum
      Allowfileio = 1, Allowsocketio = 2, Alloweval = 4, Allowsysinfo = 8
else:
  static :
    hint("Declaration of " & "enum_SCRIPT_RUNTIME_FEATURES" &
        " already exists, not redeclaring")
when not declared(enumfocuscmdtype):
  type
    enumfocuscmdtype* {.size: sizeof(cint).} = enum
      Focusrqnext = 0, Focusrqprev = 1, Focusrqhome = 2, Focusrqend = 3,
      Focusrqleft = 4, Focusrqright = 5, Focusrqup = 6, Focusrqdown = 7,
      Focusrqfirst = 8, Focusrqlast = 9, Focusrqendreached = 32768
else:
  static :
    hint("Declaration of " & "enum_FOCUS_CMD_TYPE" &
        " already exists, not redeclaring")
when not declared(enumphasemask):
  type
    enumphasemask* {.size: sizeof(cint).} = enum
      Bubbling = 0, Sinking = 32768, Handled = 65536
else:
  static :
    hint("Declaration of " & "enum_PHASE_MASK" &
        " already exists, not redeclaring")
when not declared(enumrequeststate):
  type
    enumrequeststate* {.size: sizeof(cint).} = enum
      Rsforcedword = -1, Rspending = 0, Rssuccess = 1, Rsfailure = 2
else:
  static :
    hint("Declaration of " & "enum_REQUEST_STATE" &
        " already exists, not redeclaring")
when not declared(enumsciterappcmd):
  type
    enumsciterappcmd* {.size: sizeof(cint).} = enum
      Sciterappstop = 0, Sciterapploop = 1, Sciterappinit = 2,
      Sciterappshutdown = 3
else:
  static :
    hint("Declaration of " & "enum_SCITER_APP_CMD" &
        " already exists, not redeclaring")
when not declared(enumgraphinresult):
  type
    enumgraphinresult* {.size: sizeof(cint).} = enum
      Graphinpanic = -1, Graphinok = 0, Graphinbadparam = 1, Graphinfailure = 2,
      Graphinnotsupported = 3
else:
  static :
    hint("Declaration of " & "enum_GRAPHIN_RESULT" &
        " already exists, not redeclaring")
when not declared(enumelementareas):
  type
    enumelementareas* {.size: sizeof(cint).} = enum
      Contentbox = 0, Rootrelative = 1, Selfrelative = 2, Containerrelative = 3,
      Viewrelative = 4, Paddingbox = 16, Borderbox = 32, Marginbox = 48,
      Backimagearea = 64, Foreimagearea = 80, Scrollablearea = 96
else:
  static :
    hint("Declaration of " & "enum_ELEMENT_AREAS" &
        " already exists, not redeclaring")
when not declared(enumscrollevents):
  type
    enumscrollevents* {.size: sizeof(cint).} = enum
      Scrollhome = 0, Scrollend = 1, Scrollstepplus = 2, Scrollstepminus = 3,
      Scrollpageplus = 4, Scrollpageminus = 5, Scrollpos = 6,
      Scrollsliderreleased = 7, Scrollcornerpressed = 8,
      Scrollcornerreleased = 9, Scrollsliderpressed = 10,
      Scrollanimationstart = 11, Scrollanimationend = 12
else:
  static :
    hint("Declaration of " & "enum_SCROLL_EVENTS" &
        " already exists, not redeclaring")
when not declared(enumkeyevents):
  type
    enumkeyevents* {.size: sizeof(cint).} = enum
      Keydown = 0, Keyup = 1, Keychar = 2
else:
  static :
    hint("Declaration of " & "enum_KEY_EVENTS" &
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
when not declared(double):
  type
    double* = distinct object
else:
  static :
    hint("Declaration of " & "double" & " already exists, not redeclaring")
type
  Valueunittypestring_436207920* = enumvalueunittypestring_436208357 ## Generated based on D:\Projects\nsciter\sciter-js-sdk\include\value.h:110:3
  Hgfx_436207923* = pointer  ## Generated based on D:\Projects\nsciter\sciter-js-sdk\include\sciter-x-graphics.h:40:29
  structsciterxmsgpaint_target_t_receiver_t* = object
    param*: pointer
    callback*: proc (a0: Lpcbyte_436207946; a1: Int_436208501; a2: Int_436208501;
                     a3: Uint_436208497; a4: Uint_436208497; a5: Lpvoid_436208279): void {.
        cdecl.}

  structsciterxmsgpaint_target_t* {.union.} = object
    psurface*: Lpvoid_436208279
    receiver*: structsciterxmsgpaint_target_t_receiver_t

  structsciterxmsgpaint_436207925* = object
    header*: Sciterxmsg_436208479 ## Generated based on D:\Projects\nsciter\sciter-js-sdk\include\sciter-x-msg.h:138:16
    element*: Helement_436208347
    isfore*: Sbool_436208331
    targettype*: Uint_436208497
    target*: structsciterxmsgpaint_target_t

  Somevents_436207927* = enumsomevents_436208153 ## Generated based on D:\Projects\nsciter\sciter-js-sdk\include\sciter-x-behavior.h:116:5
  Graphinresult_436207931* = enumgraphinresult_436208527 ## Generated based on D:\Projects\nsciter\sciter-js-sdk\include\sciter-x-graphics.h:67:3
  Lresult_436207933* = Longptr_436207968 ## Generated based on C:\Program Files (x86)\Windows Kits\10\Include\10.0.22000.0\shared\minwindef.h:188:29
  Size_436207937* = structtagsize_436208203 ## Generated based on C:\Program Files (x86)\Windows Kits\10\Include\10.0.22000.0\shared\windef.h:190:3
  Sciterbehaviorfactoryinitfunc_436207941* = proc (a0: ptr Isciterapi_436208351;
      a1: ptr proc (a0: Lpcstr_436208213; a1: Helement_436208347;
                    a2: ptr Lpelementeventproctypedef_436208537; a3: ptr Lpvoid_436208279): Sbool_436208331 {.
      cdecl.}): Sbool_436208331 {.cdecl.} ## Generated based on D:\Projects\nsciter\sciter-js-sdk\include\sciter-x.h:61:21
  Lpscitergraphicsapi_436207943* = ptr structscitergraphicsapi_436208049 ## Generated based on D:\Projects\nsciter\sciter-js-sdk\include\sciter-x-graphics.h:427:35
  Lpcbyte_436207945* = ptr Byte_436207992 ## Generated based on D:\Projects\nsciter\sciter-js-sdk\include\sciter-x-primitives.h:289:23
  Scnpostednotification_436207947* = structscnpostednotification_436208143 ## Generated based on D:\Projects\nsciter\sciter-js-sdk\include\sciter-x-def.h:246:3
  Sciterlinejointype_436207949* = enumsciterlinejointype_436208251 ## Generated based on D:\Projects\nsciter\sciter-js-sdk\include\sciter-x-graphics.h:82:3
  Intptr_436207951* = clonglong ## Generated based on C:\Program Files (x86)\Windows Kits\10\Include\10.0.22000.0\shared\basetsd.h:125:21
  Focuscmdtype_436207955* = enumfocuscmdtype_436208471 ## Generated based on D:\Projects\nsciter\sciter-js-sdk\include\sciter-x-behavior.h:249:5
  structvalueparams_436207957* = object
    methodid*: Uint_436208497 ## Generated based on D:\Projects\nsciter\sciter-js-sdk\include\sciter-x-behavior.h:619:18
    val*: Scitervalue_436208065

  wchar_436207961* = wchart_436208055 ## Generated based on D:\Projects\nsciter\sciter-js-sdk\include\sciter-x-primitives.h:94:19
  structbehavioreventparams_436207963* = object
    cmd*: Uint_436208497     ## Generated based on D:\Projects\nsciter\sciter-js-sdk\include\sciter-x-behavior.h:549:18
    hetarget*: Helement_436208347
    he*: Helement_436208347
    reason*: Uintptr_436208315
    data*: Scitervalue_436208065
    name*: Lpcwstr_436208487

  Scrollbarpart_436207965* = enumscrollbarpart_436207986 ## Generated based on D:\Projects\nsciter\sciter-js-sdk\include\sciter-x-behavior.h:297:5
  Longptr_436207967* = clonglong ## Generated based on C:\Program Files (x86)\Windows Kits\10\Include\10.0.22000.0\shared\basetsd.h:128:21
  Sciterappcmd_436207971* = enumsciterappcmd_436208521 ## Generated based on D:\Projects\nsciter\sciter-js-sdk\include\sciter-x-def.h:499:4
  Scnloaddata_436207975* = structscnloaddata_436208231 ## Generated based on D:\Projects\nsciter\sciter-js-sdk\include\sciter-x-def.h:186:3
  Drawpathmode_436207979* = enumdrawpathmode_436207954 ## Generated based on D:\Projects\nsciter\sciter-js-sdk\include\sciter-x-graphics.h:74:3
  Lpscnattachbehavior_436207983* = ptr Scnattachbehavior_436208323 ## Generated based on D:\Projects\nsciter\sciter-js-sdk\include\sciter-x-def.h:225:30
  structguid_436207989* = object
    Data1*: culong           ## Generated based on C:\Program Files (x86)\Windows Kits\10\Include\10.0.22000.0\shared\guiddef.h:22:16
    Data2*: cushort
    Data3*: cushort
    Data4*: array[8'i64, cuchar]

  Byte_436207991* = cuchar   ## Generated based on C:\Program Files (x86)\Windows Kits\10\Include\10.0.22000.0\shared\minwindef.h:158:29
  Sciterwindowcmd_436207993* = enumsciterwindowcmd_436208361 ## Generated based on D:\Projects\nsciter\sciter-js-sdk\include\sciter-x-def.h:518:4
  Keyparams_436207995* = structkeyparams_436208481 ## Generated based on D:\Projects\nsciter\sciter-js-sdk\include\sciter-x-behavior.h:223:5
  Hwnd_436207997* = ptr structhwnd_436208145 ## Generated based on C:\Program Files (x86)\Windows Kits\10\Include\10.0.22000.0\shared\windef.h:39:1
  Valueunittypeobject_436207999* = enumvalueunittypeobject_436208377 ## Generated based on D:\Projects\nsciter\sciter-js-sdk\include\value.h:97:3
  Scitercreatewindowflags_436208001* = enumscitercreatewindowflags_436208125 ## Generated based on D:\Projects\nsciter\sciter-js-sdk\include\sciter-x-def.h:706:3
  Gesturestate_436208003* = enumgesturestate_436208155 ## Generated based on D:\Projects\nsciter\sciter-js-sdk\include\sciter-x-behavior.h:330:5
  Hrequest_436208005* = pointer ## Generated based on D:\Projects\nsciter\sciter-js-sdk\include\sciter-x-request.h:29:18
  Sciterelementcallback_436208007* = proc (a0: Helement_436208347; a1: Lpvoid_436208279): Sbool_436208331 {.
      cdecl.}                ## Generated based on D:\Projects\nsciter\sciter-js-sdk\include\sciter-x-dom.h:403:27
  structscnenginedestroyed_436208016* = object
    code*: Uint_436208497    ## Generated based on D:\Projects\nsciter\sciter-js-sdk\include\sciter-x-def.h:229:16
    hwnd*: Hwnd_436207998

  Timerparams_436208018* = structtimerparams_436208093 ## Generated based on D:\Projects\nsciter\sciter-js-sdk\include\sciter-x-behavior.h:567:5
  Himg_436208020* = pointer  ## Generated based on D:\Projects\nsciter\sciter-js-sdk\include\sciter-x-graphics.h:41:29
  Keyevents_436208022* = enumkeyevents_436208555 ## Generated based on D:\Projects\nsciter\sciter-js-sdk\include\sciter-x-behavior.h:215:5
  Sciterrtoptions_436208024* = enumsciterrtoptions_436207960 ## Generated based on D:\Projects\nsciter\sciter-js-sdk\include\sciter-x-def.h:487:3
  Sciterxmsgfocus_436208026* = structsciterxmsgfocus_436208159 ## Generated based on D:\Projects\nsciter\sciter-js-sdk\include\sciter-x-msg.h:106:3
  Sciterxmsgpaint_436208028* = structsciterxmsgpaint_436207926 ## Generated based on D:\Projects\nsciter\sciter-js-sdk\include\sciter-x-msg.h:154:3
  somassett_436208030* = structsomassett_436208507 ## Generated based on D:\Projects\nsciter\sciter-js-sdk\include\sciter-om.h:15:3
  Exchangecmd_436208032* = enumexchangecmd_436208199 ## Generated based on D:\Projects\nsciter\sciter-js-sdk\include\sciter-x-behavior.h:369:5
  Sccolorstop_436208034* = structsccolorstop_436208289 ## Generated based on D:\Projects\nsciter\sciter-js-sdk\include\sciter-x-graphics.h:58:3
  Exchangeparams_436208036* = structexchangeparams_436208261 ## Generated based on D:\Projects\nsciter\sciter-js-sdk\include\sciter-x-behavior.h:388:5
  structsciterxmsg_436208038* = object
    msg*: Uint_436208497     ## Generated based on D:\Projects\nsciter\sciter-js-sdk\include\sciter-x-msg.h:36:16
  
  Nativefunctorinvoke_436208040* = proc (a0: pointer; a1: Uint_436208497;
      a2: ptr Value_436208175; a3: ptr Value_436208175): void {.cdecl.} ## Generated based on D:\Projects\nsciter\sciter-js-sdk\include\value.h:113:14
  structscitergraphicsapi_436208048* = object
    imagecreate*: proc (a0: ptr Himg_436208021; a1: Uint_436208497; a2: Uint_436208497;
                        a3: Sbool_436208331): Graphinresult_436207932 {.cdecl.} ## Generated based on D:\Projects\nsciter\sciter-js-sdk\include\sciter-x-graphics.h:133:8
    imagecreatefrompixmap*: proc (a0: ptr Himg_436208021; a1: Uint_436208497;
                                  a2: Uint_436208497; a3: Sbool_436208331;
                                  a4: ptr Byte_436207992): Graphinresult_436207932 {.
        cdecl.}
    imageaddref*: proc (a0: Himg_436208021): Graphinresult_436207932 {.cdecl.}
    imagerelease*: proc (a0: Himg_436208021): Graphinresult_436207932 {.cdecl.}
    imagegetinfo*: proc (a0: Himg_436208021; a1: ptr Uint_436208497;
                         a2: ptr Uint_436208497; a3: ptr Sbool_436208331): Graphinresult_436207932 {.
        cdecl.}
    imageclear*: proc (a0: Himg_436208021; a1: Sccolor_436208091): Graphinresult_436207932 {.
        cdecl.}
    imageload*: proc (a0: ptr Byte_436207992; a1: Uint_436208497; a2: ptr Himg_436208021): Graphinresult_436207932 {.
        cdecl.}
    imagesave*: proc (a0: Himg_436208021; a1: proc (a0: Lpvoid_436208279;
        a1: ptr Byte_436207992; a2: Uint_436208497): Sbool_436208331 {.cdecl.};
                      a2: pointer; a3: Uint_436208497; a4: Uint_436208497): Graphinresult_436207932 {.
        cdecl.}
    Rgba*: proc (a0: Uint_436208497; a1: Uint_436208497; a2: Uint_436208497;
                 a3: Uint_436208497): Sccolor_436208091 {.cdecl.}
    gcreate*: proc (a0: Himg_436208021; a1: ptr Hgfx_436207924): Graphinresult_436207932 {.
        cdecl.}
    gaddref*: proc (a0: Hgfx_436207924): Graphinresult_436207932 {.cdecl.}
    grelease*: proc (a0: Hgfx_436207924): Graphinresult_436207932 {.cdecl.}
    gline*: proc (a0: Hgfx_436207924; a1: Scpos_436208491; a2: Scpos_436208491;
                  a3: Scpos_436208491; a4: Scpos_436208491): Graphinresult_436207932 {.
        cdecl.}
    grectangle*: proc (a0: Hgfx_436207924; a1: Scpos_436208491; a2: Scpos_436208491;
                       a3: Scpos_436208491; a4: Scpos_436208491): Graphinresult_436207932 {.
        cdecl.}
    groundedrectangle*: proc (a0: Hgfx_436207924; a1: Scpos_436208491;
                              a2: Scpos_436208491; a3: Scpos_436208491;
                              a4: Scpos_436208491; a5: ptr Scdim_436208141): Graphinresult_436207932 {.
        cdecl.}
    gellipse*: proc (a0: Hgfx_436207924; a1: Scpos_436208491; a2: Scpos_436208491;
                     a3: Scdim_436208141; a4: Scdim_436208141): Graphinresult_436207932 {.
        cdecl.}
    garc*: proc (a0: Hgfx_436207924; a1: Scpos_436208491; a2: Scpos_436208491;
                 a3: Scpos_436208491; a4: Scpos_436208491; a5: Scangle_436208081;
                 a6: Scangle_436208081): Graphinresult_436207932 {.cdecl.}
    gstar*: proc (a0: Hgfx_436207924; a1: Scpos_436208491; a2: Scpos_436208491;
                  a3: Scdim_436208141; a4: Scdim_436208141; a5: Scangle_436208081;
                  a6: Uint_436208497): Graphinresult_436207932 {.cdecl.}
    gpolygon*: proc (a0: Hgfx_436207924; a1: ptr Scpos_436208491; a2: Uint_436208497): Graphinresult_436207932 {.
        cdecl.}
    gpolyline*: proc (a0: Hgfx_436207924; a1: ptr Scpos_436208491; a2: Uint_436208497): Graphinresult_436207932 {.
        cdecl.}
    pathcreate*: proc (a0: ptr Hpath_436208245): Graphinresult_436207932 {.cdecl.}
    pathaddref*: proc (a0: Hpath_436208245): Graphinresult_436207932 {.cdecl.}
    pathrelease*: proc (a0: Hpath_436208245): Graphinresult_436207932 {.cdecl.}
    pathmoveto*: proc (a0: Hpath_436208245; a1: Scpos_436208491; a2: Scpos_436208491;
                       a3: Sbool_436208331): Graphinresult_436207932 {.cdecl.}
    pathlineto*: proc (a0: Hpath_436208245; a1: Scpos_436208491; a2: Scpos_436208491;
                       a3: Sbool_436208331): Graphinresult_436207932 {.cdecl.}
    patharcto*: proc (a0: Hpath_436208245; a1: Scpos_436208491; a2: Scpos_436208491;
                      a3: Scangle_436208081; a4: Scdim_436208141; a5: Scdim_436208141;
                      a6: Sbool_436208331; a7: Sbool_436208331; a8: Sbool_436208331): Graphinresult_436207932 {.
        cdecl.}
    pathquadraticcurveto*: proc (a0: Hpath_436208245; a1: Scpos_436208491;
                                 a2: Scpos_436208491; a3: Scpos_436208491;
                                 a4: Scpos_436208491; a5: Sbool_436208331): Graphinresult_436207932 {.
        cdecl.}
    pathbeziercurveto*: proc (a0: Hpath_436208245; a1: Scpos_436208491;
                              a2: Scpos_436208491; a3: Scpos_436208491;
                              a4: Scpos_436208491; a5: Scpos_436208491;
                              a6: Scpos_436208491; a7: Sbool_436208331): Graphinresult_436207932 {.
        cdecl.}
    pathclosepath*: proc (a0: Hpath_436208245): Graphinresult_436207932 {.cdecl.}
    gdrawpath*: proc (a0: Hgfx_436207924; a1: Hpath_436208245; a2: Drawpathmode_436207980): Graphinresult_436207932 {.
        cdecl.}
    grotate*: proc (a0: Hgfx_436207924; a1: Scangle_436208081; a2: ptr Scpos_436208491;
                    a3: ptr Scpos_436208491): Graphinresult_436207932 {.cdecl.}
    gtranslate*: proc (a0: Hgfx_436207924; a1: Scpos_436208491; a2: Scpos_436208491): Graphinresult_436207932 {.
        cdecl.}
    gscale*: proc (a0: Hgfx_436207924; a1: Scdim_436208141; a2: Scdim_436208141): Graphinresult_436207932 {.
        cdecl.}
    gskew*: proc (a0: Hgfx_436207924; a1: Scdim_436208141; a2: Scdim_436208141): Graphinresult_436207932 {.
        cdecl.}
    gtransform*: proc (a0: Hgfx_436207924; a1: Scpos_436208491; a2: Scpos_436208491;
                       a3: Scpos_436208491; a4: Scpos_436208491; a5: Scpos_436208491;
                       a6: Scpos_436208491): Graphinresult_436207932 {.cdecl.}
    gstatesave*: proc (a0: Hgfx_436207924): Graphinresult_436207932 {.cdecl.}
    gstaterestore*: proc (a0: Hgfx_436207924): Graphinresult_436207932 {.cdecl.}
    glinewidth*: proc (a0: Hgfx_436207924; a1: Scdim_436208141): Graphinresult_436207932 {.
        cdecl.}
    glinejoin*: proc (a0: Hgfx_436207924; a1: Sciterlinejointype_436207950): Graphinresult_436207932 {.
        cdecl.}
    glinecap*: proc (a0: Hgfx_436207924; a1: Sciterlinecaptype_436208217): Graphinresult_436207932 {.
        cdecl.}
    glinecolor*: proc (a0: Hgfx_436207924; a1: Sccolor_436208091): Graphinresult_436207932 {.
        cdecl.}
    gfillcolor*: proc (a0: Hgfx_436207924; a1: Sccolor_436208091): Graphinresult_436207932 {.
        cdecl.}
    glinegradientlinear*: proc (a0: Hgfx_436207924; a1: Scpos_436208491;
                                a2: Scpos_436208491; a3: Scpos_436208491;
                                a4: Scpos_436208491; a5: ptr Sccolorstop_436208035;
                                a6: Uint_436208497): Graphinresult_436207932 {.
        cdecl.}
    gfillgradientlinear*: proc (a0: Hgfx_436207924; a1: Scpos_436208491;
                                a2: Scpos_436208491; a3: Scpos_436208491;
                                a4: Scpos_436208491; a5: ptr Sccolorstop_436208035;
                                a6: Uint_436208497): Graphinresult_436207932 {.
        cdecl.}
    glinegradientradial*: proc (a0: Hgfx_436207924; a1: Scpos_436208491;
                                a2: Scpos_436208491; a3: Scdim_436208141;
                                a4: Scdim_436208141; a5: ptr Sccolorstop_436208035;
                                a6: Uint_436208497): Graphinresult_436207932 {.
        cdecl.}
    gfillgradientradial*: proc (a0: Hgfx_436207924; a1: Scpos_436208491;
                                a2: Scpos_436208491; a3: Scdim_436208141;
                                a4: Scdim_436208141; a5: ptr Sccolorstop_436208035;
                                a6: Uint_436208497): Graphinresult_436207932 {.
        cdecl.}
    gfillmode*: proc (a0: Hgfx_436207924; a1: Sbool_436208331): Graphinresult_436207932 {.
        cdecl.}
    textcreateforelement*: proc (a0: ptr Htext_436208197; a1: Lpcwstr_436208487;
                                 a2: Uint_436208497; a3: Helement_436208347;
                                 a4: Lpcwstr_436208487): Graphinresult_436207932 {.
        cdecl.}
    textcreateforelementandstyle*: proc (a0: ptr Htext_436208197; a1: Lpcwstr_436208487;
        a2: Uint_436208497; a3: Helement_436208347; a4: Lpcwstr_436208487;
        a5: Uint_436208497): Graphinresult_436207932 {.cdecl.}
    textaddref*: proc (a0: Htext_436208197): Graphinresult_436207932 {.cdecl.}
    textrelease*: proc (a0: Htext_436208197): Graphinresult_436207932 {.cdecl.}
    textgetmetrics*: proc (a0: Htext_436208197; a1: ptr Scdim_436208141;
                           a2: ptr Scdim_436208141; a3: ptr Scdim_436208141;
                           a4: ptr Scdim_436208141; a5: ptr Scdim_436208141;
                           a6: ptr Uint_436208497): Graphinresult_436207932 {.
        cdecl.}
    textsetbox*: proc (a0: Htext_436208197; a1: Scdim_436208141; a2: Scdim_436208141): Graphinresult_436207932 {.
        cdecl.}
    gdrawtext*: proc (a0: Hgfx_436207924; a1: Htext_436208197; a2: Scpos_436208491;
                      a3: Scpos_436208491; a4: Uint_436208497): Graphinresult_436207932 {.
        cdecl.}
    gdrawimage*: proc (a0: Hgfx_436207924; a1: Himg_436208021; a2: Scpos_436208491;
                       a3: Scpos_436208491; a4: ptr Scdim_436208141;
                       a5: ptr Scdim_436208141; a6: ptr Uint_436208497;
                       a7: ptr Uint_436208497; a8: ptr Uint_436208497;
                       a9: ptr Uint_436208497; a10: ptr cfloat): Graphinresult_436207932 {.
        cdecl.}
    gworldtoscreen*: proc (a0: Hgfx_436207924; a1: ptr Scpos_436208491;
                           a2: ptr Scpos_436208491): Graphinresult_436207932 {.
        cdecl.}
    gscreentoworld*: proc (a0: Hgfx_436207924; a1: ptr Scpos_436208491;
                           a2: ptr Scpos_436208491): Graphinresult_436207932 {.
        cdecl.}
    gpushclipbox*: proc (a0: Hgfx_436207924; a1: Scpos_436208491; a2: Scpos_436208491;
                         a3: Scpos_436208491; a4: Scpos_436208491; a5: cfloat): Graphinresult_436207932 {.
        cdecl.}
    gpushclippath*: proc (a0: Hgfx_436207924; a1: Hpath_436208245; a2: cfloat): Graphinresult_436207932 {.
        cdecl.}
    gpopclip*: proc (a0: Hgfx_436207924): Graphinresult_436207932 {.cdecl.}
    imagepaint*: proc (a0: Himg_436208021; a1: proc (a0: Lpvoid_436208279;
        a1: Hgfx_436207924; a2: Uint_436208497; a3: Uint_436208497): void {.
        cdecl.}; a2: pointer): Graphinresult_436207932 {.cdecl.}
    vwrapgfx*: proc (a0: Hgfx_436207924; a1: ptr Value_436208175): Graphinresult_436207932 {.
        cdecl.}
    vwrapimage*: proc (a0: Himg_436208021; a1: ptr Value_436208175): Graphinresult_436207932 {.
        cdecl.}
    vwrappath*: proc (a0: Hpath_436208245; a1: ptr Value_436208175): Graphinresult_436207932 {.
        cdecl.}
    vwraptext*: proc (a0: Htext_436208197; a1: ptr Value_436208175): Graphinresult_436207932 {.
        cdecl.}
    vunwrapgfx*: proc (a0: ptr Value_436208175; a1: ptr Hgfx_436207924): Graphinresult_436207932 {.
        cdecl.}
    vunwrapimage*: proc (a0: ptr Value_436208175; a1: ptr Himg_436208021): Graphinresult_436207932 {.
        cdecl.}
    vunwrappath*: proc (a0: ptr Value_436208175; a1: ptr Hpath_436208245): Graphinresult_436207932 {.
        cdecl.}
    vunwraptext*: proc (a0: ptr Value_436208175; a1: ptr Htext_436208197): Graphinresult_436207932 {.
        cdecl.}
    gflush*: proc (a0: Hgfx_436207924): Graphinresult_436207932 {.cdecl.}
    imagecreatefromelement*: proc (a0: ptr Himg_436208021; a1: Helement_436208347): Graphinresult_436207932 {.
        cdecl.}

  Eventgroups_436208050* = enumeventgroups_436208369 ## Generated based on D:\Projects\nsciter\sciter-js-sdk\include\sciter-x-behavior.h:59:5
  Lpcwstrreceiver_436208052* = proc (a0: Lpcwstr_436208487; a1: Uint_436208497;
                                     a2: Lpvoid_436208279): void {.cdecl.} ## Generated based on D:\Projects\nsciter\sciter-js-sdk\include\sciter-x-primitives.h:293:26
  wchart_436208054* = cushort ## Generated based on C:\Program Files\Microsoft Visual Studio\2022\Community\VC\Tools\MSVC\14.31.31103\include\vcruntime.h:228:28
  structinitializationparams_436208056* = object
    cmd*: Uint_436208497     ## Generated based on D:\Projects\nsciter\sciter-js-sdk\include\sciter-x-behavior.h:107:18
  
  structsomparams_data_t* {.union.} = object
    passport*: ptr sompassportt_436208271
    asset*: ptr somassett_436208031

  structsomparams_436208058* = object
    cmd*: Uint_436208497     ## Generated based on D:\Projects\nsciter\sciter-js-sdk\include\sciter-x-behavior.h:118:18
    data*: structsomparams_data_t

  structtagmsg_436208060* = object
    hwnd*: Hwnd_436207998    ## Generated based on C:\Program Files (x86)\Windows Kits\10\Include\10.0.22000.0\um\winuser.h:1872:16
    message*: Uint_436208497
    wparam*: Wparam_436208445
    lparam*: Lparam_436208543
    time*: Dword_436208229
    pt*: Point_436208387

  Lpscndataloaded_436208062* = ptr Scndataloaded_436208509 ## Generated based on D:\Projects\nsciter\sciter-js-sdk\include\sciter-x-def.h:209:27
  Scitervalue_436208064* = Value_436208175 ## Generated based on D:\Projects\nsciter\sciter-js-sdk\include\sciter-x-value.h:29:17
  Mouseparams_436208068* = structmouseparams_436208425 ## Generated based on D:\Projects\nsciter\sciter-js-sdk\include\sciter-x-behavior.h:185:5
  structsciterxmsgkey_436208070* = object
    header*: Sciterxmsg_436208479 ## Generated based on D:\Projects\nsciter\sciter-js-sdk\include\sciter-x-msg.h:90:16
    event*: Keyevents_436208023
    code*: Uint_436208497
    modifiers*: Keyboardstates_436208335

  Long_436208072* = clong    ## Generated based on C:\Program Files (x86)\Windows Kits\10\Include\10.0.22000.0\um\winnt.h:469:14
  Lpcbytereceiver_436208074* = proc (a0: Lpcbyte_436207946; a1: Uint_436208497;
                                     a2: Lpvoid_436208279): void {.cdecl.} ## Generated based on D:\Projects\nsciter\sciter-js-sdk\include\sciter-x-primitives.h:295:26
  Drawevents_436208076* = enumdrawevents_436208043 ## Generated based on D:\Projects\nsciter\sciter-js-sdk\include\sciter-x-behavior.h:397:5
  Sciterxmsgdestroy_436208078* = structsciterxmsgdestroy_436208121 ## Generated based on D:\Projects\nsciter\sciter-js-sdk\include\sciter-x-msg.h:60:3
  Scangle_436208080* = Screal_436208287 ## Generated based on D:\Projects\nsciter\sciter-js-sdk\include\sciter-x-graphics.h:51:18
  Lpscnpostednotification_436208082* = ptr Scnpostednotification_436207948 ## Generated based on D:\Projects\nsciter\sciter-js-sdk\include\sciter-x-def.h:248:34
  Lpscnkeyboardrequest_436208084* = ptr Scnkeyboardrequest_436208291 ## Generated based on D:\Projects\nsciter\sciter-js-sdk\include\sciter-x-def.h:268:31
  somitemnextt_436208086* = proc (a0: ptr somassett_436208031;
                                  a1: ptr Scitervalue_436208065;
                                  a2: ptr Scitervalue_436208065): Sbool_436208331 {.
      cdecl.}                ## Generated based on D:\Projects\nsciter\sciter-js-sdk\include\sciter-om-def.h:25:16
  Ddmodes_436208088* = enumddmodes_436208311 ## Generated based on D:\Projects\nsciter\sciter-js-sdk\include\sciter-x-behavior.h:377:5
  Sccolor_436208090* = cuint ## Generated based on D:\Projects\nsciter\sciter-js-sdk\include\sciter-x-graphics.h:52:22
  structtimerparams_436208092* = object
    timerid*: Uintptr_436208315 ## Generated based on D:\Projects\nsciter\sciter-js-sdk\include\sciter-x-behavior.h:564:18
  
  Initializationevents_436208094* = enuminitializationevents_436208353 ## Generated based on D:\Projects\nsciter\sciter-js-sdk\include\sciter-x-behavior.h:105:5
  Somparams_436208096* = structsomparams_436208059 ## Generated based on D:\Projects\nsciter\sciter-js-sdk\include\sciter-x-behavior.h:128:5
  Lpcstrreceiver_436208104* = proc (a0: Lpcstr_436208213; a1: Uint_436208497;
                                    a2: Lpvoid_436208279): void {.cdecl.} ## Generated based on D:\Projects\nsciter\sciter-js-sdk\include\sciter-x-primitives.h:294:26
  structsciterxmsgmouse_436208106* = object
    header*: Sciterxmsg_436208479 ## Generated based on D:\Projects\nsciter\sciter-js-sdk\include\sciter-x-msg.h:79:16
    event*: Mouseevents_436208237
    button*: Mousebuttons_436208161
    modifiers*: Keyboardstates_436208335
    pos*: Point_436208387

  Methodparams_436208108* = structmethodparams_436208223 ## Generated based on D:\Projects\nsciter\sciter-js-sdk\include\sciter-x-dom.h:89:32
  structscrollparams_436208110* = object
    cmd*: Uint_436208497     ## Generated based on D:\Projects\nsciter\sciter-js-sdk\include\sciter-x-behavior.h:300:18
    target*: Helement_436208347
    pos*: Int_436208501
    vertical*: Sbool_436208331
    source*: Uint_436208497
    reason*: Uint_436208497

  structsciterxmsgresolution_436208112* = object
    header*: Sciterxmsg_436208479 ## Generated based on D:\Projects\nsciter\sciter-js-sdk\include\sciter-x-msg.h:71:16
    pixelsperinch*: Uint_436208497

  Scngraphicscriticalfailure_436208116* = structscngraphicscriticalfailure_436208475 ## Generated based on D:\Projects\nsciter\sciter-js-sdk\include\sciter-x-def.h:256:3
  Lpelementeventproc_436208118* = proc (a0: Lpvoid_436208279; a1: Helement_436208347;
                                        a2: Uint_436208497; a3: Lpvoid_436208279): Sbool_436208331 {.
      cdecl.}                ## Generated based on D:\Projects\nsciter\sciter-js-sdk\include\sciter-x-dom.h:559:27
  structsciterxmsgdestroy_436208120* = object
    header*: Sciterxmsg_436208479 ## Generated based on D:\Projects\nsciter\sciter-js-sdk\include\sciter-x-msg.h:55:16
  
  Sciterimageencoding_436208122* = enumsciterimageencoding_436208281 ## Generated based on D:\Projects\nsciter\sciter-js-sdk\include\sciter-x-graphics.h:113:3
  Sciterlibraryinitfunc_436208126* = proc (a0: ptr Isciterapi_436208351;
      a1: ptr Scitervalue_436208065): Sbool_436208331 {.cdecl.} ## Generated based on D:\Projects\nsciter\sciter-js-sdk\include\sciter-x.h:47:21
  Int64_436208128* = clonglong ## Generated based on C:\Program Files (x86)\Windows Kits\10\Include\10.0.22000.0\shared\basetsd.h:78:29
  Sciterxmsgresolution_436208130* = structsciterxmsgresolution_436208113 ## Generated based on D:\Projects\nsciter\sciter-js-sdk\include\sciter-x-msg.h:77:3
  Rect_436208132* = structtagrect_436208569 ## Generated based on C:\Program Files (x86)\Windows Kits\10\Include\10.0.22000.0\shared\windef.h:160:3
  Scninvalidaterect_436208134* = structscninvalidaterect_436208185 ## Generated based on D:\Projects\nsciter\sciter-js-sdk\include\sciter-x-def.h:276:3
  Requesttype_436208136* = enumrequesttype_436208421 ## Generated based on D:\Projects\nsciter\sciter-js-sdk\include\sciter-x-dom.h:745:3
  Scrollsource_436208138* = enumscrollsource_436207974 ## Generated based on D:\Projects\nsciter\sciter-js-sdk\include\sciter-x-behavior.h:287:5
  Scdim_436208140* = Screal_436208287 ## Generated based on D:\Projects\nsciter\sciter-js-sdk\include\sciter-x-graphics.h:50:18
  structscnpostednotification_436208142* = object
    code*: Uint_436208497    ## Generated based on D:\Projects\nsciter\sciter-js-sdk\include\sciter-x-def.h:239:16
    hwnd*: Hwnd_436207998
    wparam*: Uintptr_436208315
    lparam*: Uintptr_436208315
    lreturn*: Uintptr_436208315

  structhwnd_436208144* = object
    unused*: cint            ## Generated based on C:\Program Files (x86)\Windows Kits\10\Include\10.0.22000.0\shared\windef.h:39:1
  
  Clickreason_436208146* = enumclickreason_436207936 ## Generated based on D:\Projects\nsciter\sciter-js-sdk\include\sciter-x-behavior.h:538:5
  structdataarrivedparams_436208148* = object
    initiator*: Helement_436208347 ## Generated based on D:\Projects\nsciter\sciter-js-sdk\include\sciter-x-behavior.h:640:18
    data*: Lpcbyte_436207946
    datasize*: Uint_436208497
    datatype*: Uint_436208497
    status*: Uint_436208497
    uri*: Lpcwstr_436208487

  structscnattachbehavior_436208150* = object
    code*: Uint_436208497    ## Generated based on D:\Projects\nsciter\sciter-js-sdk\include\sciter-x-def.h:213:16
    hwnd*: Hwnd_436207998
    element*: Helement_436208347
    behaviorname*: Lpcstr_436208213
    elementproc*: proc (a0: Lpvoid_436208279; a1: Helement_436208347; a2: Uint_436208497;
                        a3: Lpvoid_436208279): Sbool_436208331 {.cdecl.}
    elementtag*: Lpvoid_436208279

  Outputseverity_436208156* = enumoutputseverity_436207988 ## Generated based on D:\Projects\nsciter\sciter-js-sdk\include\sciter-x-def.h:748:3
  structsciterxmsgfocus_436208158* = object
    header*: Sciterxmsg_436208479 ## Generated based on D:\Projects\nsciter\sciter-js-sdk\include\sciter-x-msg.h:100:16
    got*: Sbool_436208331

  Mousebuttons_436208160* = enummousebuttons_436207930 ## Generated based on D:\Projects\nsciter\sciter-js-sdk\include\sciter-x-behavior.h:88:5
  Elementbitmapreceiver_436208162* = proc (a0: Lpcbyte_436207946; a1: Int_436208501;
      a2: Int_436208501; a3: Uint_436208497; a4: Uint_436208497; a5: Lpvoid_436208279): void {.
      cdecl.}                ## Generated based on D:\Projects\nsciter\sciter-js-sdk\include\sciter-x-msg.h:126:26
  Sciterscrollflags_436208164* = enumsciterscrollflags_436208297 ## Generated based on D:\Projects\nsciter\sciter-js-sdk\include\sciter-x-dom.h:343:3
  Lpsciterrequestapi_436208168* = ptr structsciterrequestapi_436208553 ## Generated based on D:\Projects\nsciter\sciter-js-sdk\include\sciter-x-request.h:203:34
  structscitercallbacknotification_436208170* = object
    code*: Uint_436208497    ## Generated based on D:\Projects\nsciter\sciter-js-sdk\include\sciter-x-def.h:154:16
    hwnd*: Hwnd_436207998

  Lpscngraphicscriticalfailure_436208172* = ptr Scngraphicscriticalfailure_436208117 ## Generated based on D:\Projects\nsciter\sciter-js-sdk\include\sciter-x-def.h:258:40
  Value_436208174* = object
    t*: Uint_436208497       ## Generated based on D:\Projects\nsciter\sciter-js-sdk\include\value.h:14:9
    u*: Uint_436208497
    d*: Uint64_436208561

  Lpuint_436208176* = ptr Uint_436208497 ## Generated based on D:\Projects\nsciter\sciter-js-sdk\include\sciter-x-primitives.h:285:17
  Valueunitundefined_436208178* = enumvalueunitundefined_436208379 ## Generated based on D:\Projects\nsciter\sciter-js-sdk\include\value.h:101:3
  Editchangedreason_436208182* = enumeditchangedreason_436208263 ## Generated based on D:\Projects\nsciter\sciter-js-sdk\include\sciter-x-behavior.h:547:5
  structscninvalidaterect_436208184* = object
    code*: Uint_436208497    ## Generated based on D:\Projects\nsciter\sciter-js-sdk\include\sciter-x-def.h:272:16
    hwnd*: Hwnd_436207998
    invalidrect*: Rect_436208133

  somassetclasst_436208190* = structsomassetclasst_436208409 ## Generated based on D:\Projects\nsciter\sciter-js-sdk\include\sciter-om.h:22:3
  Iid_436208192* = Guid_436208393 ## Generated based on C:\Program Files (x86)\Windows Kits\10\Include\10.0.22000.0\shared\guiddef.h:86:14
  Requestresult_436208194* = enumrequestresult_436208451 ## Generated based on D:\Projects\nsciter\sciter-js-sdk\include\sciter-x-request.h:39:3
  Htext_436208196* = pointer ## Generated based on D:\Projects\nsciter\sciter-js-sdk\include\sciter-x-graphics.h:43:29
  structtagsize_436208202* = object
    cx*: Long_436208073      ## Generated based on C:\Program Files (x86)\Windows Kits\10\Include\10.0.22000.0\shared\windef.h:186:16
    cy*: Long_436208073

  Lpscnenginedestroyed_436208206* = ptr Scnenginedestroyed_436208389 ## Generated based on D:\Projects\nsciter\sciter-js-sdk\include\sciter-x-def.h:235:31
  Lprect_436208210* = ptr structtagrect_436208569 ## Generated based on C:\Program Files (x86)\Windows Kits\10\Include\10.0.22000.0\shared\windef.h:160:36
  Lpcstr_436208212* = ptr Char_436208227 ## Generated based on C:\Program Files (x86)\Windows Kits\10\Include\10.0.22000.0\um\winnt.h:561:39
  Elementcomparator_436208214* = proc (a0: Helement_436208347; a1: Helement_436208347;
                                       a2: Lpvoid_436208279): Int_436208501 {.
      cdecl.}                ## Generated based on D:\Projects\nsciter\sciter-js-sdk\include\sciter-x-dom.h:810:25
  Sciterlinecaptype_436208216* = enumsciterlinecaptype_436208345 ## Generated based on D:\Projects\nsciter\sciter-js-sdk\include\sciter-x-graphics.h:89:3
  Valueunittypedate_436208218* = enumvalueunittypedate_436208399 ## Generated based on D:\Projects\nsciter\sciter-js-sdk\include\value.h:86:3
  Hposition_436208220* = structhposition_436208431 ## Generated based on D:\Projects\nsciter\sciter-js-sdk\include\sciter-x-dom.h:46:51
  structmethodparams_436208222* = object
    methodid*: Uint_436208497 ## Generated based on D:\Projects\nsciter\sciter-js-sdk\include\sciter-x-dom.h:81:10
  
  Lpsize_436208224* = ptr structtagsize_436208203 ## Generated based on C:\Program Files (x86)\Windows Kits\10\Include\10.0.22000.0\shared\windef.h:190:18
  Char_436208226* = cschar   ## Generated based on C:\Program Files (x86)\Windows Kits\10\Include\10.0.22000.0\um\winnt.h:467:14
  Dword_436208228* = culong  ## Generated based on C:\Program Files (x86)\Windows Kits\10\Include\10.0.22000.0\shared\minwindef.h:156:29
  structscnloaddata_436208230* = object
    code*: Uint_436208497    ## Generated based on D:\Projects\nsciter\sciter-js-sdk\include\sciter-x-def.h:171:16
    hwnd*: Hwnd_436207998
    uri*: Lpcwstr_436208487
    outdata*: Lpcbyte_436207946
    outdatasize*: Uint_436208497
    datatype*: Uint_436208497
    requestid*: Hrequest_436208006
    principal*: Helement_436208347
    initiator*: Helement_436208347

  Hresult_436208232* = clong ## Generated based on C:\Program Files (x86)\Windows Kits\10\Include\10.0.22000.0\um\winnt.h:700:49
  Mouseevents_436208236* = enummouseevents_436208277 ## Generated based on D:\Projects\nsciter\sciter-js-sdk\include\sciter-x-behavior.h:169:5
  Lpsciterhostcallback_436208238* = proc (a0: Lpscitercallbacknotification_436208525;
      a1: Lpvoid_436208279): Uint_436208497 {.cdecl.} ## Generated based on D:\Projects\nsciter\sciter-js-sdk\include\sciter-x-def.h:164:30
  Initializationparams_436208240* = structinitializationparams_436208057 ## Generated based on D:\Projects\nsciter\sciter-js-sdk\include\sciter-x-behavior.h:110:5
  Urldatareceiver_436208242* = proc (a0: ptr Urldata_436208325; a1: Lpvoid_436208279): void {.
      cdecl.}                ## Generated based on D:\Projects\nsciter\sciter-js-sdk\include\sciter-x-def.h:571:26
  Hpath_436208244* = pointer ## Generated based on D:\Projects\nsciter\sciter-js-sdk\include\sciter-x-graphics.h:42:29
  Behaviormethodidentifiers_436208246* = enumbehaviormethodidentifiers_436208047 ## Generated based on D:\Projects\nsciter\sciter-js-sdk\include\sciter-x-behavior.h:608:5
  Sciterwindowdelegate_436208248* = proc (a0: Hwnd_436207998; a1: Uint_436208497;
      a2: Wparam_436208445; a3: Lparam_436208543; a4: Lpvoid_436208279;
      a5: ptr Sbool_436208331): Lresult_436207934 {.cdecl.} ## Generated based on D:\Projects\nsciter\sciter-js-sdk\include\sciter-x-def.h:689:31
  structsciterxmsgheartbit_436208252* = object
    header*: Sciterxmsg_436208479 ## Generated based on D:\Projects\nsciter\sciter-js-sdk\include\sciter-x-msg.h:109:16
    time*: Uint_436208497

  structscndataloaded_436208254* = object
    code*: Uint_436208497    ## Generated based on D:\Projects\nsciter\sciter-js-sdk\include\sciter-x-def.h:193:16
    hwnd*: Hwnd_436207998
    uri*: Lpcwstr_436208487
    data*: Lpcbyte_436207946
    datasize*: Uint_436208497
    datatype*: Uint_436208497
    status*: Uint_436208497

  somitemgettert_436208258* = proc (a0: ptr somassett_436208031;
                                    a1: ptr Scitervalue_436208065;
                                    a2: ptr Scitervalue_436208065): Sbool_436208331 {.
      cdecl.}                ## Generated based on D:\Projects\nsciter\sciter-js-sdk\include\sciter-om-def.h:23:16
  structexchangeparams_436208260* = object
    cmd*: Uint_436208497     ## Generated based on D:\Projects\nsciter\sciter-js-sdk\include\sciter-x-behavior.h:379:18
    target*: Helement_436208347
    source*: Helement_436208347
    pos*: Point_436208387
    posview*: Point_436208387
    mode*: Uint_436208497
    data*: Scitervalue_436208065

  Behavioreventparams_436208264* = structbehavioreventparams_436207964 ## Generated based on D:\Projects\nsciter\sciter-js-sdk\include\sciter-x-behavior.h:562:5
  Draggingtype_436208266* = enumdraggingtype_436208205 ## Generated based on D:\Projects\nsciter\sciter-js-sdk\include\sciter-x-behavior.h:135:5
  somdisposet_436208268* = proc (a0: ptr somassett_436208031): void {.cdecl.} ## Generated based on D:\Projects\nsciter\sciter-js-sdk\include\sciter-om-def.h:29:15
  sompassportt_436208270* = structsompassportt_436208465 ## Generated based on D:\Projects\nsciter\sciter-js-sdk\include\sciter-om-def.h:69:3
  Scriptingmethodparams_436208272* = structscriptingmethodparams_436208563 ## Generated based on D:\Projects\nsciter\sciter-js-sdk\include\sciter-x-behavior.h:616:5
  Sciterxmsgsize_436208274* = structsciterxmsgsize_436208301 ## Generated based on D:\Projects\nsciter\sciter-js-sdk\include\sciter-x-msg.h:69:3
  Lpvoid_436208278* = pointer ## Generated based on C:\Program Files (x86)\Windows Kits\10\Include\10.0.22000.0\shared\minwindef.h:173:30
  sompropgettert_436208282* = proc (a0: ptr somassett_436208031;
                                    a1: ptr Scitervalue_436208065): Sbool_436208331 {.
      cdecl.}                ## Generated based on D:\Projects\nsciter\sciter-js-sdk\include\sciter-om-def.h:21:16
  Msg_436208284* = structtagmsg_436208061 ## Generated based on C:\Program Files (x86)\Windows Kits\10\Include\10.0.22000.0\um\winuser.h:1882:3
  Screal_436208286* = cfloat ## Generated based on D:\Projects\nsciter\sciter-js-sdk\include\sciter-x-graphics.h:47:15
  structsccolorstop_436208288* = object
    color*: Sccolor_436208091 ## Generated based on D:\Projects\nsciter\sciter-js-sdk\include\sciter-x-graphics.h:54:16
    offset*: cfloat

  Scnkeyboardrequest_436208290* = structscnkeyboardrequest_436208485 ## Generated based on D:\Projects\nsciter\sciter-js-sdk\include\sciter-x-def.h:266:3
  Hrange_436208292* = pointer ## Generated based on D:\Projects\nsciter\sciter-js-sdk\include\sciter-x-dom.h:44:18
  structisciterapi_436208294* = object
    version*: Uint_436208497 ## Generated based on D:\Projects\nsciter\sciter-js-sdk\include\sciter-x-api.h:50:16
    Sciterclassname*: proc (): Lpcwstr_436208487 {.cdecl.}
    Sciterversion*: proc (a0: Sbool_436208331): Uint_436208497 {.cdecl.}
    Sciterdataready*: proc (a0: Hwnd_436207998; a1: Lpcwstr_436208487;
                            a2: Lpcbyte_436207946; a3: Uint_436208497): Sbool_436208331 {.
        cdecl.}
    Sciterdatareadyasync*: proc (a0: Hwnd_436207998; a1: Lpcwstr_436208487;
                                 a2: Lpcbyte_436207946; a3: Uint_436208497;
                                 a4: Lpvoid_436208279): Sbool_436208331 {.cdecl.}
    Sciterproc*: proc (a0: Hwnd_436207998; a1: Uint_436208497; a2: Wparam_436208445;
                       a3: Lparam_436208543): Lresult_436207934 {.cdecl.}
    Sciterprocnd*: proc (a0: Hwnd_436207998; a1: Uint_436208497; a2: Wparam_436208445;
                         a3: Lparam_436208543; a4: ptr Sbool_436208331): Lresult_436207934 {.
        cdecl.}
    Sciterloadfile*: proc (a0: Hwnd_436207998; a1: Lpcwstr_436208487): Sbool_436208331 {.
        cdecl.}
    Sciterloadhtml*: proc (a0: Hwnd_436207998; a1: Lpcbyte_436207946; a2: Uint_436208497;
                           a3: Lpcwstr_436208487): Sbool_436208331 {.cdecl.}
    Scitersetcallback*: proc (a0: Hwnd_436207998; a1: Lpsciterhostcallback_436208239;
                              a2: Lpvoid_436208279): void {.cdecl.}
    Scitersetmastercss*: proc (a0: Lpcbyte_436207946; a1: Uint_436208497): Sbool_436208331 {.
        cdecl.}
    Sciterappendmastercss*: proc (a0: Lpcbyte_436207946; a1: Uint_436208497): Sbool_436208331 {.
        cdecl.}
    Scitersetcss*: proc (a0: Hwnd_436207998; a1: Lpcbyte_436207946; a2: Uint_436208497;
                         a3: Lpcwstr_436208487; a4: Lpcwstr_436208487): Sbool_436208331 {.
        cdecl.}
    Scitersetmediatype*: proc (a0: Hwnd_436207998; a1: Lpcwstr_436208487): Sbool_436208331 {.
        cdecl.}
    Scitersetmediavars*: proc (a0: Hwnd_436207998; a1: ptr Scitervalue_436208065): Sbool_436208331 {.
        cdecl.}
    Scitergetminwidth*: proc (a0: Hwnd_436207998): Uint_436208497 {.cdecl.}
    Scitergetminheight*: proc (a0: Hwnd_436207998; a1: Uint_436208497): Uint_436208497 {.
        cdecl.}
    Scitercall*: proc (a0: Hwnd_436207998; a1: Lpcstr_436208213; a2: Uint_436208497;
                       a3: ptr Scitervalue_436208065; a4: ptr Scitervalue_436208065): Sbool_436208331 {.
        cdecl.}
    Scitereval*: proc (a0: Hwnd_436207998; a1: Lpcwstr_436208487; a2: Uint_436208497;
                       a3: ptr Scitervalue_436208065): Sbool_436208331 {.cdecl.}
    Sciterupdatewindow*: proc (a0: Hwnd_436207998): void {.cdecl.}
    Scitertranslatemessage*: proc (a0: ptr Msg_436208285): Sbool_436208331 {.
        cdecl.}
    Scitersetoption*: proc (a0: Hwnd_436207998; a1: Uint_436208497; a2: Uintptr_436208315): Sbool_436208331 {.
        cdecl.}
    Scitergetppi*: proc (a0: Hwnd_436207998; a1: ptr Uint_436208497;
                         a2: ptr Uint_436208497): void {.cdecl.}
    Scitergetviewexpando*: proc (a0: Hwnd_436207998; a1: ptr Value_436208175): Sbool_436208331 {.
        cdecl.}
    Sciterrenderd2d*: proc (a0: Hwnd_436207998; a1: ptr Iunknown_436208371): Sbool_436208331 {.
        cdecl.}
    Sciterd2dfactory*: proc (a0: ptr ptr Iunknown_436208371): Sbool_436208331 {.
        cdecl.}
    Sciterdwfactory*: proc (a0: ptr ptr Iunknown_436208371): Sbool_436208331 {.
        cdecl.}
    Scitergraphicscaps*: proc (a0: Lpuint_436208177): Sbool_436208331 {.cdecl.}
    Scitersethomeurl*: proc (a0: Hwnd_436207998; a1: Lpcwstr_436208487): Sbool_436208331 {.
        cdecl.}
    Scitercreatensview*: Lpvoid_436208279
    Scitercreatewidget*: Lpvoid_436208279
    Scitercreatewindow*: proc (a0: Uint_436208497; a1: Lprect_436208211; a2: proc (
        a0: Hwnd_436207998; a1: Uint_436208497; a2: Wparam_436208445;
        a3: Lparam_436208543; a4: Lpvoid_436208279; a5: ptr Sbool_436208331): Lresult_436207934 {.
        cdecl.}; a3: Lpvoid_436208279; a4: Hwnd_436207998): Hwnd_436207998 {.
        cdecl.}
    Scitersetupdebugoutput*: proc (a0: Hwnd_436207998; a1: Lpvoid_436208279;
                                   a2: Debugoutputproc_436208327): void {.cdecl.}
    Sciteruseelement*: proc (a0: Helement_436208347): Int_436208501 {.cdecl.}
    Sciterunuseelement*: proc (a0: Helement_436208347): Int_436208501 {.cdecl.}
    Scitergetrootelement*: proc (a0: Hwnd_436207998; a1: ptr Helement_436208347): Int_436208501 {.
        cdecl.}
    Scitergetfocuselement*: proc (a0: Hwnd_436207998; a1: ptr Helement_436208347): Int_436208501 {.
        cdecl.}
    Sciterfindelement*: proc (a0: Hwnd_436207998; a1: Point_436208387;
                              a2: ptr Helement_436208347): Int_436208501 {.cdecl.}
    Scitergetchildrencount*: proc (a0: Helement_436208347; a1: ptr Uint_436208497): Int_436208501 {.
        cdecl.}
    Scitergetnthchild*: proc (a0: Helement_436208347; a1: Uint_436208497;
                              a2: ptr Helement_436208347): Int_436208501 {.cdecl.}
    Scitergetparentelement*: proc (a0: Helement_436208347; a1: ptr Helement_436208347): Int_436208501 {.
        cdecl.}
    Scitergetelementhtmlcb*: proc (a0: Helement_436208347; a1: Sbool_436208331;
        a2: proc (a0: Lpcbyte_436207946; a1: Uint_436208497; a2: Lpvoid_436208279): void {.
        cdecl.}; a3: Lpvoid_436208279): Int_436208501 {.cdecl.}
    Scitergetelementtextcb*: proc (a0: Helement_436208347; a1: proc (
        a0: Lpcwstr_436208487; a1: Uint_436208497; a2: Lpvoid_436208279): void {.
        cdecl.}; a2: Lpvoid_436208279): Int_436208501 {.cdecl.}
    Scitersetelementtext*: proc (a0: Helement_436208347; a1: Lpcwstr_436208487;
                                 a2: Uint_436208497): Int_436208501 {.cdecl.}
    Scitergetattributecount*: proc (a0: Helement_436208347; a1: Lpuint_436208177): Int_436208501 {.
        cdecl.}
    Scitergetnthattributenamecb*: proc (a0: Helement_436208347; a1: Uint_436208497;
        a2: proc (a0: Lpcstr_436208213; a1: Uint_436208497; a2: Lpvoid_436208279): void {.
        cdecl.}; a3: Lpvoid_436208279): Int_436208501 {.cdecl.}
    Scitergetnthattributevaluecb*: proc (a0: Helement_436208347; a1: Uint_436208497;
        a2: proc (a0: Lpcwstr_436208487; a1: Uint_436208497; a2: Lpvoid_436208279): void {.
        cdecl.}; a3: Lpvoid_436208279): Int_436208501 {.cdecl.}
    Scitergetattributebynamecb*: proc (a0: Helement_436208347; a1: Lpcstr_436208213;
        a2: proc (a0: Lpcwstr_436208487; a1: Uint_436208497; a2: Lpvoid_436208279): void {.
        cdecl.}; a3: Lpvoid_436208279): Int_436208501 {.cdecl.}
    Scitersetattributebyname*: proc (a0: Helement_436208347; a1: Lpcstr_436208213;
                                     a2: Lpcwstr_436208487): Int_436208501 {.
        cdecl.}
    Sciterclearattributes*: proc (a0: Helement_436208347): Int_436208501 {.cdecl.}
    Scitergetelementindex*: proc (a0: Helement_436208347; a1: Lpuint_436208177): Int_436208501 {.
        cdecl.}
    Scitergetelementtype*: proc (a0: Helement_436208347; a1: ptr Lpcstr_436208213): Int_436208501 {.
        cdecl.}
    Scitergetelementtypecb*: proc (a0: Helement_436208347; a1: proc (a0: Lpcstr_436208213;
        a1: Uint_436208497; a2: Lpvoid_436208279): void {.cdecl.}; a2: Lpvoid_436208279): Int_436208501 {.
        cdecl.}
    Scitergetstyleattributecb*: proc (a0: Helement_436208347; a1: Lpcstr_436208213;
        a2: proc (a0: Lpcwstr_436208487; a1: Uint_436208497; a2: Lpvoid_436208279): void {.
        cdecl.}; a3: Lpvoid_436208279): Int_436208501 {.cdecl.}
    Scitersetstyleattribute*: proc (a0: Helement_436208347; a1: Lpcstr_436208213;
                                    a2: Lpcwstr_436208487): Int_436208501 {.
        cdecl.}
    Scitergetelementlocation*: proc (a0: Helement_436208347; a1: Lprect_436208211;
                                     a2: Uint_436208497): Int_436208501 {.cdecl.}
    Sciterscrolltoview*: proc (a0: Helement_436208347; a1: Uint_436208497): Int_436208501 {.
        cdecl.}
    Sciterupdateelement*: proc (a0: Helement_436208347; a1: Sbool_436208331): Int_436208501 {.
        cdecl.}
    Sciterrefreshelementarea*: proc (a0: Helement_436208347; a1: Rect_436208133): Int_436208501 {.
        cdecl.}
    Scitersetcapture*: proc (a0: Helement_436208347): Int_436208501 {.cdecl.}
    Sciterreleasecapture*: proc (a0: Helement_436208347): Int_436208501 {.cdecl.}
    Scitergetelementhwnd*: proc (a0: Helement_436208347; a1: ptr Hwnd_436207998;
                                 a2: Sbool_436208331): Int_436208501 {.cdecl.}
    Scitercombineurl*: proc (a0: Helement_436208347; a1: Lpwstr_436208493;
                             a2: Uint_436208497): Int_436208501 {.cdecl.}
    Sciterselectelements*: proc (a0: Helement_436208347; a1: Lpcstr_436208213;
        a2: proc (a0: Helement_436208347; a1: Lpvoid_436208279): Sbool_436208331 {.
        cdecl.}; a3: Lpvoid_436208279): Int_436208501 {.cdecl.}
    Sciterselectelementsw*: proc (a0: Helement_436208347; a1: Lpcwstr_436208487;
        a2: proc (a0: Helement_436208347; a1: Lpvoid_436208279): Sbool_436208331 {.
        cdecl.}; a3: Lpvoid_436208279): Int_436208501 {.cdecl.}
    Sciterselectparent*: proc (a0: Helement_436208347; a1: Lpcstr_436208213;
                               a2: Uint_436208497; a3: ptr Helement_436208347): Int_436208501 {.
        cdecl.}
    Sciterselectparentw*: proc (a0: Helement_436208347; a1: Lpcwstr_436208487;
                                a2: Uint_436208497; a3: ptr Helement_436208347): Int_436208501 {.
        cdecl.}
    Scitersetelementhtml*: proc (a0: Helement_436208347; a1: ptr Byte_436207992;
                                 a2: Uint_436208497; a3: Uint_436208497): Int_436208501 {.
        cdecl.}
    Scitergetelementuid*: proc (a0: Helement_436208347; a1: ptr Uint_436208497): Int_436208501 {.
        cdecl.}
    Scitergetelementbyuid*: proc (a0: Hwnd_436207998; a1: Uint_436208497;
                                  a2: ptr Helement_436208347): Int_436208501 {.
        cdecl.}
    Scitershowpopup*: proc (a0: Helement_436208347; a1: Helement_436208347;
                            a2: Uint_436208497): Int_436208501 {.cdecl.}
    Scitershowpopupat*: proc (a0: Helement_436208347; a1: Point_436208387;
                              a2: Uint_436208497): Int_436208501 {.cdecl.}
    Sciterhidepopup*: proc (a0: Helement_436208347): Int_436208501 {.cdecl.}
    Scitergetelementstate*: proc (a0: Helement_436208347; a1: ptr Uint_436208497): Int_436208501 {.
        cdecl.}
    Scitersetelementstate*: proc (a0: Helement_436208347; a1: Uint_436208497;
                                  a2: Uint_436208497; a3: Sbool_436208331): Int_436208501 {.
        cdecl.}
    Scitercreateelement*: proc (a0: Lpcstr_436208213; a1: Lpcwstr_436208487;
                                a2: ptr Helement_436208347): Int_436208501 {.
        cdecl.}
    Scitercloneelement*: proc (a0: Helement_436208347; a1: ptr Helement_436208347): Int_436208501 {.
        cdecl.}
    Sciterinsertelement*: proc (a0: Helement_436208347; a1: Helement_436208347;
                                a2: Uint_436208497): Int_436208501 {.cdecl.}
    Sciterdetachelement*: proc (a0: Helement_436208347): Int_436208501 {.cdecl.}
    Sciterdeleteelement*: proc (a0: Helement_436208347): Int_436208501 {.cdecl.}
    Scitersettimer*: proc (a0: Helement_436208347; a1: Uint_436208497;
                           a2: Uintptr_436208315): Int_436208501 {.cdecl.}
    Sciterdetacheventhandler*: proc (a0: Helement_436208347;
                                     a1: Lpelementeventproc_436208119;
                                     a2: Lpvoid_436208279): Int_436208501 {.
        cdecl.}
    Sciterattacheventhandler*: proc (a0: Helement_436208347;
                                     a1: Lpelementeventproc_436208119;
                                     a2: Lpvoid_436208279): Int_436208501 {.
        cdecl.}
    Sciterwindowattacheventhandler*: proc (a0: Hwnd_436207998;
        a1: Lpelementeventproc_436208119; a2: Lpvoid_436208279; a3: Uint_436208497): Int_436208501 {.
        cdecl.}
    Sciterwindowdetacheventhandler*: proc (a0: Hwnd_436207998;
        a1: Lpelementeventproc_436208119; a2: Lpvoid_436208279): Int_436208501 {.
        cdecl.}
    Scitersendevent*: proc (a0: Helement_436208347; a1: Uint_436208497;
                            a2: Helement_436208347; a3: Uintptr_436208315;
                            a4: ptr Sbool_436208331): Int_436208501 {.cdecl.}
    Sciterpostevent*: proc (a0: Helement_436208347; a1: Uint_436208497;
                            a2: Helement_436208347; a3: Uintptr_436208315): Int_436208501 {.
        cdecl.}
    Scitercallbehaviormethod*: proc (a0: Helement_436208347;
                                     a1: ptr structmethodparams_436208223): Int_436208501 {.
        cdecl.}
    Sciterrequestelementdata*: proc (a0: Helement_436208347; a1: Lpcwstr_436208487;
                                     a2: Uint_436208497; a3: Helement_436208347): Int_436208501 {.
        cdecl.}
    Sciterhttprequest*: proc (a0: Helement_436208347; a1: Lpcwstr_436208487;
                              a2: Uint_436208497; a3: Uint_436208497;
                              a4: ptr structrequestparam_436208401; a5: Uint_436208497): Int_436208501 {.
        cdecl.}
    Scitergetscrollinfo*: proc (a0: Helement_436208347; a1: Lppoint_436208547;
                                a2: Lprect_436208211; a3: Lpsize_436208225): Int_436208501 {.
        cdecl.}
    Scitersetscrollpos*: proc (a0: Helement_436208347; a1: Point_436208387;
                               a2: Sbool_436208331): Int_436208501 {.cdecl.}
    Scitergetelementintrinsicwidths*: proc (a0: Helement_436208347; a1: ptr Int_436208501;
        a2: ptr Int_436208501): Int_436208501 {.cdecl.}
    Scitergetelementintrinsicheight*: proc (a0: Helement_436208347; a1: Int_436208501;
        a2: ptr Int_436208501): Int_436208501 {.cdecl.}
    Sciteriselementvisible*: proc (a0: Helement_436208347; a1: ptr Sbool_436208331): Int_436208501 {.
        cdecl.}
    Sciteriselementenabled*: proc (a0: Helement_436208347; a1: ptr Sbool_436208331): Int_436208501 {.
        cdecl.}
    Scitersortelements*: proc (a0: Helement_436208347; a1: Uint_436208497;
                               a2: Uint_436208497; a3: proc (a0: Helement_436208347;
        a1: Helement_436208347; a2: Lpvoid_436208279): Int_436208501 {.cdecl.};
                               a4: Lpvoid_436208279): Int_436208501 {.cdecl.}
    Sciterswapelements*: proc (a0: Helement_436208347; a1: Helement_436208347): Int_436208501 {.
        cdecl.}
    Scitertraverseuievent*: proc (a0: Uint_436208497; a1: Lpvoid_436208279;
                                  a2: ptr Sbool_436208331): Int_436208501 {.
        cdecl.}
    Scitercallscriptingmethod*: proc (a0: Helement_436208347; a1: Lpcstr_436208213;
                                      a2: ptr Value_436208175; a3: Uint_436208497;
                                      a4: ptr Value_436208175): Int_436208501 {.
        cdecl.}
    Scitercallscriptingfunction*: proc (a0: Helement_436208347; a1: Lpcstr_436208213;
                                        a2: ptr Value_436208175; a3: Uint_436208497;
                                        a4: ptr Value_436208175): Int_436208501 {.
        cdecl.}
    Sciterevalelementscript*: proc (a0: Helement_436208347; a1: Lpcwstr_436208487;
                                    a2: Uint_436208497; a3: ptr Value_436208175): Int_436208501 {.
        cdecl.}
    Sciterattachhwndtoelement*: proc (a0: Helement_436208347; a1: Hwnd_436207998): Int_436208501 {.
        cdecl.}
    Scitercontrolgettype*: proc (a0: Helement_436208347; a1: ptr Uint_436208497): Int_436208501 {.
        cdecl.}
    Scitergetvalue*: proc (a0: Helement_436208347; a1: ptr Value_436208175): Int_436208501 {.
        cdecl.}
    Scitersetvalue*: proc (a0: Helement_436208347; a1: ptr Value_436208175): Int_436208501 {.
        cdecl.}
    Scitergetexpando*: proc (a0: Helement_436208347; a1: ptr Value_436208175;
                             a2: Sbool_436208331): Int_436208501 {.cdecl.}
    Scitergetobject*: proc (a0: Helement_436208347; a1: pointer; a2: Sbool_436208331): Int_436208501 {.
        cdecl.}
    Scitergetelementnamespace*: proc (a0: Helement_436208347; a1: pointer): Int_436208501 {.
        cdecl.}
    Scitergethighlightedelement*: proc (a0: Hwnd_436207998; a1: ptr Helement_436208347): Int_436208501 {.
        cdecl.}
    Scitersethighlightedelement*: proc (a0: Hwnd_436207998; a1: Helement_436208347): Int_436208501 {.
        cdecl.}
    Sciternodeaddref*: proc (a0: Hnode_436208499): Int_436208501 {.cdecl.}
    Sciternoderelease*: proc (a0: Hnode_436208499): Int_436208501 {.cdecl.}
    Sciternodecastfromelement*: proc (a0: Helement_436208347; a1: ptr Hnode_436208499): Int_436208501 {.
        cdecl.}
    Sciternodecasttoelement*: proc (a0: Hnode_436208499; a1: ptr Helement_436208347): Int_436208501 {.
        cdecl.}
    Sciternodefirstchild*: proc (a0: Hnode_436208499; a1: ptr Hnode_436208499): Int_436208501 {.
        cdecl.}
    Sciternodelastchild*: proc (a0: Hnode_436208499; a1: ptr Hnode_436208499): Int_436208501 {.
        cdecl.}
    Sciternodenextsibling*: proc (a0: Hnode_436208499; a1: ptr Hnode_436208499): Int_436208501 {.
        cdecl.}
    Sciternodeprevsibling*: proc (a0: Hnode_436208499; a1: ptr Hnode_436208499): Int_436208501 {.
        cdecl.}
    Sciternodeparent*: proc (a0: Hnode_436208499; a1: ptr Helement_436208347): Int_436208501 {.
        cdecl.}
    Sciternodenthchild*: proc (a0: Hnode_436208499; a1: Uint_436208497;
                               a2: ptr Hnode_436208499): Int_436208501 {.cdecl.}
    Sciternodechildrencount*: proc (a0: Hnode_436208499; a1: ptr Uint_436208497): Int_436208501 {.
        cdecl.}
    Sciternodetype*: proc (a0: Hnode_436208499; a1: ptr Uint_436208497): Int_436208501 {.
        cdecl.}
    Sciternodegettext*: proc (a0: Hnode_436208499; a1: proc (a0: Lpcwstr_436208487;
        a1: Uint_436208497; a2: Lpvoid_436208279): void {.cdecl.}; a2: Lpvoid_436208279): Int_436208501 {.
        cdecl.}
    Sciternodesettext*: proc (a0: Hnode_436208499; a1: Lpcwstr_436208487;
                              a2: Uint_436208497): Int_436208501 {.cdecl.}
    Sciternodeinsert*: proc (a0: Hnode_436208499; a1: Uint_436208497; a2: Hnode_436208499): Int_436208501 {.
        cdecl.}
    Sciternoderemove*: proc (a0: Hnode_436208499; a1: Sbool_436208331): Int_436208501 {.
        cdecl.}
    Scitercreatetextnode*: proc (a0: Lpcwstr_436208487; a1: Uint_436208497;
                                 a2: ptr Hnode_436208499): Int_436208501 {.cdecl.}
    Scitercreatecommentnode*: proc (a0: Lpcwstr_436208487; a1: Uint_436208497;
                                    a2: ptr Hnode_436208499): Int_436208501 {.
        cdecl.}
    Valueinit*: proc (a0: ptr Value_436208175): Uint_436208497 {.cdecl.}
    Valueclear*: proc (a0: ptr Value_436208175): Uint_436208497 {.cdecl.}
    Valuecompare*: proc (a0: ptr Value_436208175; a1: ptr Value_436208175): Uint_436208497 {.
        cdecl.}
    Valuecopy*: proc (a0: ptr Value_436208175; a1: ptr Value_436208175): Uint_436208497 {.
        cdecl.}
    Valueisolate*: proc (a0: ptr Value_436208175): Uint_436208497 {.cdecl.}
    Valuetype*: proc (a0: ptr Value_436208175; a1: ptr Uint_436208497;
                      a2: ptr Uint_436208497): Uint_436208497 {.cdecl.}
    Valuestringdata*: proc (a0: ptr Value_436208175; a1: ptr Lpcwstr_436208487;
                            a2: ptr Uint_436208497): Uint_436208497 {.cdecl.}
    Valuestringdataset*: proc (a0: ptr Value_436208175; a1: Lpcwstr_436208487;
                               a2: Uint_436208497; a3: Uint_436208497): Uint_436208497 {.
        cdecl.}
    Valueintdata*: proc (a0: ptr Value_436208175; a1: ptr Int_436208501): Uint_436208497 {.
        cdecl.}
    Valueintdataset*: proc (a0: ptr Value_436208175; a1: Int_436208501;
                            a2: Uint_436208497; a3: Uint_436208497): Uint_436208497 {.
        cdecl.}
    Valueint64data*: proc (a0: ptr Value_436208175; a1: ptr Int64_436208129): Uint_436208497 {.
        cdecl.}
    Valueint64dataset*: proc (a0: ptr Value_436208175; a1: Int64_436208129;
                              a2: Uint_436208497; a3: Uint_436208497): Uint_436208497 {.
        cdecl.}
    Valuefloatdata*: proc (a0: ptr Value_436208175; a1: ptr cdouble): Uint_436208497 {.
        cdecl.}
    Valuefloatdataset*: proc (a0: ptr Value_436208175; a1: cdouble; a2: Uint_436208497;
                              a3: Uint_436208497): Uint_436208497 {.cdecl.}
    Valuebinarydata*: proc (a0: ptr Value_436208175; a1: ptr Lpcbyte_436207946;
                            a2: ptr Uint_436208497): Uint_436208497 {.cdecl.}
    Valuebinarydataset*: proc (a0: ptr Value_436208175; a1: Lpcbyte_436207946;
                               a2: Uint_436208497; a3: Uint_436208497; a4: Uint_436208497): Uint_436208497 {.
        cdecl.}
    Valueelementscount*: proc (a0: ptr Value_436208175; a1: ptr Int_436208501): Uint_436208497 {.
        cdecl.}
    Valuenthelementvalue*: proc (a0: ptr Value_436208175; a1: Int_436208501;
                                 a2: ptr Value_436208175): Uint_436208497 {.
        cdecl.}
    Valuenthelementvalueset*: proc (a0: ptr Value_436208175; a1: Int_436208501;
                                    a2: ptr Value_436208175): Uint_436208497 {.
        cdecl.}
    Valuenthelementkey*: proc (a0: ptr Value_436208175; a1: Int_436208501;
                               a2: ptr Value_436208175): Uint_436208497 {.cdecl.}
    Valueenumelements*: proc (a0: ptr Value_436208175; a1: proc (a0: Lpvoid_436208279;
        a1: ptr Value_436208175; a2: ptr Value_436208175): Sbool_436208331 {.
        cdecl.}; a2: Lpvoid_436208279): Uint_436208497 {.cdecl.}
    Valuesetvaluetokey*: proc (a0: ptr Value_436208175; a1: ptr Value_436208175;
                               a2: ptr Value_436208175): Uint_436208497 {.cdecl.}
    Valuegetvalueofkey*: proc (a0: ptr Value_436208175; a1: ptr Value_436208175;
                               a2: ptr Value_436208175): Uint_436208497 {.cdecl.}
    Valuetostring*: proc (a0: ptr Value_436208175; a1: Uint_436208497): Uint_436208497 {.
        cdecl.}
    Valuefromstring*: proc (a0: ptr Value_436208175; a1: Lpcwstr_436208487;
                            a2: Uint_436208497; a3: Uint_436208497): Uint_436208497 {.
        cdecl.}
    Valueinvoke*: proc (a0: ptr Value_436208175; a1: ptr Value_436208175;
                        a2: Uint_436208497; a3: ptr Value_436208175;
                        a4: ptr Value_436208175; a5: Lpcwstr_436208487): Uint_436208497 {.
        cdecl.}
    Valuenativefunctorset*: proc (a0: ptr Value_436208175;
                                  a1: ptr Nativefunctorinvoke_436208041;
                                  a2: ptr Nativefunctorrelease_436208367;
                                  a3: pointer): Uint_436208497 {.cdecl.}
    Valueisnativefunctor*: proc (a0: ptr Value_436208175): Sbool_436208331 {.
        cdecl.}
    reserved1*: Lpvoid_436208279
    reserved2*: Lpvoid_436208279
    reserved3*: Lpvoid_436208279
    reserved4*: Lpvoid_436208279
    Sciteropenarchive*: proc (a0: Lpcbyte_436207946; a1: Uint_436208497): Hsarchive_436208415 {.
        cdecl.}
    Scitergetarchiveitem*: proc (a0: Hsarchive_436208415; a1: Lpcwstr_436208487;
                                 a2: ptr Lpcbyte_436207946; a3: ptr Uint_436208497): Sbool_436208331 {.
        cdecl.}
    Sciterclosearchive*: proc (a0: Hsarchive_436208415): Sbool_436208331 {.cdecl.}
    Sciterfireevent*: proc (a0: ptr Behavioreventparams_436208265; a1: Sbool_436208331;
                            a2: ptr Sbool_436208331): Int_436208501 {.cdecl.}
    Scitergetcallbackparam*: proc (a0: Hwnd_436207998): Lpvoid_436208279 {.cdecl.}
    Sciterpostcallback*: proc (a0: Hwnd_436207998; a1: Uintptr_436208315;
                               a2: Uintptr_436208315; a3: Uint_436208497): Uintptr_436208315 {.
        cdecl.}
    Getscitergraphicsapi*: proc (): Lpscitergraphicsapi_436207944 {.cdecl.}
    Getsciterrequestapi*: proc (): Lpsciterrequestapi_436208169 {.cdecl.}
    Scitercreateondirectxwindow*: proc (a0: Hwnd_436207998; a1: ptr Iunknown_436208371): Sbool_436208331 {.
        cdecl.}
    Sciterrenderondirectxwindow*: proc (a0: Hwnd_436207998; a1: Helement_436208347;
                                        a2: Sbool_436208331): Sbool_436208331 {.
        cdecl.}
    Sciterrenderondirectxtexture*: proc (a0: Hwnd_436207998; a1: Helement_436208347;
        a2: ptr Iunknown_436208371): Sbool_436208331 {.cdecl.}
    Sciterprocx*: proc (a0: Hwnd_436207998; a1: ptr Sciterxmsg_436208479): Sbool_436208331 {.
        cdecl.}
    Sciteratomvalue*: proc (a0: cstring): Uint64_436208561 {.cdecl.}
    Sciteratomnamecb*: proc (a0: Uint64_436208561; a1: proc (a0: Lpcstr_436208213;
        a1: Uint_436208497; a2: Lpvoid_436208279): void {.cdecl.}; a2: Lpvoid_436208279): Sbool_436208331 {.
        cdecl.}
    Scitersetglobalasset*: proc (a0: ptr somassett_436208031): Sbool_436208331 {.
        cdecl.}
    Scitergetelementasset*: proc (a0: Helement_436208347; a1: Uint64_436208561;
                                  a2: ptr ptr somassett_436208031): Int_436208501 {.
        cdecl.}
    Scitersetvariable*: proc (a0: Hwnd_436207998; a1: Lpcstr_436208213;
                              a2: ptr Value_436208175): Uint_436208497 {.cdecl.}
    Scitergetvariable*: proc (a0: Hwnd_436207998; a1: Lpcstr_436208213;
                              a2: ptr Value_436208175): Uint_436208497 {.cdecl.}
    Sciterelementunwrap*: proc (a0: ptr Value_436208175; a1: ptr Helement_436208347): Uint_436208497 {.
        cdecl.}
    Sciterelementwrap*: proc (a0: ptr Value_436208175; a1: Helement_436208347): Uint_436208497 {.
        cdecl.}
    Sciternodeunwrap*: proc (a0: ptr Value_436208175; a1: ptr Hnode_436208499): Uint_436208497 {.
        cdecl.}
    Sciternodewrap*: proc (a0: ptr Value_436208175; a1: Hnode_436208499): Uint_436208497 {.
        cdecl.}
    Sciterreleaseglobalasset*: proc (a0: ptr somassett_436208031): Sbool_436208331 {.
        cdecl.}
    Sciterexec*: proc (a0: Uint_436208497; a1: Uintptr_436208315; a2: Uintptr_436208315): Intptr_436207952 {.
        cdecl.}
    Sciterwindowexec*: proc (a0: Hwnd_436207998; a1: Uint_436208497;
                             a2: Uintptr_436208315; a3: Uintptr_436208315): Intptr_436207952 {.
        cdecl.}

  Scriptruntimefeatures_436208298* = enumscriptruntimefeatures_436208463 ## Generated based on D:\Projects\nsciter\sciter-js-sdk\include\sciter-x-def.h:453:3
  structsciterxmsgsize_436208300* = object
    header*: Sciterxmsg_436208479 ## Generated based on D:\Projects\nsciter\sciter-js-sdk\include\sciter-x-msg.h:62:16
    width*: Uint_436208497
    height*: Uint_436208497

  Wchar_436208302* = wchart_436208055 ## Generated based on C:\Program Files (x86)\Windows Kits\10\Include\10.0.22000.0\um\winnt.h:480:17
  Scrollparams_436208304* = structscrollparams_436208111 ## Generated based on D:\Projects\nsciter\sciter-js-sdk\include\sciter-x-behavior.h:308:5
  imagewritefunction_436208306* = proc (a0: Lpvoid_436208279; a1: ptr Byte_436207992;
                                        a2: Uint_436208497): Sbool_436208331 {.
      cdecl.}                ## Generated based on D:\Projects\nsciter\sciter-js-sdk\include\sciter-x-graphics.h:129:21
  structgestureparams_436208308* = object
    cmd*: Uint_436208497     ## Generated based on D:\Projects\nsciter\sciter-js-sdk\include\sciter-x-behavior.h:346:18
    target*: Helement_436208347
    pos*: Point_436208387
    posview*: Point_436208387
    flags*: Uint_436208497
    deltatime*: Uint_436208497
    deltaxy*: Size_436207938
    deltav*: cdouble

  Isemptyparams_436208312* = structisemptyparams_436208319 ## Generated based on D:\Projects\nsciter\sciter-js-sdk\include\sciter-x-behavior.h:636:5
  Uintptr_436208314* = culonglong ## Generated based on C:\Program Files (x86)\Windows Kits\10\Include\10.0.22000.0\shared\basetsd.h:126:30
  sommethoddeft_436208316* = structsommethoddeft_436208457 ## Generated based on D:\Projects\nsciter\sciter-js-sdk\include\sciter-om-def.h:49:3
  structisemptyparams_436208318* = object
    methodid*: Uint_436208497 ## Generated based on D:\Projects\nsciter\sciter-js-sdk\include\sciter-x-behavior.h:629:18
    isempty*: Uint_436208497

  Elementeventproc_436208320* = proc (a0: Lpvoid_436208279; a1: Helement_436208347;
                                      a2: Uint_436208497; a3: Lpvoid_436208279): Sbool_436208331 {.
      cdecl.}                ## Generated based on D:\Projects\nsciter\sciter-js-sdk\include\sciter-x-behavior.h:69:28
  Scnattachbehavior_436208322* = structscnattachbehavior_436208151 ## Generated based on D:\Projects\nsciter\sciter-js-sdk\include\sciter-x-def.h:224:3
  Urldata_436208324* = structurldata_436208565 ## Generated based on D:\Projects\nsciter\sciter-js-sdk\include\sciter-x-def.h:569:3
  Debugoutputproc_436208326* = proc (a0: Lpvoid_436208279; a1: Uint_436208497;
                                     a2: Uint_436208497; a3: Lpcwstr_436208487;
                                     a4: Uint_436208497): void {.cdecl.} ## Generated based on D:\Projects\nsciter\sciter-js-sdk\include\sciter-x-def.h:750:28
  somitemsettert_436208328* = proc (a0: ptr somassett_436208031;
                                    a1: ptr Scitervalue_436208065;
                                    a2: ptr Scitervalue_436208065): Sbool_436208331 {.
      cdecl.}                ## Generated based on D:\Projects\nsciter\sciter-js-sdk\include\sciter-om-def.h:24:16
  Sbool_436208330* = cint    ## Generated based on D:\Projects\nsciter\sciter-js-sdk\include\sciter-x-primitives.h:33:15
  Elementareas_436208332* = enumelementareas_436208533 ## Generated based on D:\Projects\nsciter\sciter-js-sdk\include\sciter-x-dom.h:335:3
  Keyboardstates_436208334* = enumkeyboardstates_436208181 ## Generated based on D:\Projects\nsciter\sciter-js-sdk\include\sciter-x-behavior.h:97:5
  structattributechangeparams_436208336* = object
    he*: Helement_436208347  ## Generated based on D:\Projects\nsciter\sciter-js-sdk\include\sciter-x-behavior.h:652:18
    name*: Lpcstr_436208213
    value*: Lpcwstr_436208487

  Sciterhostcallback_436208338* = proc (a0: Lpscitercallbacknotification_436208525;
                                        a1: Lpvoid_436208279): Uint_436208497 {.
      cdecl.}                ## Generated based on D:\Projects\nsciter\sciter-js-sdk\include\sciter-x-def.h:162:26
  Sciterxmsgcode_436208340* = enumsciterxmsgcode_436207940 ## Generated based on D:\Projects\nsciter\sciter-js-sdk\include\sciter-x-msg.h:33:3
  Valueresult_436208342* = enumvalueresult_436208257 ## Generated based on D:\Projects\nsciter\sciter-js-sdk\include\value.h:12:3
  Helement_436208346* = pointer ## Generated based on D:\Projects\nsciter\sciter-js-sdk\include\sciter-x-dom.h:40:18
  Dataarrivedparams_436208348* = structdataarrivedparams_436208149 ## Generated based on D:\Projects\nsciter\sciter-js-sdk\include\sciter-x-behavior.h:650:5
  Isciterapi_436208350* = structisciterapi_436208295 ## Generated based on D:\Projects\nsciter\sciter-js-sdk\include\sciter-x-api.h:305:3
  structdrawparams_436208354* = object
    cmd*: Uint_436208497     ## Generated based on D:\Projects\nsciter\sciter-js-sdk\include\sciter-x-behavior.h:401:18
    gfx*: Hgfx_436207924
    area*: Rect_436208133
    reserved*: Uint_436208497

  imagepaintfunction_436208362* = proc (a0: Lpvoid_436208279; a1: Hgfx_436207924;
                                        a2: Uint_436208497; a3: Uint_436208497): void {.
      cdecl.}                ## Generated based on D:\Projects\nsciter\sciter-js-sdk\include\sciter-x-graphics.h:131:20
  Lpscnloaddata_436208364* = ptr Scnloaddata_436207976 ## Generated based on D:\Projects\nsciter\sciter-js-sdk\include\sciter-x-def.h:188:25
  Nativefunctorrelease_436208366* = proc (a0: pointer): void {.cdecl.} ## Generated based on D:\Projects\nsciter\sciter-js-sdk\include\value.h:114:14
  Iunknown_436208370* = structiunknown_436208373 ## Generated based on C:\Program Files (x86)\Windows Kits\10\Include\10.0.22000.0\um\unknwnbase.h:52:28
  structiunknown_436208372* = object
    lpvtbl*: ptr structiunknownvtbl_436208453 ## Generated based on C:\Program Files (x86)\Windows Kits\10\Include\10.0.22000.0\um\unknwnbase.h:220:15
  
  structfocusparams_436208374* = object
    cmd*: Uint_436208497     ## Generated based on D:\Projects\nsciter\sciter-js-sdk\include\sciter-x-behavior.h:252:18
    target*: Helement_436208347
    cause*: Uint_436208497
    cancel*: Sbool_436208331

  Sciterbehaviorfactory_436208380* = proc (a0: Lpcstr_436208213; a1: Helement_436208347;
      a2: ptr Lpelementeventproctypedef_436208537; a3: ptr Lpvoid_436208279): Sbool_436208331 {.
      cdecl.}                ## Generated based on D:\Projects\nsciter\sciter-js-sdk\include\sciter-x-behavior.h:73:27
  Sciterxmsgheartbit_436208382* = structsciterxmsgheartbit_436208253 ## Generated based on D:\Projects\nsciter\sciter-js-sdk\include\sciter-x-msg.h:115:3
  Setelementhtml_436208384* = enumsetelementhtml_436208201 ## Generated based on D:\Projects\nsciter\sciter-js-sdk\include\sciter-x-dom.h:467:3
  Point_436208386* = structtagpoint_436208411 ## Generated based on C:\Program Files (x86)\Windows Kits\10\Include\10.0.22000.0\shared\windef.h:178:3
  Scnenginedestroyed_436208388* = structscnenginedestroyed_436208017 ## Generated based on D:\Projects\nsciter\sciter-js-sdk\include\sciter-x-def.h:233:3
  sompropertydeft_436208390* = structsompropertydeft_436208495 ## Generated based on D:\Projects\nsciter\sciter-js-sdk\include\sciter-om-def.h:39:3
  Guid_436208392* = structguid_436207990 ## Generated based on C:\Program Files (x86)\Windows Kits\10\Include\10.0.22000.0\shared\guiddef.h:27:3
  Outputsubsytems_436208394* = enumoutputsubsytems_436208209 ## Generated based on D:\Projects\nsciter\sciter-js-sdk\include\sciter-x-def.h:741:3
  structsciterxmsgcreate_436208396* = object
    header*: Sciterxmsg_436208479 ## Generated based on D:\Projects\nsciter\sciter-js-sdk\include\sciter-x-msg.h:44:16
    backend*: Uint_436208497
    transparent*: Sbool_436208331

  structrequestparam_436208400* = object
    name*: Lpcwstr_436208487 ## Generated based on D:\Projects\nsciter\sciter-js-sdk\include\sciter-x-dom.h:84:10
    value*: Lpcwstr_436208487

  Ulong_436208402* = Dword_436208229 ## Generated based on C:\Program Files (x86)\Windows Kits\10\Include\10.0.22000.0\shared\wtypesbase.h:156:15
  Focusevents_436208404* = enumfocusevents_436208103 ## Generated based on D:\Projects\nsciter\sciter-js-sdk\include\sciter-x-behavior.h:235:5
  structsomassetclasst_436208408* = object
    assetaddref*: proc (a0: ptr somassett_436208031): clong {.cdecl.} ## Generated based on D:\Projects\nsciter\sciter-js-sdk\include\sciter-om.h:17:16
    assetrelease*: proc (a0: ptr somassett_436208031): clong {.cdecl.}
    assetgetinterface*: proc (a0: ptr somassett_436208031; a1: cstring;
                              a2: ptr pointer): clong {.cdecl.}
    assetgetpassport*: proc (a0: ptr somassett_436208031): ptr structsompassportt_436208465 {.
        cdecl.}

  structtagpoint_436208410* = object
    x*: Long_436208073       ## Generated based on C:\Program Files (x86)\Windows Kits\10\Include\10.0.22000.0\shared\windef.h:174:16
    y*: Long_436208073

  Sciterpainttargettype_436208412* = enumsciterpainttargettype_436208189 ## Generated based on D:\Projects\nsciter\sciter-js-sdk\include\sciter-x-msg.h:136:3
  Hsarchive_436208414* = pointer ## Generated based on D:\Projects\nsciter\sciter-js-sdk\include\sciter-x-dom.h:45:18
  Sciterxmsgkey_436208416* = structsciterxmsgkey_436208071 ## Generated based on D:\Projects\nsciter\sciter-js-sdk\include\sciter-x-msg.h:98:3
  somanypropsettert_436208418* = proc (a0: ptr somassett_436208031; a1: Uint64_436208561;
                                       a2: ptr Scitervalue_436208065): Sbool_436208331 {.
      cdecl.}                ## Generated based on D:\Projects\nsciter\sciter-js-sdk\include\sciter-om-def.h:27:16
  structmouseparams_436208424* = object
    cmd*: Uint_436208497     ## Generated based on D:\Projects\nsciter\sciter-js-sdk\include\sciter-x-behavior.h:171:18
    target*: Helement_436208347
    pos*: Point_436208387
    posview*: Point_436208387
    buttonstate*: Uint_436208497
    altstate*: Uint_436208497
    cursortype*: Uint_436208497
    isonicon*: Sbool_436208331
    dragging*: Helement_436208347
    draggingmode*: Uint_436208497

  Valueparams_436208426* = structvalueparams_436207958 ## Generated based on D:\Projects\nsciter\sciter-js-sdk\include\sciter-x-behavior.h:626:5
  Valueunittype_436208428* = enumvalueunittype_436208045 ## Generated based on D:\Projects\nsciter\sciter-js-sdk\include\value.h:78:3
  structhposition_436208430* = object
    hn*: Hnode_436208499     ## Generated based on D:\Projects\nsciter\sciter-js-sdk\include\sciter-x-dom.h:46:18
    pos*: Int_436208501

  somanypropgettert_436208432* = proc (a0: ptr somassett_436208031; a1: Uint64_436208561;
                                       a2: ptr Scitervalue_436208065): Sbool_436208331 {.
      cdecl.}                ## Generated based on D:\Projects\nsciter\sciter-js-sdk\include\sciter-om-def.h:26:16
  Valuestringcvttype_436208436* = enumvaluestringcvttype_436207982 ## Generated based on D:\Projects\nsciter\sciter-js-sdk\include\value.h:273:3
  Sciterxmsgmouse_436208438* = structsciterxmsgmouse_436208107 ## Generated based on D:\Projects\nsciter\sciter-js-sdk\include\sciter-x-msg.h:88:3
  Cursortype_436208440* = enumcursortype_436208449 ## Generated based on D:\Projects\nsciter\sciter-js-sdk\include\sciter-x-behavior.h:205:5
  Wparam_436208444* = Uintptr_436208315 ## Generated based on C:\Program Files (x86)\Windows Kits\10\Include\10.0.22000.0\shared\minwindef.h:186:29
  Sciterwindowstate_436208446* = enumsciterwindowstate_436208101 ## Generated based on D:\Projects\nsciter\sciter-js-sdk\include\sciter-x-def.h:527:4
  structiunknownvtbl_436208452* = object
    Queryinterface*: proc (a0: ptr Iunknown_436208371; a1: ptr Iid_436208193;
                           a2: ptr pointer): Hresult_436208233 {.cdecl.} ## Generated based on C:\Program Files (x86)\Windows Kits\10\Include\10.0.22000.0\um\unknwnbase.h:198:20
    Addref*: proc (a0: ptr Iunknown_436208371): Ulong_436208403 {.cdecl.}
    Release*: proc (a0: ptr Iunknown_436208371): Ulong_436208403 {.cdecl.}

  Valuetype_436208454* = enumvaluetype_436207970 ## Generated based on D:\Projects\nsciter\sciter-js-sdk\include\value.h:46:3
  structsommethoddeft_436208456* = object
    reserved*: pointer       ## Generated based on D:\Projects\nsciter\sciter-js-sdk\include\sciter-om-def.h:41:16
    name*: somatomt_436208535
    params*: csize_t
    funcfield*: sommethodt_436208567

  Gesturetypeflags_436208458* = enumgesturetypeflags_436208167 ## Generated based on D:\Projects\nsciter\sciter-js-sdk\include\sciter-x-behavior.h:344:5
  structsompassportt_436208464* = object
    flags*: Uint64_436208561 ## Generated based on D:\Projects\nsciter\sciter-js-sdk\include\sciter-om-def.h:58:16
    name*: somatomt_436208535
    properties*: ptr sompropertydeft_436208391
    nproperties*: csize_t
    methods*: ptr sommethoddeft_436208317
    nmethods*: csize_t
    itemgetter*: somitemgettert_436208259
    itemsetter*: somitemsettert_436208329
    itemnext*: somitemnextt_436208087
    propgetter*: somanypropgettert_436208433
    propsetter*: somanypropsettert_436208419

  Drawparams_436208466* = structdrawparams_436208355 ## Generated based on D:\Projects\nsciter\sciter-js-sdk\include\sciter-x-behavior.h:408:5
  Sciterapiptr_436208468* = proc (): ptr Isciterapi_436208351 {.cdecl.} ## Generated based on D:\Projects\nsciter\sciter-js-sdk\include\sciter-x-api.h:307:29
  Behaviorevents_436208472* = enumbehaviorevents_436208423 ## Generated based on D:\Projects\nsciter\sciter-js-sdk\include\sciter-x-behavior.h:530:5
  structscngraphicscriticalfailure_436208474* = object
    code*: Uint_436208497    ## Generated based on D:\Projects\nsciter\sciter-js-sdk\include\sciter-x-def.h:252:16
    hwnd*: Hwnd_436207998

  Contentchangebits_436208476* = enumcontentchangebits_436208115 ## Generated based on D:\Projects\nsciter\sciter-js-sdk\include\sciter-x-behavior.h:413:5
  Sciterxmsg_436208478* = structsciterxmsg_436208039 ## Generated based on D:\Projects\nsciter\sciter-js-sdk\include\sciter-x-msg.h:42:3
  structkeyparams_436208480* = object
    cmd*: Uint_436208497     ## Generated based on D:\Projects\nsciter\sciter-js-sdk\include\sciter-x-behavior.h:217:18
    target*: Helement_436208347
    keycode*: Uint_436208497
    altstate*: Uint_436208497

  Requestparam_436208482* = structrequestparam_436208401 ## Generated based on D:\Projects\nsciter\sciter-js-sdk\include\sciter-x-dom.h:90:32
  structscnkeyboardrequest_436208484* = object
    code*: Uint_436208497    ## Generated based on D:\Projects\nsciter\sciter-js-sdk\include\sciter-x-def.h:262:16
    hwnd*: Hwnd_436207998
    keyboardmode*: Uint_436208497

  Lpcwstr_436208486* = ptr Wchar_436208303 ## Generated based on C:\Program Files (x86)\Windows Kits\10\Include\10.0.22000.0\um\winnt.h:493:40
  Keyvaluecallback_436208488* = proc (a0: Lpvoid_436208279; a1: ptr Value_436208175;
                                      a2: ptr Value_436208175): Sbool_436208331 {.
      cdecl.}                ## Generated based on D:\Projects\nsciter\sciter-js-sdk\include\value.h:234:27
  Scpos_436208490* = Screal_436208287 ## Generated based on D:\Projects\nsciter\sciter-js-sdk\include\sciter-x-graphics.h:49:18
  Lpwstr_436208492* = ptr Wchar_436208303 ## Generated based on C:\Program Files (x86)\Windows Kits\10\Include\10.0.22000.0\um\winnt.h:489:43
  structsompropertydeft_436208494* = object
    reserved*: pointer       ## Generated based on D:\Projects\nsciter\sciter-js-sdk\include\sciter-om-def.h:31:16
    name*: somatomt_436208535
    getter*: sompropgettert_436208283
    setter*: sompropsettert_436208519

  Uint_436208496* = cuint    ## Generated based on C:\Program Files (x86)\Windows Kits\10\Include\10.0.22000.0\shared\minwindef.h:177:29
  Hnode_436208498* = pointer ## Generated based on D:\Projects\nsciter\sciter-js-sdk\include\sciter-x-dom.h:42:18
  Int_436208500* = cint      ## Generated based on C:\Program Files (x86)\Windows Kits\10\Include\10.0.22000.0\um\winnt.h:471:13
  Gestureparams_436208502* = structgestureparams_436208309 ## Generated based on D:\Projects\nsciter\sciter-js-sdk\include\sciter-x-behavior.h:358:5
  Attributechangeparams_436208504* = structattributechangeparams_436208337 ## Generated based on D:\Projects\nsciter\sciter-js-sdk\include\sciter-x-behavior.h:657:5
  structsomassett_anon0_t* = object
  
  structsomassett_436208506* = object
    anon0*: structsomassett_anon0_t ## Generated based on D:\Projects\nsciter\sciter-js-sdk\include\sciter-om.h:13:16
    isa*: ptr structsomassetclasst_436208409

  Scndataloaded_436208508* = structscndataloaded_436208255 ## Generated based on D:\Projects\nsciter\sciter-js-sdk\include\sciter-x-def.h:207:3
  Elementstatebits_436208512* = enumelementstatebits_436208407 ## Generated based on D:\Projects\nsciter\sciter-js-sdk\include\sciter-x-dom.h:599:3
  Focusparams_436208514* = structfocusparams_436208375 ## Generated based on D:\Projects\nsciter\sciter-js-sdk\include\sciter-x-behavior.h:259:5
  sompropsettert_436208518* = proc (a0: ptr somassett_436208031;
                                    a1: ptr Scitervalue_436208065): Sbool_436208331 {.
      cdecl.}                ## Generated based on D:\Projects\nsciter\sciter-js-sdk\include\sciter-om-def.h:22:16
  Scrollevents_436208522* = enumscrollevents_436208549 ## Generated based on D:\Projects\nsciter\sciter-js-sdk\include\sciter-x-behavior.h:279:5
  Lpscitercallbacknotification_436208524* = ptr Scitercallbacknotification_436208557 ## Generated based on D:\Projects\nsciter\sciter-js-sdk\include\sciter-x-def.h:160:40
  Lpscninvalidaterect_436208528* = ptr Scninvalidaterect_436208135 ## Generated based on D:\Projects\nsciter\sciter-js-sdk\include\sciter-x-def.h:278:30
  Scitergraphics_436208530* = structscitergraphics ## Generated based on D:\Projects\nsciter\sciter-js-sdk\include\sciter-x-behavior.h:399:34
  somatomt_436208534* = Uint64_436208561 ## Generated based on D:\Projects\nsciter\sciter-js-sdk\include\sciter-om.h:11:16
  Lpelementeventproctypedef_436208536* = proc (a0: Lpvoid_436208279;
      a1: Helement_436208347; a2: Uint_436208497; a3: Lpvoid_436208279): Sbool_436208331 {.
      cdecl.}                ## Generated based on D:\Projects\nsciter\sciter-js-sdk\include\sciter-x-behavior.h:70:29
  Gesturecmd_436208538* = enumgesturecmd_436208461 ## Generated based on D:\Projects\nsciter\sciter-js-sdk\include\sciter-x-behavior.h:323:5
  Phasemask_436208540* = enumphasemask_436208511 ## Generated based on D:\Projects\nsciter\sciter-js-sdk\include\sciter-x-behavior.h:81:5
  Lparam_436208542* = Longptr_436207968 ## Generated based on C:\Program Files (x86)\Windows Kits\10\Include\10.0.22000.0\shared\minwindef.h:187:29
  Requeststate_436208544* = enumrequeststate_436208517 ## Generated based on D:\Projects\nsciter\sciter-js-sdk\include\sciter-x-request.h:71:5
  Lppoint_436208546* = ptr structtagpoint_436208411 ## Generated based on C:\Program Files (x86)\Windows Kits\10\Include\10.0.22000.0\shared\windef.h:178:39
  Requestrqtype_436208550* = enumrequestrqtype_436208099 ## Generated based on D:\Projects\nsciter\sciter-js-sdk\include\sciter-x-request.h:49:5
  structsciterrequestapi_436208552* = object
    Requestuse*: proc (a0: Hrequest_436208006): Requestresult_436208195 {.cdecl.} ## Generated based on D:\Projects\nsciter\sciter-js-sdk\include\sciter-x-request.h:73:8
    Requestunuse*: proc (a0: Hrequest_436208006): Requestresult_436208195 {.
        cdecl.}
    Requesturl*: proc (a0: Hrequest_436208006; a1: proc (a0: Lpcstr_436208213;
        a1: Uint_436208497; a2: Lpvoid_436208279): void {.cdecl.}; a2: Lpvoid_436208279): Requestresult_436208195 {.
        cdecl.}
    Requestcontenturl*: proc (a0: Hrequest_436208006; a1: proc (a0: Lpcstr_436208213;
        a1: Uint_436208497; a2: Lpvoid_436208279): void {.cdecl.}; a2: Lpvoid_436208279): Requestresult_436208195 {.
        cdecl.}
    Requestgetrequesttype*: proc (a0: Hrequest_436208006; a1: ptr Requestrqtype_436208551): Requestresult_436208195 {.
        cdecl.}
    Requestgetrequesteddatatype*: proc (a0: Hrequest_436208006;
                                        a1: ptr Sciterresourcetype_436208559): Requestresult_436208195 {.
        cdecl.}
    Requestgetreceiveddatatype*: proc (a0: Hrequest_436208006; a1: proc (
        a0: Lpcstr_436208213; a1: Uint_436208497; a2: Lpvoid_436208279): void {.
        cdecl.}; a2: Lpvoid_436208279): Requestresult_436208195 {.cdecl.}
    Requestgetnumberofparameters*: proc (a0: Hrequest_436208006; a1: ptr Uint_436208497): Requestresult_436208195 {.
        cdecl.}
    Requestgetnthparametername*: proc (a0: Hrequest_436208006; a1: Uint_436208497;
        a2: proc (a0: Lpcwstr_436208487; a1: Uint_436208497; a2: Lpvoid_436208279): void {.
        cdecl.}; a3: Lpvoid_436208279): Requestresult_436208195 {.cdecl.}
    Requestgetnthparametervalue*: proc (a0: Hrequest_436208006; a1: Uint_436208497;
        a2: proc (a0: Lpcwstr_436208487; a1: Uint_436208497; a2: Lpvoid_436208279): void {.
        cdecl.}; a3: Lpvoid_436208279): Requestresult_436208195 {.cdecl.}
    Requestgettimes*: proc (a0: Hrequest_436208006; a1: ptr Uint_436208497;
                            a2: ptr Uint_436208497): Requestresult_436208195 {.
        cdecl.}
    Requestgetnumberofrqheaders*: proc (a0: Hrequest_436208006; a1: ptr Uint_436208497): Requestresult_436208195 {.
        cdecl.}
    Requestgetnthrqheadername*: proc (a0: Hrequest_436208006; a1: Uint_436208497;
        a2: proc (a0: Lpcwstr_436208487; a1: Uint_436208497; a2: Lpvoid_436208279): void {.
        cdecl.}; a3: Lpvoid_436208279): Requestresult_436208195 {.cdecl.}
    Requestgetnthrqheadervalue*: proc (a0: Hrequest_436208006; a1: Uint_436208497;
        a2: proc (a0: Lpcwstr_436208487; a1: Uint_436208497; a2: Lpvoid_436208279): void {.
        cdecl.}; a3: Lpvoid_436208279): Requestresult_436208195 {.cdecl.}
    Requestgetnumberofrspheaders*: proc (a0: Hrequest_436208006; a1: ptr Uint_436208497): Requestresult_436208195 {.
        cdecl.}
    Requestgetnthrspheadername*: proc (a0: Hrequest_436208006; a1: Uint_436208497;
        a2: proc (a0: Lpcwstr_436208487; a1: Uint_436208497; a2: Lpvoid_436208279): void {.
        cdecl.}; a3: Lpvoid_436208279): Requestresult_436208195 {.cdecl.}
    Requestgetnthrspheadervalue*: proc (a0: Hrequest_436208006; a1: Uint_436208497;
        a2: proc (a0: Lpcwstr_436208487; a1: Uint_436208497; a2: Lpvoid_436208279): void {.
        cdecl.}; a3: Lpvoid_436208279): Requestresult_436208195 {.cdecl.}
    Requestgetcompletionstatus*: proc (a0: Hrequest_436208006;
                                       a1: ptr Requeststate_436208545;
                                       a2: ptr Uint_436208497): Requestresult_436208195 {.
        cdecl.}
    Requestgetproxyhost*: proc (a0: Hrequest_436208006; a1: proc (a0: Lpcstr_436208213;
        a1: Uint_436208497; a2: Lpvoid_436208279): void {.cdecl.}; a2: Lpvoid_436208279): Requestresult_436208195 {.
        cdecl.}
    Requestgetproxyport*: proc (a0: Hrequest_436208006; a1: ptr Uint_436208497): Requestresult_436208195 {.
        cdecl.}
    Requestsetsucceeded*: proc (a0: Hrequest_436208006; a1: Uint_436208497;
                                a2: Lpcbyte_436207946; a3: Uint_436208497): Requestresult_436208195 {.
        cdecl.}
    Requestsetfailed*: proc (a0: Hrequest_436208006; a1: Uint_436208497;
                             a2: Lpcbyte_436207946; a3: Uint_436208497): Requestresult_436208195 {.
        cdecl.}
    Requestappenddatachunk*: proc (a0: Hrequest_436208006; a1: Lpcbyte_436207946;
                                   a2: Uint_436208497): Requestresult_436208195 {.
        cdecl.}
    Requestsetrqheader*: proc (a0: Hrequest_436208006; a1: Lpcwstr_436208487;
                               a2: Lpcwstr_436208487): Requestresult_436208195 {.
        cdecl.}
    Requestsetrspheader*: proc (a0: Hrequest_436208006; a1: Lpcwstr_436208487;
                                a2: Lpcwstr_436208487): Requestresult_436208195 {.
        cdecl.}
    Requestsetreceiveddatatype*: proc (a0: Hrequest_436208006; a1: Lpcstr_436208213): Requestresult_436208195 {.
        cdecl.}
    Requestsetreceiveddataencoding*: proc (a0: Hrequest_436208006; a1: Lpcstr_436208213): Requestresult_436208195 {.
        cdecl.}
    Requestgetdata*: proc (a0: Hrequest_436208006; a1: proc (a0: Lpcbyte_436207946;
        a1: Uint_436208497; a2: Lpvoid_436208279): void {.cdecl.}; a2: Lpvoid_436208279): Requestresult_436208195 {.
        cdecl.}

  Scitercallbacknotification_436208556* = structscitercallbacknotification_436208171 ## Generated based on D:\Projects\nsciter\sciter-js-sdk\include\sciter-x-def.h:158:3
  Sciterresourcetype_436208558* = enumsciterresourcetype_436208359 ## Generated based on D:\Projects\nsciter\sciter-js-sdk\include\sciter-x-request.h:62:3
  Uint64_436208560* = culonglong ## Generated based on C:\Program Files (x86)\Windows Kits\10\Include\10.0.22000.0\shared\basetsd.h:82:29
  structscriptingmethodparams_436208562* = object
    name*: Lpcstr_436208213  ## Generated based on D:\Projects\nsciter\sciter-js-sdk\include\sciter-x-behavior.h:610:18
    argv*: ptr Scitervalue_436208065
    argc*: Uint_436208497
    result*: Scitervalue_436208065

  structurldata_436208564* = object
    requestedurl*: Lpcstr_436208213 ## Generated based on D:\Projects\nsciter\sciter-js-sdk\include\sciter-x-def.h:559:16
    realurl*: Lpcstr_436208213
    requestedtype*: Sciterresourcetype_436208559
    httpheaders*: Lpcstr_436208213
    mimetype*: Lpcstr_436208213
    encoding*: Lpcstr_436208213
    data*: Lpcbyte_436207946
    datalength*: Uint_436208497

  sommethodt_436208566* = proc (a0: ptr somassett_436208031; a1: Uint_436208497;
                                a2: ptr Scitervalue_436208065;
                                a3: ptr Scitervalue_436208065): Sbool_436208331 {.
      cdecl.}                ## Generated based on D:\Projects\nsciter\sciter-js-sdk\include\sciter-om-def.h:28:16
  structtagrect_436208568* = object
    left*: Long_436208073    ## Generated based on C:\Program Files (x86)\Windows Kits\10\Include\10.0.22000.0\shared\windef.h:154:16
    top*: Long_436208073
    right*: Long_436208073
    bottom*: Long_436208073

  Sciterxmsgcreate_436208570* = structsciterxmsgcreate_436208397 ## Generated based on D:\Projects\nsciter\sciter-js-sdk\include\sciter-x-msg.h:53:3
  Hgfx_436207924* = (when declared(Hgfx):
    Hgfx
   else:
    Hgfx_436207923)
  Valueunittypestring_436207922* = (when declared(Valueunittypestring):
    Valueunittypestring
   else:
    Valueunittypestring_436207920)
  structsciterxmsgpaint_436207926* = (when declared(structsciterxmsgpaint):
    structsciterxmsgpaint
   else:
    structsciterxmsgpaint_436207925)
  sompassportt_436208271* = (when declared(sompassportt):
    sompassportt
   else:
    sompassportt_436208270)
  Somevents_436207928* = (when declared(Somevents):
    Somevents
   else:
    Somevents_436207927)
  Scriptingmethodparams_436208273* = (when declared(Scriptingmethodparams):
    Scriptingmethodparams
   else:
    Scriptingmethodparams_436208272)
  Sciterxmsgsize_436208275* = (when declared(Sciterxmsgsize):
    Sciterxmsgsize
   else:
    Sciterxmsgsize_436208274)
  enummouseevents_436208277* = (when declared(enummouseevents):
    enummouseevents
   else:
    enummouseevents_436208276)
  enummousebuttons_436207930* = (when declared(enummousebuttons):
    enummousebuttons
   else:
    enummousebuttons_436207929)
  Lpvoid_436208279* = (when declared(Lpvoid):
    Lpvoid
   else:
    Lpvoid_436208278)
  enumsciterimageencoding_436208281* = (when declared(enumsciterimageencoding):
    enumsciterimageencoding
   else:
    enumsciterimageencoding_436208280)
  sompropgettert_436208283* = (when declared(sompropgettert):
    sompropgettert
   else:
    sompropgettert_436208282)
  Graphinresult_436207932* = (when declared(Graphinresult):
    Graphinresult
   else:
    Graphinresult_436207931)
  Lresult_436207934* = (when declared(Lresult):
    Lresult
   else:
    Lresult_436207933)
  Msg_436208285* = (when declared(Msg):
    Msg
   else:
    Msg_436208284)
  Screal_436208287* = (when declared(Screal):
    Screal
   else:
    Screal_436208286)
  structsccolorstop_436208289* = (when declared(structsccolorstop):
    structsccolorstop
   else:
    structsccolorstop_436208288)
  Scnkeyboardrequest_436208291* = (when declared(Scnkeyboardrequest):
    Scnkeyboardrequest
   else:
    Scnkeyboardrequest_436208290)
  enumclickreason_436207936* = (when declared(enumclickreason):
    enumclickreason
   else:
    enumclickreason_436207935)
  Size_436207938* = (when declared(Size):
    Size
   else:
    Size_436207937)
  enumsciterxmsgcode_436207940* = (when declared(enumsciterxmsgcode):
    enumsciterxmsgcode
   else:
    enumsciterxmsgcode_436207939)
  Sciterbehaviorfactoryinitfunc_436207942* = (when declared(
      Sciterbehaviorfactoryinitfunc):
    Sciterbehaviorfactoryinitfunc
   else:
    Sciterbehaviorfactoryinitfunc_436207941)
  Hrange_436208293* = (when declared(Hrange):
    Hrange
   else:
    Hrange_436208292)
  Lpscitergraphicsapi_436207944* = (when declared(Lpscitergraphicsapi):
    Lpscitergraphicsapi
   else:
    Lpscitergraphicsapi_436207943)
  structisciterapi_436208295* = (when declared(structisciterapi):
    structisciterapi
   else:
    structisciterapi_436208294)
  Lpcbyte_436207946* = (when declared(Lpcbyte):
    Lpcbyte
   else:
    Lpcbyte_436207945)
  enumsciterscrollflags_436208297* = (when declared(enumsciterscrollflags):
    enumsciterscrollflags
   else:
    enumsciterscrollflags_436208296)
  Scriptruntimefeatures_436208299* = (when declared(Scriptruntimefeatures):
    Scriptruntimefeatures
   else:
    Scriptruntimefeatures_436208298)
  Scnpostednotification_436207948* = (when declared(Scnpostednotification):
    Scnpostednotification
   else:
    Scnpostednotification_436207947)
  Intptr_436207952* = (when declared(Intptr):
    Intptr
   else:
    Intptr_436207951)
  Sciterlinejointype_436207950* = (when declared(Sciterlinejointype):
    Sciterlinejointype
   else:
    Sciterlinejointype_436207949)
  structsciterxmsgsize_436208301* = (when declared(structsciterxmsgsize):
    structsciterxmsgsize
   else:
    structsciterxmsgsize_436208300)
  Wchar_436208303* = (when declared(Wchar):
    Wchar
   else:
    Wchar_436208302)
  enumdrawpathmode_436207954* = (when declared(enumdrawpathmode):
    enumdrawpathmode
   else:
    enumdrawpathmode_436207953)
  Focuscmdtype_436207956* = (when declared(Focuscmdtype):
    Focuscmdtype
   else:
    Focuscmdtype_436207955)
  structvalueparams_436207958* = (when declared(structvalueparams):
    structvalueparams
   else:
    structvalueparams_436207957)
  Scrollparams_436208305* = (when declared(Scrollparams):
    Scrollparams
   else:
    Scrollparams_436208304)
  enumsciterrtoptions_436207960* = (when declared(enumsciterrtoptions):
    enumsciterrtoptions
   else:
    enumsciterrtoptions_436207959)
  wchar_436207962* = (when declared(wchar):
    wchar
   else:
    wchar_436207961)
  imagewritefunction_436208307* = (when declared(imagewritefunction):
    imagewritefunction
   else:
    imagewritefunction_436208306)
  structgestureparams_436208309* = (when declared(structgestureparams):
    structgestureparams
   else:
    structgestureparams_436208308)
  enumddmodes_436208311* = (when declared(enumddmodes):
    enumddmodes
   else:
    enumddmodes_436208310)
  structbehavioreventparams_436207964* = (when declared(
      structbehavioreventparams):
    structbehavioreventparams
   else:
    structbehavioreventparams_436207963)
  Scrollbarpart_436207966* = (when declared(Scrollbarpart):
    Scrollbarpart
   else:
    Scrollbarpart_436207965)
  Isemptyparams_436208313* = (when declared(Isemptyparams):
    Isemptyparams
   else:
    Isemptyparams_436208312)
  Longptr_436207968* = (when declared(Longptr):
    Longptr
   else:
    Longptr_436207967)
  enumvaluetype_436207970* = (when declared(enumvaluetype):
    enumvaluetype
   else:
    enumvaluetype_436207969)
  Sciterappcmd_436207972* = (when declared(Sciterappcmd):
    Sciterappcmd
   else:
    Sciterappcmd_436207971)
  Uintptr_436208315* = (when declared(Uintptr):
    Uintptr
   else:
    Uintptr_436208314)
  sommethoddeft_436208317* = (when declared(sommethoddeft):
    sommethoddeft
   else:
    sommethoddeft_436208316)
  structisemptyparams_436208319* = (when declared(structisemptyparams):
    structisemptyparams
   else:
    structisemptyparams_436208318)
  enumscrollsource_436207974* = (when declared(enumscrollsource):
    enumscrollsource
   else:
    enumscrollsource_436207973)
  Scnloaddata_436207976* = (when declared(Scnloaddata):
    Scnloaddata
   else:
    Scnloaddata_436207975)
  Elementeventproc_436208321* = (when declared(Elementeventproc):
    Elementeventproc
   else:
    Elementeventproc_436208320)
  enumgfxlayer_436207978* = (when declared(enumgfxlayer):
    enumgfxlayer
   else:
    enumgfxlayer_436207977)
  Scnattachbehavior_436208323* = (when declared(Scnattachbehavior):
    Scnattachbehavior
   else:
    Scnattachbehavior_436208322)
  Drawpathmode_436207980* = (when declared(Drawpathmode):
    Drawpathmode
   else:
    Drawpathmode_436207979)
  Urldata_436208325* = (when declared(Urldata):
    Urldata
   else:
    Urldata_436208324)
  enumvaluestringcvttype_436207982* = (when declared(enumvaluestringcvttype):
    enumvaluestringcvttype
   else:
    enumvaluestringcvttype_436207981)
  Debugoutputproc_436208327* = (when declared(Debugoutputproc):
    Debugoutputproc
   else:
    Debugoutputproc_436208326)
  somitemsettert_436208329* = (when declared(somitemsettert):
    somitemsettert
   else:
    somitemsettert_436208328)
  Lpscnattachbehavior_436207984* = (when declared(Lpscnattachbehavior):
    Lpscnattachbehavior
   else:
    Lpscnattachbehavior_436207983)
  Sbool_436208331* = (when declared(Sbool):
    Sbool
   else:
    Sbool_436208330)
  Elementareas_436208333* = (when declared(Elementareas):
    Elementareas
   else:
    Elementareas_436208332)
  Keyboardstates_436208335* = (when declared(Keyboardstates):
    Keyboardstates
   else:
    Keyboardstates_436208334)
  structattributechangeparams_436208337* = (when declared(
      structattributechangeparams):
    structattributechangeparams
   else:
    structattributechangeparams_436208336)
  enumscrollbarpart_436207986* = (when declared(enumscrollbarpart):
    enumscrollbarpart
   else:
    enumscrollbarpart_436207985)
  enumoutputseverity_436207988* = (when declared(enumoutputseverity):
    enumoutputseverity
   else:
    enumoutputseverity_436207987)
  Sciterhostcallback_436208339* = (when declared(Sciterhostcallback):
    Sciterhostcallback
   else:
    Sciterhostcallback_436208338)
  structguid_436207990* = (when declared(structguid):
    structguid
   else:
    structguid_436207989)
  Sciterxmsgcode_436208341* = (when declared(Sciterxmsgcode):
    Sciterxmsgcode
   else:
    Sciterxmsgcode_436208340)
  Byte_436207992* = (when declared(Byte):
    Byte
   else:
    Byte_436207991)
  Sciterwindowcmd_436207994* = (when declared(Sciterwindowcmd):
    Sciterwindowcmd
   else:
    Sciterwindowcmd_436207993)
  Keyparams_436207996* = (when declared(Keyparams):
    Keyparams
   else:
    Keyparams_436207995)
  Valueresult_436208343* = (when declared(Valueresult):
    Valueresult
   else:
    Valueresult_436208342)
  Hwnd_436207998* = (when declared(Hwnd):
    Hwnd
   else:
    Hwnd_436207997)
  Valueunittypeobject_436208000* = (when declared(Valueunittypeobject):
    Valueunittypeobject
   else:
    Valueunittypeobject_436207999)
  enumsciterlinecaptype_436208345* = (when declared(enumsciterlinecaptype):
    enumsciterlinecaptype
   else:
    enumsciterlinecaptype_436208344)
  Helement_436208347* = (when declared(Helement):
    Helement
   else:
    Helement_436208346)
  Scitercreatewindowflags_436208002* = (when declared(Scitercreatewindowflags):
    Scitercreatewindowflags
   else:
    Scitercreatewindowflags_436208001)
  Dataarrivedparams_436208349* = (when declared(Dataarrivedparams):
    Dataarrivedparams
   else:
    Dataarrivedparams_436208348)
  Gesturestate_436208004* = (when declared(Gesturestate):
    Gesturestate
   else:
    Gesturestate_436208003)
  Isciterapi_436208351* = (when declared(Isciterapi):
    Isciterapi
   else:
    Isciterapi_436208350)
  enuminitializationevents_436208353* = (when declared(enuminitializationevents):
    enuminitializationevents
   else:
    enuminitializationevents_436208352)
  structdrawparams_436208355* = (when declared(structdrawparams):
    structdrawparams
   else:
    structdrawparams_436208354)
  enumvalueunittypestring_436208357* = (when declared(enumvalueunittypestring):
    enumvalueunittypestring
   else:
    enumvalueunittypestring_436208356)
  Hrequest_436208006* = (when declared(Hrequest):
    Hrequest
   else:
    Hrequest_436208005)
  Sciterelementcallback_436208015* = (when declared(Sciterelementcallback):
    Sciterelementcallback
   else:
    Sciterelementcallback_436208007)
  enumsciterresourcetype_436208359* = (when declared(enumsciterresourcetype):
    enumsciterresourcetype
   else:
    enumsciterresourcetype_436208358)
  Sciterrtoptions_436208025* = (when declared(Sciterrtoptions):
    Sciterrtoptions
   else:
    Sciterrtoptions_436208024)
  structscnenginedestroyed_436208017* = (when declared(structscnenginedestroyed):
    structscnenginedestroyed
   else:
    structscnenginedestroyed_436208016)
  Sciterxmsgfocus_436208027* = (when declared(Sciterxmsgfocus):
    Sciterxmsgfocus
   else:
    Sciterxmsgfocus_436208026)
  Timerparams_436208019* = (when declared(Timerparams):
    Timerparams
   else:
    Timerparams_436208018)
  Himg_436208021* = (when declared(Himg):
    Himg
   else:
    Himg_436208020)
  Sciterxmsgpaint_436208029* = (when declared(Sciterxmsgpaint):
    Sciterxmsgpaint
   else:
    Sciterxmsgpaint_436208028)
  Keyevents_436208023* = (when declared(Keyevents):
    Keyevents
   else:
    Keyevents_436208022)
  enumsciterwindowcmd_436208361* = (when declared(enumsciterwindowcmd):
    enumsciterwindowcmd
   else:
    enumsciterwindowcmd_436208360)
  imagepaintfunction_436208363* = (when declared(imagepaintfunction):
    imagepaintfunction
   else:
    imagepaintfunction_436208362)
  Lpscnloaddata_436208365* = (when declared(Lpscnloaddata):
    Lpscnloaddata
   else:
    Lpscnloaddata_436208364)
  Nativefunctorrelease_436208367* = (when declared(Nativefunctorrelease):
    Nativefunctorrelease
   else:
    Nativefunctorrelease_436208366)
  enumeventgroups_436208369* = (when declared(enumeventgroups):
    enumeventgroups
   else:
    enumeventgroups_436208368)
  somassett_436208031* = (when declared(somassett):
    somassett
   else:
    somassett_436208030)
  Exchangecmd_436208033* = (when declared(Exchangecmd):
    Exchangecmd
   else:
    Exchangecmd_436208032)
  Sccolorstop_436208035* = (when declared(Sccolorstop):
    Sccolorstop
   else:
    Sccolorstop_436208034)
  Exchangeparams_436208037* = (when declared(Exchangeparams):
    Exchangeparams
   else:
    Exchangeparams_436208036)
  Iunknown_436208371* = (when declared(Iunknown):
    Iunknown
   else:
    Iunknown_436208370)
  structiunknown_436208373* = (when declared(structiunknown):
    structiunknown
   else:
    structiunknown_436208372)
  structfocusparams_436208375* = (when declared(structfocusparams):
    structfocusparams
   else:
    structfocusparams_436208374)
  enumvalueunittypeobject_436208377* = (when declared(enumvalueunittypeobject):
    enumvalueunittypeobject
   else:
    enumvalueunittypeobject_436208376)
  enumvalueunitundefined_436208379* = (when declared(enumvalueunitundefined):
    enumvalueunitundefined
   else:
    enumvalueunitundefined_436208378)
  structsciterxmsg_436208039* = (when declared(structsciterxmsg):
    structsciterxmsg
   else:
    structsciterxmsg_436208038)
  Sciterbehaviorfactory_436208381* = (when declared(Sciterbehaviorfactory):
    Sciterbehaviorfactory
   else:
    Sciterbehaviorfactory_436208380)
  enumdrawevents_436208043* = (when declared(enumdrawevents):
    enumdrawevents
   else:
    enumdrawevents_436208042)
  Nativefunctorinvoke_436208041* = (when declared(Nativefunctorinvoke):
    Nativefunctorinvoke
   else:
    Nativefunctorinvoke_436208040)
  enumvalueunittype_436208045* = (when declared(enumvalueunittype):
    enumvalueunittype
   else:
    enumvalueunittype_436208044)
  enumbehaviormethodidentifiers_436208047* = (when declared(
      enumbehaviormethodidentifiers):
    enumbehaviormethodidentifiers
   else:
    enumbehaviormethodidentifiers_436208046)
  Sciterxmsgheartbit_436208383* = (when declared(Sciterxmsgheartbit):
    Sciterxmsgheartbit
   else:
    Sciterxmsgheartbit_436208382)
  Setelementhtml_436208385* = (when declared(Setelementhtml):
    Setelementhtml
   else:
    Setelementhtml_436208384)
  structscitergraphicsapi_436208049* = (when declared(structscitergraphicsapi):
    structscitergraphicsapi
   else:
    structscitergraphicsapi_436208048)
  structinitializationparams_436208057* = (when declared(
      structinitializationparams):
    structinitializationparams
   else:
    structinitializationparams_436208056)
  Eventgroups_436208051* = (when declared(Eventgroups):
    Eventgroups
   else:
    Eventgroups_436208050)
  Lpcwstrreceiver_436208053* = (when declared(Lpcwstrreceiver):
    Lpcwstrreceiver
   else:
    Lpcwstrreceiver_436208052)
  wchart_436208055* = (when declared(wchart):
    wchart
   else:
    wchart_436208054)
  structsomparams_436208059* = (when declared(structsomparams):
    structsomparams
   else:
    structsomparams_436208058)
  structtagmsg_436208061* = (when declared(structtagmsg):
    structtagmsg
   else:
    structtagmsg_436208060)
  Point_436208387* = (when declared(Point):
    Point
   else:
    Point_436208386)
  Lpscndataloaded_436208063* = (when declared(Lpscndataloaded):
    Lpscndataloaded
   else:
    Lpscndataloaded_436208062)
  Scnenginedestroyed_436208389* = (when declared(Scnenginedestroyed):
    Scnenginedestroyed
   else:
    Scnenginedestroyed_436208388)
  Scitervalue_436208065* = (when declared(Scitervalue):
    Scitervalue
   else:
    Scitervalue_436208064)
  sompropertydeft_436208391* = (when declared(sompropertydeft):
    sompropertydeft
   else:
    sompropertydeft_436208390)
  Guid_436208393* = (when declared(Guid):
    Guid
   else:
    Guid_436208392)
  Outputsubsytems_436208395* = (when declared(Outputsubsytems):
    Outputsubsytems
   else:
    Outputsubsytems_436208394)
  structsciterxmsgcreate_436208397* = (when declared(structsciterxmsgcreate):
    structsciterxmsgcreate
   else:
    structsciterxmsgcreate_436208396)
  Ulong_436208403* = (when declared(Ulong):
    Ulong
   else:
    Ulong_436208402)
  enumsompassportflags_436208067* = (when declared(enumsompassportflags):
    enumsompassportflags
   else:
    enumsompassportflags_436208066)
  Mouseparams_436208069* = (when declared(Mouseparams):
    Mouseparams
   else:
    Mouseparams_436208068)
  structsciterxmsgkey_436208071* = (when declared(structsciterxmsgkey):
    structsciterxmsgkey
   else:
    structsciterxmsgkey_436208070)
  enumvalueunittypedate_436208399* = (when declared(enumvalueunittypedate):
    enumvalueunittypedate
   else:
    enumvalueunittypedate_436208398)
  Long_436208073* = (when declared(Long):
    Long
   else:
    Long_436208072)
  structrequestparam_436208401* = (when declared(structrequestparam):
    structrequestparam
   else:
    structrequestparam_436208400)
  Lpcbytereceiver_436208075* = (when declared(Lpcbytereceiver):
    Lpcbytereceiver
   else:
    Lpcbytereceiver_436208074)
  Drawevents_436208077* = (when declared(Drawevents):
    Drawevents
   else:
    Drawevents_436208076)
  Sciterxmsgdestroy_436208079* = (when declared(Sciterxmsgdestroy):
    Sciterxmsgdestroy
   else:
    Sciterxmsgdestroy_436208078)
  Focusevents_436208405* = (when declared(Focusevents):
    Focusevents
   else:
    Focusevents_436208404)
  enumelementstatebits_436208407* = (when declared(enumelementstatebits):
    enumelementstatebits
   else:
    enumelementstatebits_436208406)
  structsomassetclasst_436208409* = (when declared(structsomassetclasst):
    structsomassetclasst
   else:
    structsomassetclasst_436208408)
  Scangle_436208081* = (when declared(Scangle):
    Scangle
   else:
    Scangle_436208080)
  structtagpoint_436208411* = (when declared(structtagpoint):
    structtagpoint
   else:
    structtagpoint_436208410)
  Sciterpainttargettype_436208413* = (when declared(Sciterpainttargettype):
    Sciterpainttargettype
   else:
    Sciterpainttargettype_436208412)
  Lpscnpostednotification_436208083* = (when declared(Lpscnpostednotification):
    Lpscnpostednotification
   else:
    Lpscnpostednotification_436208082)
  Hsarchive_436208415* = (when declared(Hsarchive):
    Hsarchive
   else:
    Hsarchive_436208414)
  Sciterxmsgkey_436208417* = (when declared(Sciterxmsgkey):
    Sciterxmsgkey
   else:
    Sciterxmsgkey_436208416)
  Lpscnkeyboardrequest_436208085* = (when declared(Lpscnkeyboardrequest):
    Lpscnkeyboardrequest
   else:
    Lpscnkeyboardrequest_436208084)
  somanypropsettert_436208419* = (when declared(somanypropsettert):
    somanypropsettert
   else:
    somanypropsettert_436208418)
  somitemnextt_436208087* = (when declared(somitemnextt):
    somitemnextt
   else:
    somitemnextt_436208086)
  enumrequesttype_436208421* = (when declared(enumrequesttype):
    enumrequesttype
   else:
    enumrequesttype_436208420)
  Ddmodes_436208089* = (when declared(Ddmodes):
    Ddmodes
   else:
    Ddmodes_436208088)
  Sccolor_436208091* = (when declared(Sccolor):
    Sccolor
   else:
    Sccolor_436208090)
  structtimerparams_436208093* = (when declared(structtimerparams):
    structtimerparams
   else:
    structtimerparams_436208092)
  Initializationevents_436208095* = (when declared(Initializationevents):
    Initializationevents
   else:
    Initializationevents_436208094)
  Somparams_436208097* = (when declared(Somparams):
    Somparams
   else:
    Somparams_436208096)
  enumrequestrqtype_436208099* = (when declared(enumrequestrqtype):
    enumrequestrqtype
   else:
    enumrequestrqtype_436208098)
  enumsciterwindowstate_436208101* = (when declared(enumsciterwindowstate):
    enumsciterwindowstate
   else:
    enumsciterwindowstate_436208100)
  enumbehaviorevents_436208423* = (when declared(enumbehaviorevents):
    enumbehaviorevents
   else:
    enumbehaviorevents_436208422)
  enumfocusevents_436208103* = (when declared(enumfocusevents):
    enumfocusevents
   else:
    enumfocusevents_436208102)
  structmouseparams_436208425* = (when declared(structmouseparams):
    structmouseparams
   else:
    structmouseparams_436208424)
  Lpcstrreceiver_436208105* = (when declared(Lpcstrreceiver):
    Lpcstrreceiver
   else:
    Lpcstrreceiver_436208104)
  Valueparams_436208427* = (when declared(Valueparams):
    Valueparams
   else:
    Valueparams_436208426)
  Valueunittype_436208429* = (when declared(Valueunittype):
    Valueunittype
   else:
    Valueunittype_436208428)
  structhposition_436208431* = (when declared(structhposition):
    structhposition
   else:
    structhposition_436208430)
  somanypropgettert_436208433* = (when declared(somanypropgettert):
    somanypropgettert
   else:
    somanypropgettert_436208432)
  structsciterxmsgmouse_436208107* = (when declared(structsciterxmsgmouse):
    structsciterxmsgmouse
   else:
    structsciterxmsgmouse_436208106)
  enumnodetype_436208435* = (when declared(enumnodetype):
    enumnodetype
   else:
    enumnodetype_436208434)
  Methodparams_436208109* = (when declared(Methodparams):
    Methodparams
   else:
    Methodparams_436208108)
  structscrollparams_436208111* = (when declared(structscrollparams):
    structscrollparams
   else:
    structscrollparams_436208110)
  structsciterxmsgresolution_436208113* = (when declared(
      structsciterxmsgresolution):
    structsciterxmsgresolution
   else:
    structsciterxmsgresolution_436208112)
  enumcontentchangebits_436208115* = (when declared(enumcontentchangebits):
    enumcontentchangebits
   else:
    enumcontentchangebits_436208114)
  Valuestringcvttype_436208437* = (when declared(Valuestringcvttype):
    Valuestringcvttype
   else:
    Valuestringcvttype_436208436)
  Sciterxmsgmouse_436208439* = (when declared(Sciterxmsgmouse):
    Sciterxmsgmouse
   else:
    Sciterxmsgmouse_436208438)
  Cursortype_436208441* = (when declared(Cursortype):
    Cursortype
   else:
    Cursortype_436208440)
  Scngraphicscriticalfailure_436208117* = (when declared(
      Scngraphicscriticalfailure):
    Scngraphicscriticalfailure
   else:
    Scngraphicscriticalfailure_436208116)
  Lpelementeventproc_436208119* = (when declared(Lpelementeventproc):
    Lpelementeventproc
   else:
    Lpelementeventproc_436208118)
  structsciterxmsgdestroy_436208121* = (when declared(structsciterxmsgdestroy):
    structsciterxmsgdestroy
   else:
    structsciterxmsgdestroy_436208120)
  Sciterimageencoding_436208123* = (when declared(Sciterimageencoding):
    Sciterimageencoding
   else:
    Sciterimageencoding_436208122)
  enumscitercreatewindowflags_436208125* = (when declared(
      enumscitercreatewindowflags):
    enumscitercreatewindowflags
   else:
    enumscitercreatewindowflags_436208124)
  enumnodeinstarget_436208443* = (when declared(enumnodeinstarget):
    enumnodeinstarget
   else:
    enumnodeinstarget_436208442)
  Sciterlibraryinitfunc_436208127* = (when declared(Sciterlibraryinitfunc):
    Sciterlibraryinitfunc
   else:
    Sciterlibraryinitfunc_436208126)
  Int64_436208129* = (when declared(Int64):
    Int64
   else:
    Int64_436208128)
  Sciterxmsgresolution_436208131* = (when declared(Sciterxmsgresolution):
    Sciterxmsgresolution
   else:
    Sciterxmsgresolution_436208130)
  Rect_436208133* = (when declared(Rect):
    Rect
   else:
    Rect_436208132)
  Scninvalidaterect_436208135* = (when declared(Scninvalidaterect):
    Scninvalidaterect
   else:
    Scninvalidaterect_436208134)
  Wparam_436208445* = (when declared(Wparam):
    Wparam
   else:
    Wparam_436208444)
  Requesttype_436208137* = (when declared(Requesttype):
    Requesttype
   else:
    Requesttype_436208136)
  Scrollsource_436208139* = (when declared(Scrollsource):
    Scrollsource
   else:
    Scrollsource_436208138)
  Sciterwindowstate_436208447* = (when declared(Sciterwindowstate):
    Sciterwindowstate
   else:
    Sciterwindowstate_436208446)
  Scdim_436208141* = (when declared(Scdim):
    Scdim
   else:
    Scdim_436208140)
  structscnpostednotification_436208143* = (when declared(
      structscnpostednotification):
    structscnpostednotification
   else:
    structscnpostednotification_436208142)
  structhwnd_436208145* = (when declared(structhwnd):
    structhwnd
   else:
    structhwnd_436208144)
  enumcursortype_436208449* = (when declared(enumcursortype):
    enumcursortype
   else:
    enumcursortype_436208448)
  enumrequestresult_436208451* = (when declared(enumrequestresult):
    enumrequestresult
   else:
    enumrequestresult_436208450)
  Clickreason_436208147* = (when declared(Clickreason):
    Clickreason
   else:
    Clickreason_436208146)
  structiunknownvtbl_436208453* = (when declared(structiunknownvtbl):
    structiunknownvtbl
   else:
    structiunknownvtbl_436208452)
  Valuetype_436208455* = (when declared(Valuetype):
    Valuetype
   else:
    Valuetype_436208454)
  structdataarrivedparams_436208149* = (when declared(structdataarrivedparams):
    structdataarrivedparams
   else:
    structdataarrivedparams_436208148)
  structscnattachbehavior_436208151* = (when declared(structscnattachbehavior):
    structscnattachbehavior
   else:
    structscnattachbehavior_436208150)
  structsommethoddeft_436208457* = (when declared(structsommethoddeft):
    structsommethoddeft
   else:
    structsommethoddeft_436208456)
  Gesturetypeflags_436208459* = (when declared(Gesturetypeflags):
    Gesturetypeflags
   else:
    Gesturetypeflags_436208458)
  enumsomevents_436208153* = (when declared(enumsomevents):
    enumsomevents
   else:
    enumsomevents_436208152)
  enumgesturestate_436208155* = (when declared(enumgesturestate):
    enumgesturestate
   else:
    enumgesturestate_436208154)
  Outputseverity_436208157* = (when declared(Outputseverity):
    Outputseverity
   else:
    Outputseverity_436208156)
  structsciterxmsgfocus_436208159* = (when declared(structsciterxmsgfocus):
    structsciterxmsgfocus
   else:
    structsciterxmsgfocus_436208158)
  enumgesturecmd_436208461* = (when declared(enumgesturecmd):
    enumgesturecmd
   else:
    enumgesturecmd_436208460)
  enumscriptruntimefeatures_436208463* = (when declared(
      enumscriptruntimefeatures):
    enumscriptruntimefeatures
   else:
    enumscriptruntimefeatures_436208462)
  Mousebuttons_436208161* = (when declared(Mousebuttons):
    Mousebuttons
   else:
    Mousebuttons_436208160)
  structsompassportt_436208465* = (when declared(structsompassportt):
    structsompassportt
   else:
    structsompassportt_436208464)
  Drawparams_436208467* = (when declared(Drawparams):
    Drawparams
   else:
    Drawparams_436208466)
  Sciterapiptr_436208469* = (when declared(Sciterapiptr):
    Sciterapiptr
   else:
    Sciterapiptr_436208468)
  Elementbitmapreceiver_436208163* = (when declared(Elementbitmapreceiver):
    Elementbitmapreceiver
   else:
    Elementbitmapreceiver_436208162)
  Sciterscrollflags_436208165* = (when declared(Sciterscrollflags):
    Sciterscrollflags
   else:
    Sciterscrollflags_436208164)
  enumgesturetypeflags_436208167* = (when declared(enumgesturetypeflags):
    enumgesturetypeflags
   else:
    enumgesturetypeflags_436208166)
  enumfocuscmdtype_436208471* = (when declared(enumfocuscmdtype):
    enumfocuscmdtype
   else:
    enumfocuscmdtype_436208470)
  Lpsciterrequestapi_436208169* = (when declared(Lpsciterrequestapi):
    Lpsciterrequestapi
   else:
    Lpsciterrequestapi_436208168)
  Behaviorevents_436208473* = (when declared(Behaviorevents):
    Behaviorevents
   else:
    Behaviorevents_436208472)
  structscitercallbacknotification_436208171* = (when declared(
      structscitercallbacknotification):
    structscitercallbacknotification
   else:
    structscitercallbacknotification_436208170)
  Lpscngraphicscriticalfailure_436208173* = (when declared(
      Lpscngraphicscriticalfailure):
    Lpscngraphicscriticalfailure
   else:
    Lpscngraphicscriticalfailure_436208172)
  enumsciterpainttargettype_436208189* = (when declared(
      enumsciterpainttargettype):
    enumsciterpainttargettype
   else:
    enumsciterpainttargettype_436208188)
  Value_436208175* = (when declared(Value):
    Value
   else:
    Value_436208174)
  Lpuint_436208177* = (when declared(Lpuint):
    Lpuint
   else:
    Lpuint_436208176)
  Valueunitundefined_436208179* = (when declared(Valueunitundefined):
    Valueunitundefined
   else:
    Valueunitundefined_436208178)
  enumkeyboardstates_436208181* = (when declared(enumkeyboardstates):
    enumkeyboardstates
   else:
    enumkeyboardstates_436208180)
  structscngraphicscriticalfailure_436208475* = (when declared(
      structscngraphicscriticalfailure):
    structscngraphicscriticalfailure
   else:
    structscngraphicscriticalfailure_436208474)
  Editchangedreason_436208183* = (when declared(Editchangedreason):
    Editchangedreason
   else:
    Editchangedreason_436208182)
  Iid_436208193* = (when declared(Iid):
    Iid
   else:
    Iid_436208192)
  structscninvalidaterect_436208185* = (when declared(structscninvalidaterect):
    structscninvalidaterect
   else:
    structscninvalidaterect_436208184)
  enumctltype_436208187* = (when declared(enumctltype):
    enumctltype
   else:
    enumctltype_436208186)
  Contentchangebits_436208477* = (when declared(Contentchangebits):
    Contentchangebits
   else:
    Contentchangebits_436208476)
  somassetclasst_436208191* = (when declared(somassetclasst):
    somassetclasst
   else:
    somassetclasst_436208190)
  Sciterxmsg_436208479* = (when declared(Sciterxmsg):
    Sciterxmsg
   else:
    Sciterxmsg_436208478)
  structkeyparams_436208481* = (when declared(structkeyparams):
    structkeyparams
   else:
    structkeyparams_436208480)
  Requestresult_436208195* = (when declared(Requestresult):
    Requestresult
   else:
    Requestresult_436208194)
  Requestparam_436208483* = (when declared(Requestparam):
    Requestparam
   else:
    Requestparam_436208482)
  Htext_436208197* = (when declared(Htext):
    Htext
   else:
    Htext_436208196)
  enumexchangecmd_436208199* = (when declared(enumexchangecmd):
    enumexchangecmd
   else:
    enumexchangecmd_436208198)
  structscnkeyboardrequest_436208485* = (when declared(structscnkeyboardrequest):
    structscnkeyboardrequest
   else:
    structscnkeyboardrequest_436208484)
  enumsetelementhtml_436208201* = (when declared(enumsetelementhtml):
    enumsetelementhtml
   else:
    enumsetelementhtml_436208200)
  Lpcwstr_436208487* = (when declared(Lpcwstr):
    Lpcwstr
   else:
    Lpcwstr_436208486)
  Keyvaluecallback_436208489* = (when declared(Keyvaluecallback):
    Keyvaluecallback
   else:
    Keyvaluecallback_436208488)
  structtagsize_436208203* = (when declared(structtagsize):
    structtagsize
   else:
    structtagsize_436208202)
  Scpos_436208491* = (when declared(Scpos):
    Scpos
   else:
    Scpos_436208490)
  Lpscnenginedestroyed_436208207* = (when declared(Lpscnenginedestroyed):
    Lpscnenginedestroyed
   else:
    Lpscnenginedestroyed_436208206)
  enumdraggingtype_436208205* = (when declared(enumdraggingtype):
    enumdraggingtype
   else:
    enumdraggingtype_436208204)
  Lpwstr_436208493* = (when declared(Lpwstr):
    Lpwstr
   else:
    Lpwstr_436208492)
  structsompropertydeft_436208495* = (when declared(structsompropertydeft):
    structsompropertydeft
   else:
    structsompropertydeft_436208494)
  Uint_436208497* = (when declared(Uint):
    Uint
   else:
    Uint_436208496)
  Hnode_436208499* = (when declared(Hnode):
    Hnode
   else:
    Hnode_436208498)
  Int_436208501* = (when declared(Int):
    Int
   else:
    Int_436208500)
  enumoutputsubsytems_436208209* = (when declared(enumoutputsubsytems):
    enumoutputsubsytems
   else:
    enumoutputsubsytems_436208208)
  Gestureparams_436208503* = (when declared(Gestureparams):
    Gestureparams
   else:
    Gestureparams_436208502)
  Lprect_436208211* = (when declared(Lprect):
    Lprect
   else:
    Lprect_436208210)
  Lpcstr_436208213* = (when declared(Lpcstr):
    Lpcstr
   else:
    Lpcstr_436208212)
  Sciterlinecaptype_436208217* = (when declared(Sciterlinecaptype):
    Sciterlinecaptype
   else:
    Sciterlinecaptype_436208216)
  Elementcomparator_436208215* = (when declared(Elementcomparator):
    Elementcomparator
   else:
    Elementcomparator_436208214)
  Attributechangeparams_436208505* = (when declared(Attributechangeparams):
    Attributechangeparams
   else:
    Attributechangeparams_436208504)
  Valueunittypedate_436208219* = (when declared(Valueunittypedate):
    Valueunittypedate
   else:
    Valueunittypedate_436208218)
  structmethodparams_436208223* = (when declared(structmethodparams):
    structmethodparams
   else:
    structmethodparams_436208222)
  Hposition_436208221* = (when declared(Hposition):
    Hposition
   else:
    Hposition_436208220)
  Lpsize_436208225* = (when declared(Lpsize):
    Lpsize
   else:
    Lpsize_436208224)
  Char_436208227* = (when declared(Char):
    Char
   else:
    Char_436208226)
  Dword_436208229* = (when declared(Dword):
    Dword
   else:
    Dword_436208228)
  structsomassett_436208507* = (when declared(structsomassett):
    structsomassett
   else:
    structsomassett_436208506)
  Scndataloaded_436208509* = (when declared(Scndataloaded):
    Scndataloaded
   else:
    Scndataloaded_436208508)
  enumphasemask_436208511* = (when declared(enumphasemask):
    enumphasemask
   else:
    enumphasemask_436208510)
  Elementstatebits_436208513* = (when declared(Elementstatebits):
    Elementstatebits
   else:
    Elementstatebits_436208512)
  Focusparams_436208515* = (when declared(Focusparams):
    Focusparams
   else:
    Focusparams_436208514)
  enumrequeststate_436208517* = (when declared(enumrequeststate):
    enumrequeststate
   else:
    enumrequeststate_436208516)
  structscnloaddata_436208231* = (when declared(structscnloaddata):
    structscnloaddata
   else:
    structscnloaddata_436208230)
  Hresult_436208233* = (when declared(Hresult):
    Hresult
   else:
    Hresult_436208232)
  sompropsettert_436208519* = (when declared(sompropsettert):
    sompropsettert
   else:
    sompropsettert_436208518)
  enumscloaddatareturncodes_436208235* = (when declared(
      enumscloaddatareturncodes):
    enumscloaddatareturncodes
   else:
    enumscloaddatareturncodes_436208234)
  Mouseevents_436208237* = (when declared(Mouseevents):
    Mouseevents
   else:
    Mouseevents_436208236)
  enumsciterappcmd_436208521* = (when declared(enumsciterappcmd):
    enumsciterappcmd
   else:
    enumsciterappcmd_436208520)
  Lpsciterhostcallback_436208239* = (when declared(Lpsciterhostcallback):
    Lpsciterhostcallback
   else:
    Lpsciterhostcallback_436208238)
  Scrollevents_436208523* = (when declared(Scrollevents):
    Scrollevents
   else:
    Scrollevents_436208522)
  Initializationparams_436208241* = (when declared(Initializationparams):
    Initializationparams
   else:
    Initializationparams_436208240)
  Lpscitercallbacknotification_436208525* = (when declared(
      Lpscitercallbacknotification):
    Lpscitercallbacknotification
   else:
    Lpscitercallbacknotification_436208524)
  enumgraphinresult_436208527* = (when declared(enumgraphinresult):
    enumgraphinresult
   else:
    enumgraphinresult_436208526)
  Lpscninvalidaterect_436208529* = (when declared(Lpscninvalidaterect):
    Lpscninvalidaterect
   else:
    Lpscninvalidaterect_436208528)
  Urldatareceiver_436208243* = (when declared(Urldatareceiver):
    Urldatareceiver
   else:
    Urldatareceiver_436208242)
  Hpath_436208245* = (when declared(Hpath):
    Hpath
   else:
    Hpath_436208244)
  Behaviormethodidentifiers_436208247* = (when declared(
      Behaviormethodidentifiers):
    Behaviormethodidentifiers
   else:
    Behaviormethodidentifiers_436208246)
  Scitergraphics_436208531* = (when declared(Scitergraphics):
    Scitergraphics
   else:
    Scitergraphics_436208530)
  enumelementareas_436208533* = (when declared(enumelementareas):
    enumelementareas
   else:
    enumelementareas_436208532)
  somatomt_436208535* = (when declared(somatomt):
    somatomt
   else:
    somatomt_436208534)
  Lpelementeventproctypedef_436208537* = (when declared(
      Lpelementeventproctypedef):
    Lpelementeventproctypedef
   else:
    Lpelementeventproctypedef_436208536)
  Gesturecmd_436208539* = (when declared(Gesturecmd):
    Gesturecmd
   else:
    Gesturecmd_436208538)
  Phasemask_436208541* = (when declared(Phasemask):
    Phasemask
   else:
    Phasemask_436208540)
  Lparam_436208543* = (when declared(Lparam):
    Lparam
   else:
    Lparam_436208542)
  Sciterwindowdelegate_436208249* = (when declared(Sciterwindowdelegate):
    Sciterwindowdelegate
   else:
    Sciterwindowdelegate_436208248)
  Requeststate_436208545* = (when declared(Requeststate):
    Requeststate
   else:
    Requeststate_436208544)
  enumsciterlinejointype_436208251* = (when declared(enumsciterlinejointype):
    enumsciterlinejointype
   else:
    enumsciterlinejointype_436208250)
  structsciterxmsgheartbit_436208253* = (when declared(structsciterxmsgheartbit):
    structsciterxmsgheartbit
   else:
    structsciterxmsgheartbit_436208252)
  Lppoint_436208547* = (when declared(Lppoint):
    Lppoint
   else:
    Lppoint_436208546)
  enumscrollevents_436208549* = (when declared(enumscrollevents):
    enumscrollevents
   else:
    enumscrollevents_436208548)
  structscndataloaded_436208255* = (when declared(structscndataloaded):
    structscndataloaded
   else:
    structscndataloaded_436208254)
  enumvalueresult_436208257* = (when declared(enumvalueresult):
    enumvalueresult
   else:
    enumvalueresult_436208256)
  Requestrqtype_436208551* = (when declared(Requestrqtype):
    Requestrqtype
   else:
    Requestrqtype_436208550)
  structsciterrequestapi_436208553* = (when declared(structsciterrequestapi):
    structsciterrequestapi
   else:
    structsciterrequestapi_436208552)
  enumkeyevents_436208555* = (when declared(enumkeyevents):
    enumkeyevents
   else:
    enumkeyevents_436208554)
  Scitercallbacknotification_436208557* = (when declared(
      Scitercallbacknotification):
    Scitercallbacknotification
   else:
    Scitercallbacknotification_436208556)
  Sciterresourcetype_436208559* = (when declared(Sciterresourcetype):
    Sciterresourcetype
   else:
    Sciterresourcetype_436208558)
  Uint64_436208561* = (when declared(Uint64):
    Uint64
   else:
    Uint64_436208560)
  structscriptingmethodparams_436208563* = (when declared(
      structscriptingmethodparams):
    structscriptingmethodparams
   else:
    structscriptingmethodparams_436208562)
  structurldata_436208565* = (when declared(structurldata):
    structurldata
   else:
    structurldata_436208564)
  somitemgettert_436208259* = (when declared(somitemgettert):
    somitemgettert
   else:
    somitemgettert_436208258)
  sommethodt_436208567* = (when declared(sommethodt):
    sommethodt
   else:
    sommethodt_436208566)
  structexchangeparams_436208261* = (when declared(structexchangeparams):
    structexchangeparams
   else:
    structexchangeparams_436208260)
  enumeditchangedreason_436208263* = (when declared(enumeditchangedreason):
    enumeditchangedreason
   else:
    enumeditchangedreason_436208262)
  Behavioreventparams_436208265* = (when declared(Behavioreventparams):
    Behavioreventparams
   else:
    Behavioreventparams_436208264)
  Draggingtype_436208267* = (when declared(Draggingtype):
    Draggingtype
   else:
    Draggingtype_436208266)
  somdisposet_436208269* = (when declared(somdisposet):
    somdisposet
   else:
    somdisposet_436208268)
  structtagrect_436208569* = (when declared(structtagrect):
    structtagrect
   else:
    structtagrect_436208568)
  Sciterxmsgcreate_436208571* = (when declared(Sciterxmsgcreate):
    Sciterxmsgcreate
   else:
    Sciterxmsgcreate_436208570)
when not declared(Hgfx):
  type
    Hgfx* = Hgfx_436207923
else:
  static :
    hint("Declaration of " & "HGFX" & " already exists, not redeclaring")
when not declared(Valueunittypestring):
  type
    Valueunittypestring* = Valueunittypestring_436207920
else:
  static :
    hint("Declaration of " & "VALUE_UNIT_TYPE_STRING" &
        " already exists, not redeclaring")
when not declared(structsciterxmsgpaint):
  type
    structsciterxmsgpaint* = structsciterxmsgpaint_436207925
else:
  static :
    hint("Declaration of " & "struct_SCITER_X_MSG_PAINT" &
        " already exists, not redeclaring")
when not declared(sompassportt):
  type
    sompassportt* = sompassportt_436208270
else:
  static :
    hint("Declaration of " & "som_passport_t" &
        " already exists, not redeclaring")
when not declared(Somevents):
  type
    Somevents* = Somevents_436207927
else:
  static :
    hint("Declaration of " & "SOM_EVENTS" & " already exists, not redeclaring")
when not declared(Scriptingmethodparams):
  type
    Scriptingmethodparams* = Scriptingmethodparams_436208272
else:
  static :
    hint("Declaration of " & "SCRIPTING_METHOD_PARAMS" &
        " already exists, not redeclaring")
when not declared(Sciterxmsgsize):
  type
    Sciterxmsgsize* = Sciterxmsgsize_436208274
else:
  static :
    hint("Declaration of " & "SCITER_X_MSG_SIZE" &
        " already exists, not redeclaring")
when not declared(Lpvoid):
  type
    Lpvoid* = Lpvoid_436208278
else:
  static :
    hint("Declaration of " & "LPVOID" & " already exists, not redeclaring")
when not declared(sompropgettert):
  type
    sompropgettert* = sompropgettert_436208282
else:
  static :
    hint("Declaration of " & "som_prop_getter_t" &
        " already exists, not redeclaring")
when not declared(Graphinresult):
  type
    Graphinresult* = Graphinresult_436207931
else:
  static :
    hint("Declaration of " & "GRAPHIN_RESULT" &
        " already exists, not redeclaring")
when not declared(Lresult):
  type
    Lresult* = Lresult_436207933
else:
  static :
    hint("Declaration of " & "LRESULT" & " already exists, not redeclaring")
when not declared(Msg):
  type
    Msg* = Msg_436208284
else:
  static :
    hint("Declaration of " & "MSG" & " already exists, not redeclaring")
when not declared(Screal):
  type
    Screal* = Screal_436208286
else:
  static :
    hint("Declaration of " & "SC_REAL" & " already exists, not redeclaring")
when not declared(structsccolorstop):
  type
    structsccolorstop* = structsccolorstop_436208288
else:
  static :
    hint("Declaration of " & "struct_SC_COLOR_STOP" &
        " already exists, not redeclaring")
when not declared(Scnkeyboardrequest):
  type
    Scnkeyboardrequest* = Scnkeyboardrequest_436208290
else:
  static :
    hint("Declaration of " & "SCN_KEYBOARD_REQUEST" &
        " already exists, not redeclaring")
when not declared(Size):
  type
    Size* = Size_436207937
else:
  static :
    hint("Declaration of " & "SIZE" & " already exists, not redeclaring")
when not declared(Sciterbehaviorfactoryinitfunc):
  type
    Sciterbehaviorfactoryinitfunc* = Sciterbehaviorfactoryinitfunc_436207941
else:
  static :
    hint("Declaration of " & "SciterBehaviorFactoryInitFunc" &
        " already exists, not redeclaring")
when not declared(Hrange):
  type
    Hrange* = Hrange_436208292
else:
  static :
    hint("Declaration of " & "HRANGE" & " already exists, not redeclaring")
when not declared(Lpscitergraphicsapi):
  type
    Lpscitergraphicsapi* = Lpscitergraphicsapi_436207943
else:
  static :
    hint("Declaration of " & "LPSciterGraphicsAPI" &
        " already exists, not redeclaring")
when not declared(structisciterapi):
  type
    structisciterapi* = structisciterapi_436208294
else:
  static :
    hint("Declaration of " & "struct__ISciterAPI" &
        " already exists, not redeclaring")
when not declared(Lpcbyte):
  type
    Lpcbyte* = Lpcbyte_436207945
else:
  static :
    hint("Declaration of " & "LPCBYTE" & " already exists, not redeclaring")
when not declared(Scriptruntimefeatures):
  type
    Scriptruntimefeatures* = Scriptruntimefeatures_436208298
else:
  static :
    hint("Declaration of " & "SCRIPT_RUNTIME_FEATURES" &
        " already exists, not redeclaring")
when not declared(Scnpostednotification):
  type
    Scnpostednotification* = Scnpostednotification_436207947
else:
  static :
    hint("Declaration of " & "SCN_POSTED_NOTIFICATION" &
        " already exists, not redeclaring")
when not declared(Intptr):
  type
    Intptr* = Intptr_436207951
else:
  static :
    hint("Declaration of " & "INT_PTR" & " already exists, not redeclaring")
when not declared(Sciterlinejointype):
  type
    Sciterlinejointype* = Sciterlinejointype_436207949
else:
  static :
    hint("Declaration of " & "SCITER_LINE_JOIN_TYPE" &
        " already exists, not redeclaring")
when not declared(structsciterxmsgsize):
  type
    structsciterxmsgsize* = structsciterxmsgsize_436208300
else:
  static :
    hint("Declaration of " & "struct_SCITER_X_MSG_SIZE" &
        " already exists, not redeclaring")
when not declared(Wchar):
  type
    Wchar* = Wchar_436208302
else:
  static :
    hint("Declaration of " & "WCHAR" & " already exists, not redeclaring")
when not declared(Focuscmdtype):
  type
    Focuscmdtype* = Focuscmdtype_436207955
else:
  static :
    hint("Declaration of " & "FOCUS_CMD_TYPE" &
        " already exists, not redeclaring")
when not declared(structvalueparams):
  type
    structvalueparams* = structvalueparams_436207957
else:
  static :
    hint("Declaration of " & "struct_VALUE_PARAMS" &
        " already exists, not redeclaring")
when not declared(Scrollparams):
  type
    Scrollparams* = Scrollparams_436208304
else:
  static :
    hint("Declaration of " & "SCROLL_PARAMS" &
        " already exists, not redeclaring")
when not declared(wchar):
  type
    wchar* = wchar_436207961
else:
  static :
    hint("Declaration of " & "wchar" & " already exists, not redeclaring")
when not declared(imagewritefunction):
  type
    imagewritefunction* = imagewritefunction_436208306
else:
  static :
    hint("Declaration of " & "image_write_function" &
        " already exists, not redeclaring")
when not declared(structgestureparams):
  type
    structgestureparams* = structgestureparams_436208308
else:
  static :
    hint("Declaration of " & "struct_GESTURE_PARAMS" &
        " already exists, not redeclaring")
when not declared(structbehavioreventparams):
  type
    structbehavioreventparams* = structbehavioreventparams_436207963
else:
  static :
    hint("Declaration of " & "struct_BEHAVIOR_EVENT_PARAMS" &
        " already exists, not redeclaring")
when not declared(Scrollbarpart):
  type
    Scrollbarpart* = Scrollbarpart_436207965
else:
  static :
    hint("Declaration of " & "SCROLLBAR_PART" &
        " already exists, not redeclaring")
when not declared(Isemptyparams):
  type
    Isemptyparams* = Isemptyparams_436208312
else:
  static :
    hint("Declaration of " & "IS_EMPTY_PARAMS" &
        " already exists, not redeclaring")
when not declared(Longptr):
  type
    Longptr* = Longptr_436207967
else:
  static :
    hint("Declaration of " & "LONG_PTR" & " already exists, not redeclaring")
when not declared(Sciterappcmd):
  type
    Sciterappcmd* = Sciterappcmd_436207971
else:
  static :
    hint("Declaration of " & "SCITER_APP_CMD" &
        " already exists, not redeclaring")
when not declared(Uintptr):
  type
    Uintptr* = Uintptr_436208314
else:
  static :
    hint("Declaration of " & "UINT_PTR" & " already exists, not redeclaring")
when not declared(sommethoddeft):
  type
    sommethoddeft* = sommethoddeft_436208316
else:
  static :
    hint("Declaration of " & "som_method_def_t" &
        " already exists, not redeclaring")
when not declared(structisemptyparams):
  type
    structisemptyparams* = structisemptyparams_436208318
else:
  static :
    hint("Declaration of " & "struct_IS_EMPTY_PARAMS" &
        " already exists, not redeclaring")
when not declared(Scnloaddata):
  type
    Scnloaddata* = Scnloaddata_436207975
else:
  static :
    hint("Declaration of " & "SCN_LOAD_DATA" &
        " already exists, not redeclaring")
when not declared(Elementeventproc):
  type
    Elementeventproc* = Elementeventproc_436208320
else:
  static :
    hint("Declaration of " & "ElementEventProc" &
        " already exists, not redeclaring")
when not declared(Scnattachbehavior):
  type
    Scnattachbehavior* = Scnattachbehavior_436208322
else:
  static :
    hint("Declaration of " & "SCN_ATTACH_BEHAVIOR" &
        " already exists, not redeclaring")
when not declared(Drawpathmode):
  type
    Drawpathmode* = Drawpathmode_436207979
else:
  static :
    hint("Declaration of " & "DRAW_PATH_MODE" &
        " already exists, not redeclaring")
when not declared(Urldata):
  type
    Urldata* = Urldata_436208324
else:
  static :
    hint("Declaration of " & "URL_DATA" & " already exists, not redeclaring")
when not declared(Debugoutputproc):
  type
    Debugoutputproc* = Debugoutputproc_436208326
else:
  static :
    hint("Declaration of " & "DEBUG_OUTPUT_PROC" &
        " already exists, not redeclaring")
when not declared(somitemsettert):
  type
    somitemsettert* = somitemsettert_436208328
else:
  static :
    hint("Declaration of " & "som_item_setter_t" &
        " already exists, not redeclaring")
when not declared(Lpscnattachbehavior):
  type
    Lpscnattachbehavior* = Lpscnattachbehavior_436207983
else:
  static :
    hint("Declaration of " & "LPSCN_ATTACH_BEHAVIOR" &
        " already exists, not redeclaring")
when not declared(Sbool):
  type
    Sbool* = Sbool_436208330
else:
  static :
    hint("Declaration of " & "SBOOL" & " already exists, not redeclaring")
when not declared(Elementareas):
  type
    Elementareas* = Elementareas_436208332
else:
  static :
    hint("Declaration of " & "ELEMENT_AREAS" &
        " already exists, not redeclaring")
when not declared(Keyboardstates):
  type
    Keyboardstates* = Keyboardstates_436208334
else:
  static :
    hint("Declaration of " & "KEYBOARD_STATES" &
        " already exists, not redeclaring")
when not declared(structattributechangeparams):
  type
    structattributechangeparams* = structattributechangeparams_436208336
else:
  static :
    hint("Declaration of " & "struct_ATTRIBUTE_CHANGE_PARAMS" &
        " already exists, not redeclaring")
when not declared(Sciterhostcallback):
  type
    Sciterhostcallback* = Sciterhostcallback_436208338
else:
  static :
    hint("Declaration of " & "SciterHostCallback" &
        " already exists, not redeclaring")
when not declared(structguid):
  type
    structguid* = structguid_436207989
else:
  static :
    hint("Declaration of " & "struct__GUID" & " already exists, not redeclaring")
when not declared(Sciterxmsgcode):
  type
    Sciterxmsgcode* = Sciterxmsgcode_436208340
else:
  static :
    hint("Declaration of " & "SCITER_X_MSG_CODE" &
        " already exists, not redeclaring")
when not declared(Byte):
  type
    Byte* = Byte_436207991
else:
  static :
    hint("Declaration of " & "BYTE" & " already exists, not redeclaring")
when not declared(Sciterwindowcmd):
  type
    Sciterwindowcmd* = Sciterwindowcmd_436207993
else:
  static :
    hint("Declaration of " & "SCITER_WINDOW_CMD" &
        " already exists, not redeclaring")
when not declared(Keyparams):
  type
    Keyparams* = Keyparams_436207995
else:
  static :
    hint("Declaration of " & "KEY_PARAMS" & " already exists, not redeclaring")
when not declared(Valueresult):
  type
    Valueresult* = Valueresult_436208342
else:
  static :
    hint("Declaration of " & "VALUE_RESULT" & " already exists, not redeclaring")
when not declared(Hwnd):
  type
    Hwnd* = Hwnd_436207997
else:
  static :
    hint("Declaration of " & "HWND" & " already exists, not redeclaring")
when not declared(Valueunittypeobject):
  type
    Valueunittypeobject* = Valueunittypeobject_436207999
else:
  static :
    hint("Declaration of " & "VALUE_UNIT_TYPE_OBJECT" &
        " already exists, not redeclaring")
when not declared(Helement):
  type
    Helement* = Helement_436208346
else:
  static :
    hint("Declaration of " & "HELEMENT" & " already exists, not redeclaring")
when not declared(Scitercreatewindowflags):
  type
    Scitercreatewindowflags* = Scitercreatewindowflags_436208001
else:
  static :
    hint("Declaration of " & "SCITER_CREATE_WINDOW_FLAGS" &
        " already exists, not redeclaring")
when not declared(Dataarrivedparams):
  type
    Dataarrivedparams* = Dataarrivedparams_436208348
else:
  static :
    hint("Declaration of " & "DATA_ARRIVED_PARAMS" &
        " already exists, not redeclaring")
when not declared(Gesturestate):
  type
    Gesturestate* = Gesturestate_436208003
else:
  static :
    hint("Declaration of " & "GESTURE_STATE" &
        " already exists, not redeclaring")
when not declared(Isciterapi):
  type
    Isciterapi* = Isciterapi_436208350
else:
  static :
    hint("Declaration of " & "ISciterAPI" & " already exists, not redeclaring")
when not declared(structdrawparams):
  type
    structdrawparams* = structdrawparams_436208354
else:
  static :
    hint("Declaration of " & "struct_DRAW_PARAMS" &
        " already exists, not redeclaring")
when not declared(Hrequest):
  type
    Hrequest* = Hrequest_436208005
else:
  static :
    hint("Declaration of " & "HREQUEST" & " already exists, not redeclaring")
when not declared(Sciterelementcallback):
  type
    Sciterelementcallback* = Sciterelementcallback_436208007
else:
  static :
    hint("Declaration of " & "SciterElementCallback" &
        " already exists, not redeclaring")
when not declared(Sciterrtoptions):
  type
    Sciterrtoptions* = Sciterrtoptions_436208024
else:
  static :
    hint("Declaration of " & "SCITER_RT_OPTIONS" &
        " already exists, not redeclaring")
when not declared(structscnenginedestroyed):
  type
    structscnenginedestroyed* = structscnenginedestroyed_436208016
else:
  static :
    hint("Declaration of " & "struct_SCN_ENGINE_DESTROYED" &
        " already exists, not redeclaring")
when not declared(Sciterxmsgfocus):
  type
    Sciterxmsgfocus* = Sciterxmsgfocus_436208026
else:
  static :
    hint("Declaration of " & "SCITER_X_MSG_FOCUS" &
        " already exists, not redeclaring")
when not declared(Timerparams):
  type
    Timerparams* = Timerparams_436208018
else:
  static :
    hint("Declaration of " & "TIMER_PARAMS" & " already exists, not redeclaring")
when not declared(Himg):
  type
    Himg* = Himg_436208020
else:
  static :
    hint("Declaration of " & "HIMG" & " already exists, not redeclaring")
when not declared(Sciterxmsgpaint):
  type
    Sciterxmsgpaint* = Sciterxmsgpaint_436208028
else:
  static :
    hint("Declaration of " & "SCITER_X_MSG_PAINT" &
        " already exists, not redeclaring")
when not declared(Keyevents):
  type
    Keyevents* = Keyevents_436208022
else:
  static :
    hint("Declaration of " & "KEY_EVENTS" & " already exists, not redeclaring")
when not declared(imagepaintfunction):
  type
    imagepaintfunction* = imagepaintfunction_436208362
else:
  static :
    hint("Declaration of " & "image_paint_function" &
        " already exists, not redeclaring")
when not declared(Lpscnloaddata):
  type
    Lpscnloaddata* = Lpscnloaddata_436208364
else:
  static :
    hint("Declaration of " & "LPSCN_LOAD_DATA" &
        " already exists, not redeclaring")
when not declared(Nativefunctorrelease):
  type
    Nativefunctorrelease* = Nativefunctorrelease_436208366
else:
  static :
    hint("Declaration of " & "NATIVE_FUNCTOR_RELEASE" &
        " already exists, not redeclaring")
when not declared(somassett):
  type
    somassett* = somassett_436208030
else:
  static :
    hint("Declaration of " & "som_asset_t" & " already exists, not redeclaring")
when not declared(Exchangecmd):
  type
    Exchangecmd* = Exchangecmd_436208032
else:
  static :
    hint("Declaration of " & "EXCHANGE_CMD" & " already exists, not redeclaring")
when not declared(Sccolorstop):
  type
    Sccolorstop* = Sccolorstop_436208034
else:
  static :
    hint("Declaration of " & "SC_COLOR_STOP" &
        " already exists, not redeclaring")
when not declared(Exchangeparams):
  type
    Exchangeparams* = Exchangeparams_436208036
else:
  static :
    hint("Declaration of " & "EXCHANGE_PARAMS" &
        " already exists, not redeclaring")
when not declared(Iunknown):
  type
    Iunknown* = Iunknown_436208370
else:
  static :
    hint("Declaration of " & "IUnknown" & " already exists, not redeclaring")
when not declared(structiunknown):
  type
    structiunknown* = structiunknown_436208372
else:
  static :
    hint("Declaration of " & "struct_IUnknown" &
        " already exists, not redeclaring")
when not declared(structfocusparams):
  type
    structfocusparams* = structfocusparams_436208374
else:
  static :
    hint("Declaration of " & "struct_FOCUS_PARAMS" &
        " already exists, not redeclaring")
when not declared(structsciterxmsg):
  type
    structsciterxmsg* = structsciterxmsg_436208038
else:
  static :
    hint("Declaration of " & "struct_SCITER_X_MSG" &
        " already exists, not redeclaring")
when not declared(Sciterbehaviorfactory):
  type
    Sciterbehaviorfactory* = Sciterbehaviorfactory_436208380
else:
  static :
    hint("Declaration of " & "SciterBehaviorFactory" &
        " already exists, not redeclaring")
when not declared(Nativefunctorinvoke):
  type
    Nativefunctorinvoke* = Nativefunctorinvoke_436208040
else:
  static :
    hint("Declaration of " & "NATIVE_FUNCTOR_INVOKE" &
        " already exists, not redeclaring")
when not declared(Sciterxmsgheartbit):
  type
    Sciterxmsgheartbit* = Sciterxmsgheartbit_436208382
else:
  static :
    hint("Declaration of " & "SCITER_X_MSG_HEARTBIT" &
        " already exists, not redeclaring")
when not declared(Setelementhtml):
  type
    Setelementhtml* = Setelementhtml_436208384
else:
  static :
    hint("Declaration of " & "SET_ELEMENT_HTML" &
        " already exists, not redeclaring")
when not declared(structscitergraphicsapi):
  type
    structscitergraphicsapi* = structscitergraphicsapi_436208048
else:
  static :
    hint("Declaration of " & "struct_SciterGraphicsAPI" &
        " already exists, not redeclaring")
when not declared(structinitializationparams):
  type
    structinitializationparams* = structinitializationparams_436208056
else:
  static :
    hint("Declaration of " & "struct_INITIALIZATION_PARAMS" &
        " already exists, not redeclaring")
when not declared(Eventgroups):
  type
    Eventgroups* = Eventgroups_436208050
else:
  static :
    hint("Declaration of " & "EVENT_GROUPS" & " already exists, not redeclaring")
when not declared(Lpcwstrreceiver):
  type
    Lpcwstrreceiver* = Lpcwstrreceiver_436208052
else:
  static :
    hint("Declaration of " & "LPCWSTR_RECEIVER" &
        " already exists, not redeclaring")
when not declared(wchart):
  type
    wchart* = wchart_436208054
else:
  static :
    hint("Declaration of " & "wchar_t" & " already exists, not redeclaring")
when not declared(structsomparams):
  type
    structsomparams* = structsomparams_436208058
else:
  static :
    hint("Declaration of " & "struct_SOM_PARAMS" &
        " already exists, not redeclaring")
when not declared(structtagmsg):
  type
    structtagmsg* = structtagmsg_436208060
else:
  static :
    hint("Declaration of " & "struct_tagMSG" &
        " already exists, not redeclaring")
when not declared(Point):
  type
    Point* = Point_436208386
else:
  static :
    hint("Declaration of " & "POINT" & " already exists, not redeclaring")
when not declared(Lpscndataloaded):
  type
    Lpscndataloaded* = Lpscndataloaded_436208062
else:
  static :
    hint("Declaration of " & "LPSCN_DATA_LOADED" &
        " already exists, not redeclaring")
when not declared(Scnenginedestroyed):
  type
    Scnenginedestroyed* = Scnenginedestroyed_436208388
else:
  static :
    hint("Declaration of " & "SCN_ENGINE_DESTROYED" &
        " already exists, not redeclaring")
when not declared(Scitervalue):
  type
    Scitervalue* = Scitervalue_436208064
else:
  static :
    hint("Declaration of " & "SCITER_VALUE" & " already exists, not redeclaring")
when not declared(sompropertydeft):
  type
    sompropertydeft* = sompropertydeft_436208390
else:
  static :
    hint("Declaration of " & "som_property_def_t" &
        " already exists, not redeclaring")
when not declared(Guid):
  type
    Guid* = Guid_436208392
else:
  static :
    hint("Declaration of " & "GUID" & " already exists, not redeclaring")
when not declared(Outputsubsytems):
  type
    Outputsubsytems* = Outputsubsytems_436208394
else:
  static :
    hint("Declaration of " & "OUTPUT_SUBSYTEMS" &
        " already exists, not redeclaring")
when not declared(structsciterxmsgcreate):
  type
    structsciterxmsgcreate* = structsciterxmsgcreate_436208396
else:
  static :
    hint("Declaration of " & "struct_SCITER_X_MSG_CREATE" &
        " already exists, not redeclaring")
when not declared(Ulong):
  type
    Ulong* = Ulong_436208402
else:
  static :
    hint("Declaration of " & "ULONG" & " already exists, not redeclaring")
when not declared(Mouseparams):
  type
    Mouseparams* = Mouseparams_436208068
else:
  static :
    hint("Declaration of " & "MOUSE_PARAMS" & " already exists, not redeclaring")
when not declared(structsciterxmsgkey):
  type
    structsciterxmsgkey* = structsciterxmsgkey_436208070
else:
  static :
    hint("Declaration of " & "struct_SCITER_X_MSG_KEY" &
        " already exists, not redeclaring")
when not declared(Long):
  type
    Long* = Long_436208072
else:
  static :
    hint("Declaration of " & "LONG" & " already exists, not redeclaring")
when not declared(structrequestparam):
  type
    structrequestparam* = structrequestparam_436208400
else:
  static :
    hint("Declaration of " & "struct_REQUEST_PARAM" &
        " already exists, not redeclaring")
when not declared(Lpcbytereceiver):
  type
    Lpcbytereceiver* = Lpcbytereceiver_436208074
else:
  static :
    hint("Declaration of " & "LPCBYTE_RECEIVER" &
        " already exists, not redeclaring")
when not declared(Drawevents):
  type
    Drawevents* = Drawevents_436208076
else:
  static :
    hint("Declaration of " & "DRAW_EVENTS" & " already exists, not redeclaring")
when not declared(Sciterxmsgdestroy):
  type
    Sciterxmsgdestroy* = Sciterxmsgdestroy_436208078
else:
  static :
    hint("Declaration of " & "SCITER_X_MSG_DESTROY" &
        " already exists, not redeclaring")
when not declared(Focusevents):
  type
    Focusevents* = Focusevents_436208404
else:
  static :
    hint("Declaration of " & "FOCUS_EVENTS" & " already exists, not redeclaring")
when not declared(structsomassetclasst):
  type
    structsomassetclasst* = structsomassetclasst_436208408
else:
  static :
    hint("Declaration of " & "struct_som_asset_class_t" &
        " already exists, not redeclaring")
when not declared(Scangle):
  type
    Scangle* = Scangle_436208080
else:
  static :
    hint("Declaration of " & "SC_ANGLE" & " already exists, not redeclaring")
when not declared(structtagpoint):
  type
    structtagpoint* = structtagpoint_436208410
else:
  static :
    hint("Declaration of " & "struct_tagPOINT" &
        " already exists, not redeclaring")
when not declared(Sciterpainttargettype):
  type
    Sciterpainttargettype* = Sciterpainttargettype_436208412
else:
  static :
    hint("Declaration of " & "SCITER_PAINT_TARGET_TYPE" &
        " already exists, not redeclaring")
when not declared(Lpscnpostednotification):
  type
    Lpscnpostednotification* = Lpscnpostednotification_436208082
else:
  static :
    hint("Declaration of " & "LPSCN_POSTED_NOTIFICATION" &
        " already exists, not redeclaring")
when not declared(Hsarchive):
  type
    Hsarchive* = Hsarchive_436208414
else:
  static :
    hint("Declaration of " & "HSARCHIVE" & " already exists, not redeclaring")
when not declared(Sciterxmsgkey):
  type
    Sciterxmsgkey* = Sciterxmsgkey_436208416
else:
  static :
    hint("Declaration of " & "SCITER_X_MSG_KEY" &
        " already exists, not redeclaring")
when not declared(Lpscnkeyboardrequest):
  type
    Lpscnkeyboardrequest* = Lpscnkeyboardrequest_436208084
else:
  static :
    hint("Declaration of " & "LPSCN_KEYBOARD_REQUEST" &
        " already exists, not redeclaring")
when not declared(somanypropsettert):
  type
    somanypropsettert* = somanypropsettert_436208418
else:
  static :
    hint("Declaration of " & "som_any_prop_setter_t" &
        " already exists, not redeclaring")
when not declared(somitemnextt):
  type
    somitemnextt* = somitemnextt_436208086
else:
  static :
    hint("Declaration of " & "som_item_next_t" &
        " already exists, not redeclaring")
when not declared(Ddmodes):
  type
    Ddmodes* = Ddmodes_436208088
else:
  static :
    hint("Declaration of " & "DD_MODES" & " already exists, not redeclaring")
when not declared(Sccolor):
  type
    Sccolor* = Sccolor_436208090
else:
  static :
    hint("Declaration of " & "SC_COLOR" & " already exists, not redeclaring")
when not declared(structtimerparams):
  type
    structtimerparams* = structtimerparams_436208092
else:
  static :
    hint("Declaration of " & "struct_TIMER_PARAMS" &
        " already exists, not redeclaring")
when not declared(Initializationevents):
  type
    Initializationevents* = Initializationevents_436208094
else:
  static :
    hint("Declaration of " & "INITIALIZATION_EVENTS" &
        " already exists, not redeclaring")
when not declared(Somparams):
  type
    Somparams* = Somparams_436208096
else:
  static :
    hint("Declaration of " & "SOM_PARAMS" & " already exists, not redeclaring")
when not declared(structmouseparams):
  type
    structmouseparams* = structmouseparams_436208424
else:
  static :
    hint("Declaration of " & "struct_MOUSE_PARAMS" &
        " already exists, not redeclaring")
when not declared(Lpcstrreceiver):
  type
    Lpcstrreceiver* = Lpcstrreceiver_436208104
else:
  static :
    hint("Declaration of " & "LPCSTR_RECEIVER" &
        " already exists, not redeclaring")
when not declared(Valueparams):
  type
    Valueparams* = Valueparams_436208426
else:
  static :
    hint("Declaration of " & "VALUE_PARAMS" & " already exists, not redeclaring")
when not declared(Valueunittype):
  type
    Valueunittype* = Valueunittype_436208428
else:
  static :
    hint("Declaration of " & "VALUE_UNIT_TYPE" &
        " already exists, not redeclaring")
when not declared(structhposition):
  type
    structhposition* = structhposition_436208430
else:
  static :
    hint("Declaration of " & "struct_hposition" &
        " already exists, not redeclaring")
when not declared(somanypropgettert):
  type
    somanypropgettert* = somanypropgettert_436208432
else:
  static :
    hint("Declaration of " & "som_any_prop_getter_t" &
        " already exists, not redeclaring")
when not declared(structsciterxmsgmouse):
  type
    structsciterxmsgmouse* = structsciterxmsgmouse_436208106
else:
  static :
    hint("Declaration of " & "struct_SCITER_X_MSG_MOUSE" &
        " already exists, not redeclaring")
when not declared(Methodparams):
  type
    Methodparams* = Methodparams_436208108
else:
  static :
    hint("Declaration of " & "METHOD_PARAMS" &
        " already exists, not redeclaring")
when not declared(structscrollparams):
  type
    structscrollparams* = structscrollparams_436208110
else:
  static :
    hint("Declaration of " & "struct_SCROLL_PARAMS" &
        " already exists, not redeclaring")
when not declared(structsciterxmsgresolution):
  type
    structsciterxmsgresolution* = structsciterxmsgresolution_436208112
else:
  static :
    hint("Declaration of " & "struct_SCITER_X_MSG_RESOLUTION" &
        " already exists, not redeclaring")
when not declared(Valuestringcvttype):
  type
    Valuestringcvttype* = Valuestringcvttype_436208436
else:
  static :
    hint("Declaration of " & "VALUE_STRING_CVT_TYPE" &
        " already exists, not redeclaring")
when not declared(Sciterxmsgmouse):
  type
    Sciterxmsgmouse* = Sciterxmsgmouse_436208438
else:
  static :
    hint("Declaration of " & "SCITER_X_MSG_MOUSE" &
        " already exists, not redeclaring")
when not declared(Cursortype):
  type
    Cursortype* = Cursortype_436208440
else:
  static :
    hint("Declaration of " & "CURSOR_TYPE" & " already exists, not redeclaring")
when not declared(Scngraphicscriticalfailure):
  type
    Scngraphicscriticalfailure* = Scngraphicscriticalfailure_436208116
else:
  static :
    hint("Declaration of " & "SCN_GRAPHICS_CRITICAL_FAILURE" &
        " already exists, not redeclaring")
when not declared(Lpelementeventproc):
  type
    Lpelementeventproc* = Lpelementeventproc_436208118
else:
  static :
    hint("Declaration of " & "LPELEMENT_EVENT_PROC" &
        " already exists, not redeclaring")
when not declared(structsciterxmsgdestroy):
  type
    structsciterxmsgdestroy* = structsciterxmsgdestroy_436208120
else:
  static :
    hint("Declaration of " & "struct_SCITER_X_MSG_DESTROY" &
        " already exists, not redeclaring")
when not declared(Sciterimageencoding):
  type
    Sciterimageencoding* = Sciterimageencoding_436208122
else:
  static :
    hint("Declaration of " & "SCITER_IMAGE_ENCODING" &
        " already exists, not redeclaring")
when not declared(Sciterlibraryinitfunc):
  type
    Sciterlibraryinitfunc* = Sciterlibraryinitfunc_436208126
else:
  static :
    hint("Declaration of " & "SciterLibraryInitFunc" &
        " already exists, not redeclaring")
when not declared(Int64):
  type
    Int64* = Int64_436208128
else:
  static :
    hint("Declaration of " & "INT64" & " already exists, not redeclaring")
when not declared(Sciterxmsgresolution):
  type
    Sciterxmsgresolution* = Sciterxmsgresolution_436208130
else:
  static :
    hint("Declaration of " & "SCITER_X_MSG_RESOLUTION" &
        " already exists, not redeclaring")
when not declared(Rect):
  type
    Rect* = Rect_436208132
else:
  static :
    hint("Declaration of " & "RECT" & " already exists, not redeclaring")
when not declared(Scninvalidaterect):
  type
    Scninvalidaterect* = Scninvalidaterect_436208134
else:
  static :
    hint("Declaration of " & "SCN_INVALIDATE_RECT" &
        " already exists, not redeclaring")
when not declared(Wparam):
  type
    Wparam* = Wparam_436208444
else:
  static :
    hint("Declaration of " & "WPARAM" & " already exists, not redeclaring")
when not declared(Requesttype):
  type
    Requesttype* = Requesttype_436208136
else:
  static :
    hint("Declaration of " & "REQUEST_TYPE" & " already exists, not redeclaring")
when not declared(Scrollsource):
  type
    Scrollsource* = Scrollsource_436208138
else:
  static :
    hint("Declaration of " & "SCROLL_SOURCE" &
        " already exists, not redeclaring")
when not declared(Sciterwindowstate):
  type
    Sciterwindowstate* = Sciterwindowstate_436208446
else:
  static :
    hint("Declaration of " & "SCITER_WINDOW_STATE" &
        " already exists, not redeclaring")
when not declared(Scdim):
  type
    Scdim* = Scdim_436208140
else:
  static :
    hint("Declaration of " & "SC_DIM" & " already exists, not redeclaring")
when not declared(structscnpostednotification):
  type
    structscnpostednotification* = structscnpostednotification_436208142
else:
  static :
    hint("Declaration of " & "struct_SCN_POSTED_NOTIFICATION" &
        " already exists, not redeclaring")
when not declared(structhwnd):
  type
    structhwnd* = structhwnd_436208144
else:
  static :
    hint("Declaration of " & "struct_HWND__" &
        " already exists, not redeclaring")
when not declared(Clickreason):
  type
    Clickreason* = Clickreason_436208146
else:
  static :
    hint("Declaration of " & "CLICK_REASON" & " already exists, not redeclaring")
when not declared(structiunknownvtbl):
  type
    structiunknownvtbl* = structiunknownvtbl_436208452
else:
  static :
    hint("Declaration of " & "struct_IUnknownVtbl" &
        " already exists, not redeclaring")
when not declared(Valuetype):
  type
    Valuetype* = Valuetype_436208454
else:
  static :
    hint("Declaration of " & "VALUE_TYPE" & " already exists, not redeclaring")
when not declared(structdataarrivedparams):
  type
    structdataarrivedparams* = structdataarrivedparams_436208148
else:
  static :
    hint("Declaration of " & "struct_DATA_ARRIVED_PARAMS" &
        " already exists, not redeclaring")
when not declared(structscnattachbehavior):
  type
    structscnattachbehavior* = structscnattachbehavior_436208150
else:
  static :
    hint("Declaration of " & "struct_SCN_ATTACH_BEHAVIOR" &
        " already exists, not redeclaring")
when not declared(structsommethoddeft):
  type
    structsommethoddeft* = structsommethoddeft_436208456
else:
  static :
    hint("Declaration of " & "struct_som_method_def_t" &
        " already exists, not redeclaring")
when not declared(Gesturetypeflags):
  type
    Gesturetypeflags* = Gesturetypeflags_436208458
else:
  static :
    hint("Declaration of " & "GESTURE_TYPE_FLAGS" &
        " already exists, not redeclaring")
when not declared(Outputseverity):
  type
    Outputseverity* = Outputseverity_436208156
else:
  static :
    hint("Declaration of " & "OUTPUT_SEVERITY" &
        " already exists, not redeclaring")
when not declared(structsciterxmsgfocus):
  type
    structsciterxmsgfocus* = structsciterxmsgfocus_436208158
else:
  static :
    hint("Declaration of " & "struct_SCITER_X_MSG_FOCUS" &
        " already exists, not redeclaring")
when not declared(Mousebuttons):
  type
    Mousebuttons* = Mousebuttons_436208160
else:
  static :
    hint("Declaration of " & "MOUSE_BUTTONS" &
        " already exists, not redeclaring")
when not declared(structsompassportt):
  type
    structsompassportt* = structsompassportt_436208464
else:
  static :
    hint("Declaration of " & "struct_som_passport_t" &
        " already exists, not redeclaring")
when not declared(Drawparams):
  type
    Drawparams* = Drawparams_436208466
else:
  static :
    hint("Declaration of " & "DRAW_PARAMS" & " already exists, not redeclaring")
when not declared(Sciterapiptr):
  type
    Sciterapiptr* = Sciterapiptr_436208468
else:
  static :
    hint("Declaration of " & "SciterAPI_ptr" &
        " already exists, not redeclaring")
when not declared(Elementbitmapreceiver):
  type
    Elementbitmapreceiver* = Elementbitmapreceiver_436208162
else:
  static :
    hint("Declaration of " & "ELEMENT_BITMAP_RECEIVER" &
        " already exists, not redeclaring")
when not declared(Sciterscrollflags):
  type
    Sciterscrollflags* = Sciterscrollflags_436208164
else:
  static :
    hint("Declaration of " & "SCITER_SCROLL_FLAGS" &
        " already exists, not redeclaring")
when not declared(Lpsciterrequestapi):
  type
    Lpsciterrequestapi* = Lpsciterrequestapi_436208168
else:
  static :
    hint("Declaration of " & "LPSciterRequestAPI" &
        " already exists, not redeclaring")
when not declared(Behaviorevents):
  type
    Behaviorevents* = Behaviorevents_436208472
else:
  static :
    hint("Declaration of " & "BEHAVIOR_EVENTS" &
        " already exists, not redeclaring")
when not declared(structscitercallbacknotification):
  type
    structscitercallbacknotification* = structscitercallbacknotification_436208170
else:
  static :
    hint("Declaration of " & "struct_SCITER_CALLBACK_NOTIFICATION" &
        " already exists, not redeclaring")
when not declared(Lpscngraphicscriticalfailure):
  type
    Lpscngraphicscriticalfailure* = Lpscngraphicscriticalfailure_436208172
else:
  static :
    hint("Declaration of " & "LPSCN_GRAPHICS_CRITICAL_FAILURE" &
        " already exists, not redeclaring")
when not declared(Value):
  type
    Value* = Value_436208174
else:
  static :
    hint("Declaration of " & "VALUE" & " already exists, not redeclaring")
when not declared(Lpuint):
  type
    Lpuint* = Lpuint_436208176
else:
  static :
    hint("Declaration of " & "LPUINT" & " already exists, not redeclaring")
when not declared(Valueunitundefined):
  type
    Valueunitundefined* = Valueunitundefined_436208178
else:
  static :
    hint("Declaration of " & "VALUE_UNIT_UNDEFINED" &
        " already exists, not redeclaring")
when not declared(structscngraphicscriticalfailure):
  type
    structscngraphicscriticalfailure* = structscngraphicscriticalfailure_436208474
else:
  static :
    hint("Declaration of " & "struct_SCN_GRAPHICS_CRITICAL_FAILURE" &
        " already exists, not redeclaring")
when not declared(Editchangedreason):
  type
    Editchangedreason* = Editchangedreason_436208182
else:
  static :
    hint("Declaration of " & "EDIT_CHANGED_REASON" &
        " already exists, not redeclaring")
when not declared(Iid):
  type
    Iid* = Iid_436208192
else:
  static :
    hint("Declaration of " & "IID" & " already exists, not redeclaring")
when not declared(structscninvalidaterect):
  type
    structscninvalidaterect* = structscninvalidaterect_436208184
else:
  static :
    hint("Declaration of " & "struct_SCN_INVALIDATE_RECT" &
        " already exists, not redeclaring")
when not declared(Contentchangebits):
  type
    Contentchangebits* = Contentchangebits_436208476
else:
  static :
    hint("Declaration of " & "CONTENT_CHANGE_BITS" &
        " already exists, not redeclaring")
when not declared(somassetclasst):
  type
    somassetclasst* = somassetclasst_436208190
else:
  static :
    hint("Declaration of " & "som_asset_class_t" &
        " already exists, not redeclaring")
when not declared(Sciterxmsg):
  type
    Sciterxmsg* = Sciterxmsg_436208478
else:
  static :
    hint("Declaration of " & "SCITER_X_MSG" & " already exists, not redeclaring")
when not declared(structkeyparams):
  type
    structkeyparams* = structkeyparams_436208480
else:
  static :
    hint("Declaration of " & "struct_KEY_PARAMS" &
        " already exists, not redeclaring")
when not declared(Requestresult):
  type
    Requestresult* = Requestresult_436208194
else:
  static :
    hint("Declaration of " & "REQUEST_RESULT" &
        " already exists, not redeclaring")
when not declared(Requestparam):
  type
    Requestparam* = Requestparam_436208482
else:
  static :
    hint("Declaration of " & "REQUEST_PARAM" &
        " already exists, not redeclaring")
when not declared(Htext):
  type
    Htext* = Htext_436208196
else:
  static :
    hint("Declaration of " & "HTEXT" & " already exists, not redeclaring")
when not declared(structscnkeyboardrequest):
  type
    structscnkeyboardrequest* = structscnkeyboardrequest_436208484
else:
  static :
    hint("Declaration of " & "struct_SCN_KEYBOARD_REQUEST" &
        " already exists, not redeclaring")
when not declared(Lpcwstr):
  type
    Lpcwstr* = Lpcwstr_436208486
else:
  static :
    hint("Declaration of " & "LPCWSTR" & " already exists, not redeclaring")
when not declared(Keyvaluecallback):
  type
    Keyvaluecallback* = Keyvaluecallback_436208488
else:
  static :
    hint("Declaration of " & "KeyValueCallback" &
        " already exists, not redeclaring")
when not declared(structtagsize):
  type
    structtagsize* = structtagsize_436208202
else:
  static :
    hint("Declaration of " & "struct_tagSIZE" &
        " already exists, not redeclaring")
when not declared(Scpos):
  type
    Scpos* = Scpos_436208490
else:
  static :
    hint("Declaration of " & "SC_POS" & " already exists, not redeclaring")
when not declared(Lpscnenginedestroyed):
  type
    Lpscnenginedestroyed* = Lpscnenginedestroyed_436208206
else:
  static :
    hint("Declaration of " & "LPSCN_ENGINE_DESTROYED" &
        " already exists, not redeclaring")
when not declared(Lpwstr):
  type
    Lpwstr* = Lpwstr_436208492
else:
  static :
    hint("Declaration of " & "LPWSTR" & " already exists, not redeclaring")
when not declared(structsompropertydeft):
  type
    structsompropertydeft* = structsompropertydeft_436208494
else:
  static :
    hint("Declaration of " & "struct_som_property_def_t" &
        " already exists, not redeclaring")
when not declared(Uint):
  type
    Uint* = Uint_436208496
else:
  static :
    hint("Declaration of " & "UINT" & " already exists, not redeclaring")
when not declared(Hnode):
  type
    Hnode* = Hnode_436208498
else:
  static :
    hint("Declaration of " & "HNODE" & " already exists, not redeclaring")
when not declared(Int):
  type
    Int* = Int_436208500
else:
  static :
    hint("Declaration of " & "INT" & " already exists, not redeclaring")
when not declared(Gestureparams):
  type
    Gestureparams* = Gestureparams_436208502
else:
  static :
    hint("Declaration of " & "GESTURE_PARAMS" &
        " already exists, not redeclaring")
when not declared(Lprect):
  type
    Lprect* = Lprect_436208210
else:
  static :
    hint("Declaration of " & "LPRECT" & " already exists, not redeclaring")
when not declared(Lpcstr):
  type
    Lpcstr* = Lpcstr_436208212
else:
  static :
    hint("Declaration of " & "LPCSTR" & " already exists, not redeclaring")
when not declared(Sciterlinecaptype):
  type
    Sciterlinecaptype* = Sciterlinecaptype_436208216
else:
  static :
    hint("Declaration of " & "SCITER_LINE_CAP_TYPE" &
        " already exists, not redeclaring")
when not declared(Elementcomparator):
  type
    Elementcomparator* = Elementcomparator_436208214
else:
  static :
    hint("Declaration of " & "ELEMENT_COMPARATOR" &
        " already exists, not redeclaring")
when not declared(Attributechangeparams):
  type
    Attributechangeparams* = Attributechangeparams_436208504
else:
  static :
    hint("Declaration of " & "ATTRIBUTE_CHANGE_PARAMS" &
        " already exists, not redeclaring")
when not declared(Valueunittypedate):
  type
    Valueunittypedate* = Valueunittypedate_436208218
else:
  static :
    hint("Declaration of " & "VALUE_UNIT_TYPE_DATE" &
        " already exists, not redeclaring")
when not declared(structmethodparams):
  type
    structmethodparams* = structmethodparams_436208222
else:
  static :
    hint("Declaration of " & "struct_METHOD_PARAMS" &
        " already exists, not redeclaring")
when not declared(Hposition):
  type
    Hposition* = Hposition_436208220
else:
  static :
    hint("Declaration of " & "HPOSITION" & " already exists, not redeclaring")
when not declared(Lpsize):
  type
    Lpsize* = Lpsize_436208224
else:
  static :
    hint("Declaration of " & "LPSIZE" & " already exists, not redeclaring")
when not declared(Char):
  type
    Char* = Char_436208226
else:
  static :
    hint("Declaration of " & "CHAR" & " already exists, not redeclaring")
when not declared(Dword):
  type
    Dword* = Dword_436208228
else:
  static :
    hint("Declaration of " & "DWORD" & " already exists, not redeclaring")
when not declared(structsomassett):
  type
    structsomassett* = structsomassett_436208506
else:
  static :
    hint("Declaration of " & "struct_som_asset_t" &
        " already exists, not redeclaring")
when not declared(Scndataloaded):
  type
    Scndataloaded* = Scndataloaded_436208508
else:
  static :
    hint("Declaration of " & "SCN_DATA_LOADED" &
        " already exists, not redeclaring")
when not declared(Elementstatebits):
  type
    Elementstatebits* = Elementstatebits_436208512
else:
  static :
    hint("Declaration of " & "ELEMENT_STATE_BITS" &
        " already exists, not redeclaring")
when not declared(Focusparams):
  type
    Focusparams* = Focusparams_436208514
else:
  static :
    hint("Declaration of " & "FOCUS_PARAMS" & " already exists, not redeclaring")
when not declared(structscnloaddata):
  type
    structscnloaddata* = structscnloaddata_436208230
else:
  static :
    hint("Declaration of " & "struct_SCN_LOAD_DATA" &
        " already exists, not redeclaring")
when not declared(Hresult):
  type
    Hresult* = Hresult_436208232
else:
  static :
    hint("Declaration of " & "HRESULT" & " already exists, not redeclaring")
when not declared(sompropsettert):
  type
    sompropsettert* = sompropsettert_436208518
else:
  static :
    hint("Declaration of " & "som_prop_setter_t" &
        " already exists, not redeclaring")
when not declared(Mouseevents):
  type
    Mouseevents* = Mouseevents_436208236
else:
  static :
    hint("Declaration of " & "MOUSE_EVENTS" & " already exists, not redeclaring")
when not declared(Lpsciterhostcallback):
  type
    Lpsciterhostcallback* = Lpsciterhostcallback_436208238
else:
  static :
    hint("Declaration of " & "LPSciterHostCallback" &
        " already exists, not redeclaring")
when not declared(Scrollevents):
  type
    Scrollevents* = Scrollevents_436208522
else:
  static :
    hint("Declaration of " & "SCROLL_EVENTS" &
        " already exists, not redeclaring")
when not declared(Initializationparams):
  type
    Initializationparams* = Initializationparams_436208240
else:
  static :
    hint("Declaration of " & "INITIALIZATION_PARAMS" &
        " already exists, not redeclaring")
when not declared(Lpscitercallbacknotification):
  type
    Lpscitercallbacknotification* = Lpscitercallbacknotification_436208524
else:
  static :
    hint("Declaration of " & "LPSCITER_CALLBACK_NOTIFICATION" &
        " already exists, not redeclaring")
when not declared(Lpscninvalidaterect):
  type
    Lpscninvalidaterect* = Lpscninvalidaterect_436208528
else:
  static :
    hint("Declaration of " & "LPSCN_INVALIDATE_RECT" &
        " already exists, not redeclaring")
when not declared(Urldatareceiver):
  type
    Urldatareceiver* = Urldatareceiver_436208242
else:
  static :
    hint("Declaration of " & "URL_DATA_RECEIVER" &
        " already exists, not redeclaring")
when not declared(Hpath):
  type
    Hpath* = Hpath_436208244
else:
  static :
    hint("Declaration of " & "HPATH" & " already exists, not redeclaring")
when not declared(Behaviormethodidentifiers):
  type
    Behaviormethodidentifiers* = Behaviormethodidentifiers_436208246
else:
  static :
    hint("Declaration of " & "BEHAVIOR_METHOD_IDENTIFIERS" &
        " already exists, not redeclaring")
when not declared(Scitergraphics):
  type
    Scitergraphics* = Scitergraphics_436208530
else:
  static :
    hint("Declaration of " & "SCITER_GRAPHICS" &
        " already exists, not redeclaring")
when not declared(somatomt):
  type
    somatomt* = somatomt_436208534
else:
  static :
    hint("Declaration of " & "som_atom_t" & " already exists, not redeclaring")
when not declared(Lpelementeventproctypedef):
  type
    Lpelementeventproctypedef* = Lpelementeventproctypedef_436208536
else:
  static :
    hint("Declaration of " & "LPElementEventProc" &
        " already exists, not redeclaring")
when not declared(Gesturecmd):
  type
    Gesturecmd* = Gesturecmd_436208538
else:
  static :
    hint("Declaration of " & "GESTURE_CMD" & " already exists, not redeclaring")
when not declared(Phasemask):
  type
    Phasemask* = Phasemask_436208540
else:
  static :
    hint("Declaration of " & "PHASE_MASK" & " already exists, not redeclaring")
when not declared(Lparam):
  type
    Lparam* = Lparam_436208542
else:
  static :
    hint("Declaration of " & "LPARAM" & " already exists, not redeclaring")
when not declared(Sciterwindowdelegate):
  type
    Sciterwindowdelegate* = Sciterwindowdelegate_436208248
else:
  static :
    hint("Declaration of " & "SciterWindowDelegate" &
        " already exists, not redeclaring")
when not declared(Requeststate):
  type
    Requeststate* = Requeststate_436208544
else:
  static :
    hint("Declaration of " & "REQUEST_STATE" &
        " already exists, not redeclaring")
when not declared(structsciterxmsgheartbit):
  type
    structsciterxmsgheartbit* = structsciterxmsgheartbit_436208252
else:
  static :
    hint("Declaration of " & "struct_SCITER_X_MSG_HEARTBIT" &
        " already exists, not redeclaring")
when not declared(Lppoint):
  type
    Lppoint* = Lppoint_436208546
else:
  static :
    hint("Declaration of " & "LPPOINT" & " already exists, not redeclaring")
when not declared(structscndataloaded):
  type
    structscndataloaded* = structscndataloaded_436208254
else:
  static :
    hint("Declaration of " & "struct_SCN_DATA_LOADED" &
        " already exists, not redeclaring")
when not declared(Requestrqtype):
  type
    Requestrqtype* = Requestrqtype_436208550
else:
  static :
    hint("Declaration of " & "REQUEST_RQ_TYPE" &
        " already exists, not redeclaring")
when not declared(structsciterrequestapi):
  type
    structsciterrequestapi* = structsciterrequestapi_436208552
else:
  static :
    hint("Declaration of " & "struct_SciterRequestAPI" &
        " already exists, not redeclaring")
when not declared(Scitercallbacknotification):
  type
    Scitercallbacknotification* = Scitercallbacknotification_436208556
else:
  static :
    hint("Declaration of " & "SCITER_CALLBACK_NOTIFICATION" &
        " already exists, not redeclaring")
when not declared(Sciterresourcetype):
  type
    Sciterresourcetype* = Sciterresourcetype_436208558
else:
  static :
    hint("Declaration of " & "SciterResourceType" &
        " already exists, not redeclaring")
when not declared(Uint64):
  type
    Uint64* = Uint64_436208560
else:
  static :
    hint("Declaration of " & "UINT64" & " already exists, not redeclaring")
when not declared(structscriptingmethodparams):
  type
    structscriptingmethodparams* = structscriptingmethodparams_436208562
else:
  static :
    hint("Declaration of " & "struct_SCRIPTING_METHOD_PARAMS" &
        " already exists, not redeclaring")
when not declared(structurldata):
  type
    structurldata* = structurldata_436208564
else:
  static :
    hint("Declaration of " & "struct_URL_DATA" &
        " already exists, not redeclaring")
when not declared(somitemgettert):
  type
    somitemgettert* = somitemgettert_436208258
else:
  static :
    hint("Declaration of " & "som_item_getter_t" &
        " already exists, not redeclaring")
when not declared(sommethodt):
  type
    sommethodt* = sommethodt_436208566
else:
  static :
    hint("Declaration of " & "som_method_t" & " already exists, not redeclaring")
when not declared(structexchangeparams):
  type
    structexchangeparams* = structexchangeparams_436208260
else:
  static :
    hint("Declaration of " & "struct_EXCHANGE_PARAMS" &
        " already exists, not redeclaring")
when not declared(Behavioreventparams):
  type
    Behavioreventparams* = Behavioreventparams_436208264
else:
  static :
    hint("Declaration of " & "BEHAVIOR_EVENT_PARAMS" &
        " already exists, not redeclaring")
when not declared(Draggingtype):
  type
    Draggingtype* = Draggingtype_436208266
else:
  static :
    hint("Declaration of " & "DRAGGING_TYPE" &
        " already exists, not redeclaring")
when not declared(somdisposet):
  type
    somdisposet* = somdisposet_436208268
else:
  static :
    hint("Declaration of " & "som_dispose_t" &
        " already exists, not redeclaring")
when not declared(structtagrect):
  type
    structtagrect* = structtagrect_436208568
else:
  static :
    hint("Declaration of " & "struct_tagRECT" &
        " already exists, not redeclaring")
when not declared(Sciterxmsgcreate):
  type
    Sciterxmsgcreate* = Sciterxmsgcreate_436208570
else:
  static :
    hint("Declaration of " & "SCITER_X_MSG_CREATE" &
        " already exists, not redeclaring")
when not declared(Sckeyboardrequest):
  when 8 is static:
    const
      Sckeyboardrequest* = 8 ## Generated based on D:\Projects\nsciter\sciter-js-sdk\include\sciter-x-def.h:142:9
  else:
    let Sckeyboardrequest* = 8 ## Generated based on D:\Projects\nsciter\sciter-js-sdk\include\sciter-x-def.h:142:9
else:
  static :
    hint("Declaration of " & "SC_KEYBOARD_REQUEST" &
        " already exists, not redeclaring")
when not declared(Scdominvalidhwnd):
  when 1 is static:
    const
      Scdominvalidhwnd* = 1  ## Generated based on D:\Projects\nsciter\sciter-js-sdk\include\sciter-x-dom.h:74:9
  else:
    let Scdominvalidhwnd* = 1 ## Generated based on D:\Projects\nsciter\sciter-js-sdk\include\sciter-x-dom.h:74:9
else:
  static :
    hint("Declaration of " & "SCDOM_INVALID_HWND" &
        " already exists, not redeclaring")
when not declared(Scapi):
  when compilerstdcall is typedesc:
    type
      Scapi* = compilerstdcall ## Generated based on D:\Projects\nsciter\sciter-js-sdk\include\sciter-x-primitives.h:89:11
  else:
    when compilerstdcall is static:
      const
        Scapi* = compilerstdcall ## Generated based on D:\Projects\nsciter\sciter-js-sdk\include\sciter-x-primitives.h:89:11
    else:
      let Scapi* = compilerstdcall ## Generated based on D:\Projects\nsciter\sciter-js-sdk\include\sciter-x-primitives.h:89:11
else:
  static :
    hint("Declaration of " & "SCAPI" & " already exists, not redeclaring")
when not declared(Scdominvalidhandle):
  when 2 is static:
    const
      Scdominvalidhandle* = 2 ## Generated based on D:\Projects\nsciter\sciter-js-sdk\include\sciter-x-dom.h:75:9
  else:
    let Scdominvalidhandle* = 2 ## Generated based on D:\Projects\nsciter\sciter-js-sdk\include\sciter-x-dom.h:75:9
else:
  static :
    hint("Declaration of " & "SCDOM_INVALID_HANDLE" &
        " already exists, not redeclaring")
when not declared(Sciterapiversion):
  when 9 is static:
    const
      Sciterapiversion* = 9  ## Generated based on D:\Projects\nsciter\sciter-js-sdk\include\sciter-x-api.h:47:11
  else:
    let Sciterapiversion* = 9 ## Generated based on D:\Projects\nsciter\sciter-js-sdk\include\sciter-x-api.h:47:11
else:
  static :
    hint("Declaration of " & "SCITER_API_VERSION" &
        " already exists, not redeclaring")
when not declared(Scpostednotification):
  when 6 is static:
    const
      Scpostednotification* = 6 ## Generated based on D:\Projects\nsciter\sciter-js-sdk\include\sciter-x-def.h:124:9
  else:
    let Scpostednotification* = 6 ## Generated based on D:\Projects\nsciter\sciter-js-sdk\include\sciter-x-def.h:124:9
else:
  static :
    hint("Declaration of " & "SC_POSTED_NOTIFICATION" &
        " already exists, not redeclaring")
when not declared(Scdompassivehandle):
  when 3 is static:
    const
      Scdompassivehandle* = 3 ## Generated based on D:\Projects\nsciter\sciter-js-sdk\include\sciter-x-dom.h:76:9
  else:
    let Scdompassivehandle* = 3 ## Generated based on D:\Projects\nsciter\sciter-js-sdk\include\sciter-x-dom.h:76:9
else:
  static :
    hint("Declaration of " & "SCDOM_PASSIVE_HANDLE" &
        " already exists, not redeclaring")
when not declared(Scdomoperationfailed):
  when 5 is static:
    const
      Scdomoperationfailed* = 5 ## Generated based on D:\Projects\nsciter\sciter-js-sdk\include\sciter-x-dom.h:78:9
  else:
    let Scdomoperationfailed* = 5 ## Generated based on D:\Projects\nsciter\sciter-js-sdk\include\sciter-x-dom.h:78:9
else:
  static :
    hint("Declaration of " & "SCDOM_OPERATION_FAILED" &
        " already exists, not redeclaring")
when not declared(Scdomok):
  when 0 is static:
    const
      Scdomok* = 0           ## Generated based on D:\Projects\nsciter\sciter-js-sdk\include\sciter-x-dom.h:73:9
  else:
    let Scdomok* = 0         ## Generated based on D:\Projects\nsciter\sciter-js-sdk\include\sciter-x-dom.h:73:9
else:
  static :
    hint("Declaration of " & "SCDOM_OK" & " already exists, not redeclaring")
when not declared(Floatvalue):
  when double is typedesc:
    type
      Floatvalue* = double   ## Generated based on D:\Projects\nsciter\sciter-js-sdk\include\value.h:21:9
  else:
    when double is static:
      const
        Floatvalue* = double ## Generated based on D:\Projects\nsciter\sciter-js-sdk\include\value.h:21:9
    else:
      let Floatvalue* = double ## Generated based on D:\Projects\nsciter\sciter-js-sdk\include\value.h:21:9
else:
  static :
    hint("Declaration of " & "FLOAT_VALUE" & " already exists, not redeclaring")
when not declared(Sciterenumurldata):
  proc Sciterenumurldata*(hwndsciter: Hwnd_436207998; receiver: proc (
      a0: ptr Urldata_436208325; a1: Lpvoid_436208279): void {.cdecl.};
                          param: Lpvoid_436208279; url: Lpcstr_436208213): Sbool_436208331 {.
      cdecl, importc: "SciterEnumUrlData".}
else:
  static :
    hint("Declaration of " & "SciterEnumUrlData" &
        " already exists, not redeclaring")
when not declared(Scitersetupdebugoutput):
  proc Scitersetupdebugoutput*(hwndornull: Hwnd_436207998; param: Lpvoid_436208279;
                               pfoutput: Debugoutputproc_436208327): void {.
      cdecl, importc: "SciterSetupDebugOutput".}
else:
  static :
    hint("Declaration of " & "SciterSetupDebugOutput" &
        " already exists, not redeclaring")
when not declared(Scdomresult):
  when Int_436208501 is typedesc:
    type
      Scdomresult* = Int_436208501 ## Generated based on D:\Projects\nsciter\sciter-js-sdk\include\sciter-x-dom.h:71:9
  else:
    when Int_436208501 is static:
      const
        Scdomresult* = Int_436208501 ## Generated based on D:\Projects\nsciter\sciter-js-sdk\include\sciter-x-dom.h:71:9
    else:
      let Scdomresult* = Int_436208501 ## Generated based on D:\Projects\nsciter\sciter-js-sdk\include\sciter-x-dom.h:71:9
else:
  static :
    hint("Declaration of " & "SCDOM_RESULT" & " already exists, not redeclaring")
when not declared(Scgraphicscriticalfailure):
  when 7 is static:
    const
      Scgraphicscriticalfailure* = 7 ## Generated based on D:\Projects\nsciter\sciter-js-sdk\include\sciter-x-def.h:133:9
  else:
    let Scgraphicscriticalfailure* = 7 ## Generated based on D:\Projects\nsciter\sciter-js-sdk\include\sciter-x-def.h:133:9
else:
  static :
    hint("Declaration of " & "SC_GRAPHICS_CRITICAL_FAILURE" &
        " already exists, not redeclaring")
when not declared(Scinvalidaterect):
  when 9 is static:
    const
      Scinvalidaterect* = 9  ## Generated based on D:\Projects\nsciter\sciter-js-sdk\include\sciter-x-def.h:149:9
  else:
    let Scinvalidaterect* = 9 ## Generated based on D:\Projects\nsciter\sciter-js-sdk\include\sciter-x-def.h:149:9
else:
  static :
    hint("Declaration of " & "SC_INVALIDATE_RECT" &
        " already exists, not redeclaring")
when not declared(Scdominvalidparameter):
  when 4 is static:
    const
      Scdominvalidparameter* = 4 ## Generated based on D:\Projects\nsciter\sciter-js-sdk\include\sciter-x-dom.h:77:9
  else:
    let Scdominvalidparameter* = 4 ## Generated based on D:\Projects\nsciter\sciter-js-sdk\include\sciter-x-dom.h:77:9
else:
  static :
    hint("Declaration of " & "SCDOM_INVALID_PARAMETER" &
        " already exists, not redeclaring")
when not declared(Scitergetelementnamespace):
  proc Scitergetelementnamespace*(he: Helement_436208347; pval: pointer): Int_436208501 {.
      cdecl, importc: "SciterGetElementNamespace".}
else:
  static :
    hint("Declaration of " & "SciterGetElementNamespace" &
        " already exists, not redeclaring")
when not declared(Scitergetobject):
  proc Scitergetobject*(he: Helement_436208347; pval: pointer;
                        forcecreation: Sbool_436208331): Int_436208501 {.cdecl,
      importc: "SciterGetObject".}
else:
  static :
    hint("Declaration of " & "SciterGetObject" &
        " already exists, not redeclaring")
when not declared(Scloaddata):
  when 1 is static:
    const
      Scloaddata* = 1        ## Generated based on D:\Projects\nsciter\sciter-js-sdk\include\sciter-x-def.h:77:9
  else:
    let Scloaddata* = 1      ## Generated based on D:\Projects\nsciter\sciter-js-sdk\include\sciter-x-def.h:77:9
else:
  static :
    hint("Declaration of " & "SC_LOAD_DATA" & " already exists, not redeclaring")
when not declared(Scdataloaded):
  when 2 is static:
    const
      Scdataloaded* = 2      ## Generated based on D:\Projects\nsciter\sciter-js-sdk\include\sciter-x-def.h:88:9
  else:
    let Scdataloaded* = 2    ## Generated based on D:\Projects\nsciter\sciter-js-sdk\include\sciter-x-def.h:88:9
else:
  static :
    hint("Declaration of " & "SC_DATA_LOADED" &
        " already exists, not redeclaring")
when not declared(Scattachbehavior):
  when 4 is static:
    const
      Scattachbehavior* = 4  ## Generated based on D:\Projects\nsciter\sciter-js-sdk\include\sciter-x-def.h:109:9
  else:
    let Scattachbehavior* = 4 ## Generated based on D:\Projects\nsciter\sciter-js-sdk\include\sciter-x-def.h:109:9
else:
  static :
    hint("Declaration of " & "SC_ATTACH_BEHAVIOR" &
        " already exists, not redeclaring")
when not declared(Scenginedestroyed):
  when 5 is static:
    const
      Scenginedestroyed* = 5 ## Generated based on D:\Projects\nsciter\sciter-js-sdk\include\sciter-x-def.h:117:9
  else:
    let Scenginedestroyed* = 5 ## Generated based on D:\Projects\nsciter\sciter-js-sdk\include\sciter-x-def.h:117:9
else:
  static :
    hint("Declaration of " & "SC_ENGINE_DESTROYED" &
        " already exists, not redeclaring")
when not declared(Hwindow):
  when Hwnd_436207998 is typedesc:
    type
      Hwindow* = Hwnd_436207998 ## Generated based on D:\Projects\nsciter\sciter-js-sdk\include\sciter-x-types.h:43:13
  else:
    when Hwnd_436207998 is static:
      const
        Hwindow* = Hwnd_436207998 ## Generated based on D:\Projects\nsciter\sciter-js-sdk\include\sciter-x-types.h:43:13
    else:
      let Hwindow* = Hwnd_436207998 ## Generated based on D:\Projects\nsciter\sciter-js-sdk\include\sciter-x-types.h:43:13
else:
  static :
    hint("Declaration of " & "HWINDOW" & " already exists, not redeclaring")
when not declared(Externc):
  when extern is typedesc:
    type
      Externc* = extern      ## Generated based on D:\Projects\nsciter\sciter-js-sdk\include\sciter-x-primitives.h:333:11
  else:
    when extern is static:
      const
        Externc* = extern    ## Generated based on D:\Projects\nsciter\sciter-js-sdk\include\sciter-x-primitives.h:333:11
    else:
      let Externc* = extern  ## Generated based on D:\Projects\nsciter\sciter-js-sdk\include\sciter-x-primitives.h:333:11
else:
  static :
    hint("Declaration of " & "EXTERN_C" & " already exists, not redeclaring")
when not declared(Stdcall):
  when compilerstdcall is typedesc:
    type
      Stdcall* = compilerstdcall ## Generated based on D:\Projects\nsciter\sciter-js-sdk\include\sciter-x-primitives.h:297:9
  else:
    when compilerstdcall is static:
      const
        Stdcall* = compilerstdcall ## Generated based on D:\Projects\nsciter\sciter-js-sdk\include\sciter-x-primitives.h:297:9
    else:
      let Stdcall* = compilerstdcall ## Generated based on D:\Projects\nsciter\sciter-js-sdk\include\sciter-x-primitives.h:297:9
else:
  static :
    hint("Declaration of " & "STDCALL" & " already exists, not redeclaring")
when not declared(Somvalue):
  when Scitervalue_436208065 is typedesc:
    type
      Somvalue* = Scitervalue_436208065 ## Generated based on D:\Projects\nsciter\sciter-js-sdk\include\sciter-om-def.h:15:11
  else:
    when Scitervalue_436208065 is static:
      const
        Somvalue* = Scitervalue_436208065 ## Generated based on D:\Projects\nsciter\sciter-js-sdk\include\sciter-om-def.h:15:11
    else:
      let Somvalue* = Scitervalue_436208065 ## Generated based on D:\Projects\nsciter\sciter-js-sdk\include\sciter-om-def.h:15:11
else:
  static :
    hint("Declaration of " & "SOM_VALUE" & " already exists, not redeclaring")
when not declared(Sccallback):
  when compilerstdcall is typedesc:
    type
      Sccallback* = compilerstdcall ## Generated based on D:\Projects\nsciter\sciter-js-sdk\include\sciter-x-primitives.h:92:11
  else:
    when compilerstdcall is static:
      const
        Sccallback* = compilerstdcall ## Generated based on D:\Projects\nsciter\sciter-js-sdk\include\sciter-x-primitives.h:92:11
    else:
      let Sccallback* = compilerstdcall ## Generated based on D:\Projects\nsciter\sciter-js-sdk\include\sciter-x-primitives.h:92:11
else:
  static :
    hint("Declaration of " & "SC_CALLBACK" & " already exists, not redeclaring")

const SCITER_DLL_NAME* = "sciter.dll"