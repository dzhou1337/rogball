function simBaserunnersDouble(){
	//Runner on third scores
	if(baserunners[2] != -1){
		scoreRuns(1)
		baserunners[2] = -1
		show_debug_message("runner on third scores on a double")
	}
	
	//Runner on second scores
	if(baserunners[1] != -1){
		scoreRuns(1)
		baserunners[1] = -1
		show_debug_message("runner on second scores on a double")
	}
	
	//Runner on first scores, reaches third, or is out at home
	if(baserunners[0] != 1){
		//Adjust these chances based on runner speed and outfielder arm
		//.572 chance for reaching third
		//.405 chance for reaching home
		//.023 chance for getting out at home
		var thirdChance = 572
		var scoreChance = 405
		var outChance = 23
		var resultDenominator = thirdChance + scoreChance + outChance
			var resultRoll = irandom(resultDenominator-1)
			if (resultRoll < thirdChance){
				//Runner on first goes to third
				baserunners[2] = baserunners[0]
				show_debug_message("runner on first advances to third")
			} else if (resultRoll < thirdChance + scoreChance){
				//runner on first scores
				show_debug_message("runner on first scores")
				scoreRuns(1)
			} else {
				//Runner on second is out at home
				outs += 1
				show_debug_message("runner on first out at home")
			}
		baserunners[0] = -1
	}
}