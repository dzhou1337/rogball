function rollDP(DPChances){
	var resultDenominator = 0
	
	for(var i = 0 ; i < array_length(DPChances); i += 1){
		resultDenominator += DPChances[i]
	}
	
	var resultRoll = irandom(resultDenominator-1)
	
	if (resultRoll < DPChances[0]){
		return "GIDP"
	} else if (resultRoll < DPChances[0] + DPChances[1]){
		return "OUT"
	} else if (resultRoll < DPChances[0] + DPChances[1] + DPChances[2]){
		return "FC"
	} else {
		show_debug_message(resultRoll)
		return "ERROR DP"
	}
}