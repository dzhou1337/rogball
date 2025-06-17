function simBaserunnersSingle(fielder){
	//Simulate baserunner behavior on a Single
	//arg fielder represents the fielder who got the ball
	
	//Outfield single
	if (!isInfielder(fielder)){
		//Runner on third scores
		baserunners[2] = -1
		
		//Runner on second scores, or is on third, or is out going home
		//Adjust these chances based on runner speed and outfielder arm
		//.358 chance to get to third
		//.606 chance to score
		//.035 chance to make an out
		var thirdChance = 358
		var scoreChance = 606
		var outChance = 35
		var resultDenominator = thirdChance + scoreChance + outChance
		var resultRoll = irandom(resultDenominator-1)
		if (resultRoll < thirdChance){
			//Runner on second goes to third
			baserunners[2] = baserunners[1]
		} else if (resultRoll < thirdChance + scoreChance){
			//runner on second scores
			baserunners[1] = -1
			scoreRuns(1)
		} else {
			//Runner on second is out at home
			baserunners[1] = -1
			outs += 1
		}
		
		//Runner on first reaches second, third, home, or is out
		//Adjust these chances based on runner speed and outfielder arm
		//Adjust these chances based on which outfielder has the ball
		//LF least chance to get 3B, CF middle chance, RF most chance
		//.668 chance to get to second
		//.318 chance to get to third or home (home chance only for speedy runners)
		//.014 chance to make an out
	} else {
	//Infield single, fielder has no play
		if (baserunners[0] != -1){
			moveRunnersUp(1)
		}
		
	}
	
	baserunners[0] = currentBatter.ballerID
	
	
}