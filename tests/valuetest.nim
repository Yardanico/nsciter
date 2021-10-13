import nsciter
import std/[times, monotimes]

let api = initSapi()


let start = getMonoTime()
block:
  var i: int8 = 100
  var p = newValue(i)
  doAssert p.getInt() == 100
  doAssert p.getBool() == true

block:
  var s = "a test string"
  var sv = newValue(s)
  var s2 = sv.getStr()
  doAssert s == s2

block:
  var f = 6.341
  var fv = newValue(f)
  doAssert fv.getFloat() == f

block:
  var b = @[1.byte, 2, 3, 4]
  var bv = nullValue()
  bv.setBytes(b)
  doAssert bv.getBytes() == b

block:
  var o = newValue()
  o["key"] = newValue(100)
  o["hello"] = newValue(true)
  o["data"] = newValue("hallo")
  doAssert o["key"].getInt() == 100
  doAssert o["hello"].getBool() == true
  doAssert o["data"].getStr() == "hallo"

  for i in 0 ..< 1000:
    o[$i] = newValue($i)

  let elems = o.getPairs()
  doAssert elems.len == 1003

block:
  var p = newValue(100)
  p.convertToString()
  doAssert p.getStr() == "100"

  p.convertFromString("hello, world")
  doAssert p.getStr() == "hello, world"

  p.convertToString()
  doAssert p.getStr() == "hello, world"

block:
  var dt = getTime()
  var t = newValue(dt)
  doAssert (dt - t.getDate()).inSeconds == 0

echo "Took ", getMonoTime() - start
