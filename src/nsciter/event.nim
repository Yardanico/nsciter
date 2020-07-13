import sciwrap, papi

type
  EventHandler* = ptr EventHandlerObj
  EventHandlerObj* = object
    subscription*: proc(he: HELEMENT, event_groups: var cuint): uint
    handle_mouse*: proc(he: HELEMENT, params: ptr MOUSE_PARAMS): uint
    handle_key*: proc(he: HELEMENT, params: ptr KEY_PARAMS): uint
    handle_focus*: proc(he: HELEMENT, params: ptr FOCUS_PARAMS): uint
    handle_timer*: proc(he: HELEMENT, params: ptr TIMER_PARAMS): uint
    handle_size*: proc(he: HELEMENT): uint
    handle_scroll*: proc(he: HELEMENT, params: ptr SCROLL_PARAMS): uint
    handle_event*: proc(he: HELEMENT,
                        params: ptr BEHAVIOR_EVENT_PARAMS): uint
    handle_method_call*: proc(he: HELEMENT, params: ptr METHOD_PARAMS): uint
    handle_data_arrived*: proc(he: HELEMENT,
                                params: ptr DATA_ARRIVED_PARAMS): uint
    handle_draw*: proc(he: HELEMENT, params: ptr DRAW_PARAMS): uint
    ## call using sciter::value's (from CSSS!)
    handle_scripting_call*: proc(he: HELEMENT,
                                params: ptr SCRIPTING_METHOD_PARAMS): uint
    handle_gesture*: proc(he: HELEMENT, params: ptr GESTURE_PARAMS): uint
    handle_exchange*: proc(he: HELEMENT, params: ptr EXCHANGE_PARAMS): uint
    detached*: proc(he: HELEMENT)
    attached*: proc(he: HELEMENT)

type
    EventTarget = HWINDOW or HELEMENT

proc fn_subscription(he: HELEMENT, params: var cuint): uint = 
  result = 0

proc fn_handle_mouse(he: HELEMENT, params: ptr MOUSE_PARAMS): uint = 
  result = 0

proc fn_handle_key(he: HELEMENT, params: ptr KEY_PARAMS): uint = 
  result = 0

proc fn_handle_focus(he: HELEMENT, params: ptr FOCUS_PARAMS): uint =
  result = 0

proc fn_handle_timer(he: HELEMENT, params: ptr TIMER_PARAMS): uint =
  result = 0

proc fn_handle_size(he: HELEMENT): uint =
  result = 0

proc fn_handle_scroll(he: HELEMENT, params: ptr SCROLL_PARAMS): uint =
  result = 0

proc fn_handle_exchange(he: HELEMENT, params: ptr EXCHANGE_PARAMS): uint =
  result = 0

proc fn_handle_gesture(he: HELEMENT, params: ptr GESTURE_PARAMS): uint =
  result = 0

proc fn_handle_draw(he: HELEMENT, params: ptr DRAW_PARAMS): uint =
  result = 0

proc fn_handle_method_call(he: HELEMENT, params: ptr METHOD_PARAMS): uint =
  result = 0

proc fn_handle_event(he: HELEMENT, params: ptr BEHAVIOR_EVENT_PARAMS): uint =
  result = 0

proc fn_handle_data_arrived(he: HELEMENT, params: ptr DATA_ARRIVED_PARAMS): uint =
  result = 0

proc fn_handle_scripting_call(he: HELEMENT, params: ptr SCRIPTING_METHOD_PARAMS): uint =
  result = 0

proc fn_ttach(he: HELEMENT) = discard

proc newEventHandler*(): EventHandler =    
    #new(EventHandler)
    result = cast[EventHandler](alloc(sizeof(EventHandlerObj)))
    result.subscription = fn_subscription
    result.handle_mouse = fn_handle_mouse
    result.handle_key = fn_handle_key
    result.handle_focus = fn_handle_focus
    result.handle_timer = fn_handle_timer
    result.handle_size = fn_handle_size
    result.handle_scroll = fn_handle_scroll
    result.handle_gesture = fn_handle_gesture
    result.handle_exchange = fn_handle_exchange
    result.handle_draw = fn_handle_draw
    result.handle_method_call = fn_handle_method_call
    result.handle_event = fn_handle_event
    result.handle_data_arrived = fn_handle_data_arrived
    result.handle_scripting_call = fn_handle_scripting_call
    result.detached = fn_ttach
    result.attached = fn_ttach

import tables
#proc hash(x: EventHandler): Hash {.inline.} =  return hash(x)
var evct = initTable[EventHandler, uint]()

