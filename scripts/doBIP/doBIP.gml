function doBIP(){
	//We're here once a ball is put in play
	//Decide the kind of batted ball (grounder, liner, fly, pop)
	//Decide the direction the ball is hit (left, center, right)
	//Decide the fielder the ball is hit to
	//Decide whether we get a hit, out, or error
	
	
	var battedBallType = getBattedBallType()
	show_debug_message(battedBallType)
	var ballDirection = battedBallTypeToBallDirection(battedBallType)
	show_debug_message(ballDirection)
	
	//homer or ball in play
	var isHomer = rollHomer(battedBallType,ballDirection)
	if (isHomer){
		show_debug_message("HOMER")
		testAB += 1
		testPA += 1
		testHits += 1
		testOnBase += 1
		testTB += 4
		
		doHomer()
	} else {
		
		//add a 3% chance to make an error
	
		var fielder = getFielderFromTypeDirection(battedBallType,ballDirection)
		show_debug_message(fielder)
		
		var outcome = getBIPOutcome(fielder,battedBallType,ballDirection)
		if(outcome == "SINGLE"){
			testHits += 1
			testTB += 1
			testOnBase += 1
			
			doSingle()
		} else if(outcome == "DOUBLE"){
			testHits += 1
			testTB += 2
			testOnBase += 1
			
			doDouble()
		} else if(outcome == "TRIPLE"){
			testHits += 1
			testTB += 3
			testOnBase += 1
			
			doTriple()
		} else {
			doFieldOut()
			
			
		}
		testAB += 1
		testPA += 1
		
		show_debug_message(outcome)
	}
	
	
	
	
	
	
	
	
}