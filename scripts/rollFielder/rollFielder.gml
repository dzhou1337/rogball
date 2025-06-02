function rollFielder(fielderChances){
	var resultDenominator = 0
	
	for(var i = 0 ; i < 9; i += 1){
		resultDenominator += fielderChances[i]
	}
	
	var resultRoll = irandom(resultDenominator-1)
	
	if (resultRoll < fielderChances[0]){
		return "PITCHER"
	} else if (resultRoll < fielderChances[0] + fielderChances[1]){
		return "CATCHER"
	} else if (resultRoll < fielderChances[0] + fielderChances[1] + fielderChances[2]){
		return "1B"
	} else if (resultRoll < fielderChances[0] + fielderChances[1] + fielderChances[2] +
							fielderChances[3]){
		return "2B"
	} else if (resultRoll < fielderChances[0] + fielderChances[1] + fielderChances[2] +
							fielderChances[3] + fielderChances[4]){
		return "3B"
	} else if (resultRoll < fielderChances[0] + fielderChances[1] + fielderChances[2] +
							fielderChances[3] + fielderChances[4] + fielderChances[5]){
		return "SS"
	} else if (resultRoll < fielderChances[0] + fielderChances[1] + fielderChances[2] +
							fielderChances[3] + fielderChances[4] + fielderChances[5] +
							fielderChances[6]){
		return "LF"
	} else if (resultRoll < fielderChances[0] + fielderChances[1] + fielderChances[2] +
							fielderChances[3] + fielderChances[4] + fielderChances[5] +
							fielderChances[6] + fielderChances[7]){
		return "CF"
	} else if (resultRoll < fielderChances[0] + fielderChances[1] + fielderChances[2] +
							fielderChances[3] + fielderChances[4] + fielderChances[5] +
							fielderChances[6] + fielderChances[7] + fielderChances[8]){
		return "RF"
	} else {
		show_debug_message(resultRoll)
		return "ERROR FIELDER"
	}
}