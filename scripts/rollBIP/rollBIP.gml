function rollBIP(BIPChances){
	var resultDenominator = 0
	
	for(var i = 0 ; i < 4; i += 1){
		resultDenominator += BIPChances[i]
	}
	
	var resultRoll = irandom(resultDenominator-1)
	
	if (resultRoll < BIPChances[0]){
		return "SINGLE"
	} else if (resultRoll < BIPChances[0] + BIPChances[1]){
		return "DOUBLE"
	} else if (resultRoll < BIPChances[0] + BIPChances[1] + BIPChances[2]){
		return "TRIPLE"
	} else if (resultRoll < BIPChances[0] + BIPChances[1] + BIPChances[2] +
							BIPChances[3]){
		return "OUT"
	} else {
		show_debug_message(resultRoll)
		return "ERROR BIP"
	}
}