proc element_proc(tag: LPVOID; he: HELEMENT; evtg: cuint; prms: LPVOID): bool {.cdecl.} =
  var pThis = cast[EventHandler](tag)
  #if evtg > uint32(256):
  #debugEcho "element_proc: " , cast[EVENT_GROUPS](evtg)  #, " prms:", repr prms
  assert pThis != nil, "pThis is nil"    
  case cast[EVENT_GROUPS](evtg)
  of SUBSCRIPTIONS_REQUEST:
    var p = cast[ptr cuint](prms)
    var res = pThis.subscription(he, p[])
    #echo "SUBSCRIPTIONS_REQUEST: ", cast[EVENT_GROUPS](p)
    result = bool(res)

  of HANDLE_INITIALIZATION:
    var p = cast[ptr INITIALIZATION_PARAMS](prms)
    #echo "INITIALIZATION_PARAMS: " , p[]
    if INITIALIZATION_EVENTS(p.cmd) == BEHAVIOR_DETACH:
      #echo "BEHAVIOR_DETACH: ", cast[int](tag) , " evct: ", evct[pThis]
      pThis.detached(he)
      evct[pThis] -= 1
      if evct.contains(pThis): 
        dealloc(pThis) 
    
    elif INITIALIZATION_EVENTS(p.cmd) == BEHAVIOR_ATTACH:
      #echo "BEHAVIOR_ATTACH: ", cast[int](tag)
      pThis.attached(he)
      if evct.hasKeyOrPut(pThis, 0):
          evct[pThis] = evct[pThis] + 1
    result = true

  of HANDLE_MOUSE:
    var p = cast[ptr MOUSE_PARAMS](prms)
    var res = pThis.handle_mouse(he, p)
    #echo "HANDLE_MOUSE: res " , res, " cmd: " , cast[MOUSE_EVENTS](p.cmd)
    result = bool(res)

  of HANDLE_KEY:
    var p = cast[ptr KEY_PARAMS](prms)
    result = bool(pThis.handle_key(he, p))

  of HANDLE_FOCUS:
    var p = cast[ptr FOCUS_PARAMS](prms)
    result = bool(pThis.handle_focus(he, p))

  of HANDLE_DRAW:
    var p = cast[ptr DRAW_PARAMS](prms)
    #echo "HANDLE_DRAW: " , repr prms
    var res = pThis.handle_draw(he, p)
    result = bool(res)

  of HANDLE_TIMER:
    var p = cast[ptr TIMER_PARAMS](prms)
    # echo "HANDLE_TIMER: ", repr p
    result = bool(pThis.handle_timer(he, p))

  of HANDLE_BEHAVIOR_EVENT:
    var p = cast[ptr BEHAVIOR_EVENT_PARAMS](prms)
    var res = pThis.handle_event(he, p)
    #echo "BEHAVIOR_EVENT_PARAMS: res ", res, repr p
    result = bool(res)

  of HANDLE_METHOD_CALL:
    var p = cast[ptr METHOD_PARAMS](prms)
    #echo "HANDLE_METHOD_CALL: ", cast[BEHAVIOR_METHOD_IDENTIFIERS](p.methodID)
    result = bool(pThis.handle_method_call(he, p))

  of HANDLE_DATA_ARRIVED:
    var p = cast[ptr DATA_ARRIVED_PARAMS](prms)
    result = bool(pThis.handle_data_arrived(he, p))

  of HANDLE_SCROLL:
    var p = cast[ptr SCROLL_PARAMS](prms)
    result = bool(pThis.handle_scroll(he, p))

  of HANDLE_SIZE:
    var res = pThis.handle_size(he)
    result = bool(res)

  of HANDLE_SCRIPTING_METHOD_CALL:
    var p = cast[ptr SCRIPTING_METHOD_PARAMS](prms)
    #echo "HANDLE_SCRIPTING_METHOD_CALL: ", p.name
    result = bool pThis.handle_scripting_call(he, p)

  of HANDLE_GESTURE:
    var p = cast[ptr GESTURE_PARAMS](prms)
    result = bool pThis.handle_gesture(he, p)

  of HANDLE_EXCHANGE:
    var p = cast[ptr EXCHANGE_PARAMS](prms)
    result = bool pThis.handle_exchange(he, p)

  else:
    result = false

proc Attach*(target: ptr HWINDOW, eh: EventHandler, 
                mask: uint32 = HANDLE_ALL.uint32): SCDOM_RESULT =
  result = sapi.SciterWindowAttachEventHandler(target, element_proc, eh, mask).SCDOM_RESULT

proc Attach*(target: HELEMENT, eh: EventHandler,
            mask: uint32 = HANDLE_ALL.uint32): SCDOM_RESULT =
  result = sapi.SciterAttachEventHandler(target, element_proc, eh).SCDOM_RESULT

proc Detach*(target: ptr EventTarget, eh: EventHandler,
            mask: uint32 = HANDLE_ALL.uint32): SCDOM_RESULT {.discardable.} =
  when EventTarget is HWINDOW:
    result = sapi.SciterWindowDetachEventHandler(target, element_proc, eh, mask)
  elif EventTarget is HELEMENT:
    result = sapi.SciterDetachEventHandler(target, element_proc, eh)

