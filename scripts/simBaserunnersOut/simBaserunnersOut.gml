function simBaserunnersOut(fielder,battedBallType){
	
	result = "no extra action"
	
	//First check for a double play
	if(isInfielder(fielder) && battedBallType == "GROUNDER" && outs < 2 && baserunners[0] != -1){
		//1730 GIDP
		//713 just out at 1b
		//181 FC
	
		chanceScoreGIDP = 1730
		chanceScoreOutAt1B = 713
		chanceScoreFC = 181
		
		chanceRollDP = [chanceScoreGIDP, chanceScoreOutAt1B, chanceScoreFC]
		
		result = rollDP(chanceRollDP)
		
		if (result == "GIDP"){
			outs += 1
			baserunners[0] = -1
		} else if (result == "FC"){
			baserunners[0] = currentBatter
		} else if (result == "OUT"){
			moveRunnersUp(1)
		} else {
			show_debug_message("simming DP error")
		}
	}
	
	return result
}