outs = 0
strikes = 0
balls = 0

inning = 1
topOfInning = true

currentBatter = instance_create_depth(x,y,0,obj_baller)

currentPitcher = instance_create_depth(x,y,0,obj_baller)

baserunners = [false, false, false]

homeScore = 0
awayScore = 0


strikeoutConstant = 166
walkConstant = 96
HBPConstant = 8
fieldoutConstant = 489
hitConstant = 239

linerConstant = 248
grounderConstant = 444
flyerConstant = 238
popupConstnat = 70

pullConstant = 40
centConstant = 35
oppoConstant = 25

testHits = 0
testTB = 0
testOnBase = 0
testPA = 0
testAB = 0

lastPAResult = ""

randomize()