proc onClick*(target: ptr HWINDOW | HELEMENT , 
            handler: proc(): uint32): SCDOM_RESULT {.discardable.} =
  var eh = newEventHandler()

  eh.handle_event = proc(he: HELEMENT, params: ptr BEHAVIOR_EVENT_PARAMS): uint =
    if params.cmd == BUTTON_CLICK.cuint:
      result = handler()
  
  result = target.Attach(eh, HANDLE_ALL.cuint).SCDOM_RESULT

type NativeFunctor* = proc(args: seq[ptr Value]): Value

proc packArgs*(argc: uint32; argv: ptr Value): seq[ptr Value] = 
  result = newSeq[ptr Value](argc)
  var base = cast[uint](argv)
  var step = cast[uint](sizeof(Value))
  if argc > 0.uint32:
    for idx in 0..<argc:
      var p = cast[ptr Value](base + step*uint(idx))
      result[int(idx)] = p

proc defineScriptingFunction*(target: ptr HWINDOW | HELEMENT, name: string,
                            fn: NativeFunctor): SCDOM_RESULT {.discardable.} =
  var eh = newEventHandler()
  eh.handle_scripting_call = proc(he: HELEMENT, params: ptr SCRIPTING_METHOD_PARAMS): uint =
    echo "handle_scripting_call: ", params.name , " ", name
    if params.name != cstring(name):
      return 0        
    var ret = fn(packArgs(params.argc, params.argv))
    echo " handle_scripting result: ", params.name, " ", ret
    params.result = ret
    result = 1
  return target.Attach(eh, HANDLE_SCRIPTING_METHOD_CALL.UINT32).SCDOM_RESULT #  HANDLE_ALL

proc createBehavior*(target: LPSCN_ATTACH_BEHAVIOR,
                    fn: proc()): SCDOM_RESULT {.discardable.} =
  
  var eh = newEventHandler()

  eh.handle_mouse = proc (he: HELEMENT, params: ptr MOUSE_PARAMS): uint =
    var s: string
    if (params.cmd and MOUSE_CLICK.cuint) == MOUSE_CLICK.cuint:
      s = $cast[MOUSE_EVENTS](params.cmd and MOUSE_CLICK.cuint)
      if (params.cmd and SINKING.uint32) != 0:
        s &= " SINKING"
      if (params.cmd and HANDLED.uint32) != 0:
        s &= " HANDLED"
      echo "handle_mouse cmd: ", s, " pos: ", params.pos,
          " heTarget: ", repr params.target
    result = 0 # otherwise BEHAVIOR_EVENTS events aren't called
  
  eh.subscription = proc(he: HELEMENT, params: var cuint): uint =
    echo "gdi draw subscription"
    #if comment then full subscription events
    params = HANDLE_DRAW.cuint or HANDLE_BEHAVIOR_EVENT.cuint or HANDLE_MOUSE.cuint
    result = 1
  
  eh.handle_draw = proc(he: HELEMENT, params: ptr DRAW_PARAMS): uint =
    if params.cmd == DRAW_CONTENT.cuint: #return 0
      #echo "handle_draw: " #, repr params.area
      let g = gapi()
      let hgfx = params.gfx
      #if hgfx != nil: discard g.gAddRef(hgfx)
      discard g.gLineColor(hgfx, g.RGBA(15, 20, 240, 255))
      discard g.gLineWidth(hgfx, 2.0)
      discard g.gFillColor(hgfx, g.RGBA(20, 20, 20, 255))
      discard g.gRectangle(hgfx, SC_POS(params.area.left), 
                          SC_POS(params.area.top),
                          SC_POS(params.area.right), 
                          SC_POS(params.area.bottom))
      discard g.gFillColor(hgfx, g.RGBA(255, 15, 0, 255))
      discard g.gRectangle(hgfx, SC_POS(params.area.left+30),
                          SC_POS(params.area.top+30),
                          SC_POS(params.area.right-30), 
                          SC_POS(params.area.bottom-30))
    #echo g.gLine(hgfx, 10, 10, 500, 60) # not valid coords
    #if hgfx != nil: discard g.gRelease(hgfx)
    result = 1
  
  eh.handle_event = proc(he: HELEMENT, params: ptr BEHAVIOR_EVENT_PARAMS): uint =
    echo "handle_event: ", cast[BEHAVIOR_EVENTS](params.cmd and 0x7FFF)
    #[if params.cmd == REQUEST_TOOLTIP:
      echo repr params
      params.he = tlp
      return 1]#
    result = 0

  result = target.element.Attach(eh, HANDLE_ALL.uint32)
