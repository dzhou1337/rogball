function getBattedBallType(){
	var linerChance = linerConstant + contactScore*5
	var grounderChance = grounderConstant
	var flyerChance = flyerConstant
	var popChance = popupConstnat - contactScore*5
	
	var battedBall = "none"
	
	var resultDenominator = linerChance + grounderChance + flyerChance + popChance
	var resultRoll = irandom(resultDenominator-1)
	
	if (resultRoll < linerChance){
		battedBall = "LINER"
	} else if (resultRoll < linerChance + grounderChance){
		battedBall = "GROUNDER"
	} else if (resultRoll < linerChance + grounderChance + flyerChance){
		battedBall = "FLYER"
	} else {
		battedBall = "POPUP"
	}
	
	return battedBall
}