
simAB()


if (outs >= 3){
	if (!topOfInning){
		inning += 1
	}
	topOfInning = !topOfInning
	
	outs = 0
	baserunners = [false,false,false]
}