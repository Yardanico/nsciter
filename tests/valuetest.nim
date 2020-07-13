import sciter, times

let api = initSapi()

var i: int8 = 100
var p = newValue(i)
doAssert p.getInt() == 100
doAssert p.getBool() == true

var s = "a test string"
var sv = newValue(s)
var s2 = sv.getString()
doAssert s == s2

var f = 6.341
var fv = newValue(f)
doAssert fv.getFloat() == 6.341

var b = @[1.byte, 2, 3, 4]
var bv = nullValue()
bv.setBytes(b)
doAssert bv.getBytes() == @[1.byte, 2, 3, 4]
var o = newValue()
o["key"] = newValue(i)
o["hello"] = newValue(true)
o["data"] = newValue("hallo")

doAssert o["key"].getInt() == i
doAssert o["hello"].getBool() == true
doAssert o["data"].getString() == "hallo"

for i in 0 ..< 1000:
  o[$i] = newValue($i)

let elems = o.getPairs()
doAssert elems.len == 1003

p.convertToString()
doAssert p.getString() == "100"

p.convertFromString("hello, world")
doAssert p.getString() == "hello, world"

p.convertToString()
doAssert p.getString() == "hello, world"

var dt = getTime()
var t = newValue(dt)
echo dt
echo t.getDate()
doAssert dt == t.getDate()