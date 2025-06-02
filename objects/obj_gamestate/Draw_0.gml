var lineoffset = 20
var columnoffset = 200


draw_text(x,y, "OUTS: " + string(outs))
draw_text(x,y+lineoffset*1, "STRIKES: " + string(strikes))
draw_text(x,y+lineoffset*2, "BALLS: " + string(balls))

draw_text(x+columnoffset*1, y, "HOME TEAM: " + string(homeScore))
draw_text(x+columnoffset*1, y+lineoffset*1, "AWAY TEAM: " + string(awayScore))

draw_text(x+columnoffset*2, y,"HITS: " + string(testHits))

if(testAB != 0 && testPA != 0){
	draw_text(x+columnoffset*2, y+lineoffset*1,"AVG: " + string_format(testHits/testAB,1,3))
	draw_text(x+columnoffset*2, y+lineoffset*2,"OBP: " + string_format(testOnBase/testPA,1,3))
	draw_text(x+columnoffset*2, y+lineoffset*3,"SLG: " + string_format(testTB/testAB,1,3))
}


if(topOfInning){
	draw_text(x,y+lineoffset*4, "INNING: " + string(inning) + "^")
} else {
	draw_text(x,y+lineoffset*4, "INNING: " + string(inning) + "v")
}

draw_text(x,y+lineoffset*6, "AT BAT: " + currentBatter.firstName + " " + currentBatter.lastName)
draw_text(x,y+lineoffset*7, "PITCHING: " + currentPitcher.firstName + " " + currentPitcher.lastName)


if baserunners[0]{
	draw_text(x,y+lineoffset*9, "1st BASE: occupied")
} else {
	draw_text(x,y+lineoffset*9, "1st BASE: empty")
}
if baserunners[1]{
	draw_text(x,y+lineoffset*10, "2nd BASE: occupied")
} else {
	draw_text(x,y+lineoffset*10, "2nd BASE: empty")
}
if baserunners[2]{
	draw_text(x,y+lineoffset*11, "3rd BASE: occupied")
} else {
	draw_text(x,y+lineoffset*11, "3rd BASE: empty")
}

draw_text(x,y+lineoffset*13, lastPAResult)