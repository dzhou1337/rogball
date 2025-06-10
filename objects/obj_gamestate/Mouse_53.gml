
simAB()
if(topOfInning){
	currentAwayBatterIndex = (currentAwayBatterIndex + 1) % 9

} else {
	currentHomeBatterIndex = (currentHomeBatterIndex + 1) % 9

}


if (outs >= 3){
	if (!topOfInning){
		inning += 1
	}
	topOfInning = !topOfInning
	
	outs = 0
	baserunners = [false,false,false]
}

if(topOfInning){

	currentBatter = getBallerByID(awayLineup[currentAwayBatterIndex])
} else {

	currentBatter = getBallerByID(homeLineup[currentHomeBatterIndex])
}