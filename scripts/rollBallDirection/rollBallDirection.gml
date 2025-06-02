function rollBallDirection(pullChance, centChance, oppoChance){
	var resultDenominator = pullChance + centChance + oppoChance
	var resultRoll = irandom(resultDenominator-1)
	
	if (resultRoll < pullChance){
		return "PULL"
	} else if (resultRoll < pullChance+centChance){
		return "CENT"
	} else {
		return "OPPO"
	}
}