//do a weighted coinFlip where successChance represents the chance of success over 1000
function coinFlip(successChance){
	var resultDenominator = 1000
	var resultRoll = irandom(resultDenominator)
	
	if (resultRoll < successChance){
		return true
	}
	
	return false
}