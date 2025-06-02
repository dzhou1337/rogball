function battedBallTypeToBallDirection(balltype){
	
	var ballDirection = "none"
	
	var pullChance = 1
	var centChance = 1
	var oppoChance = 1
	
	if (balltype == "LINER"){
		pullChance = 369
		centChance = 363
		oppoChance = 268		
	} else if (balltype == "GROUNDER"){
		pullChance = 465
		centChance = 401
		oppoChance = 134
	} else if (balltype == "FLYER"){
		pullChance = 254
		centChance = 376
		oppoChance = 370
	} else { //balltype == POPUP
		pullChance = 201
		centChance = 248
		oppoChance = 551
	}
	
	ballDirection = rollBallDirection(pullChance, centChance, oppoChance)
	
	return ballDirection
	
}