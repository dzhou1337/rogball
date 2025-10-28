function whoToThrowTo(){
	//Called when a fielder picks up a ball
	//Returns a fielder they should throw to
	
	var targetFielder = -1
	
	//who's running where
	var runnerList = getListOfRunners()
	show_debug_message(runnerList)
	
	var leadForceOut = baseType.undefined
	
	if(runnerList[0] != -1 && getBaseByBaseType(baseType.home).hasForceOut){
		leadForceOut = baseType.home
	} else if(runnerList[1] != -1 && getBaseByBaseType(baseType.third).hasForceOut){
		leadForceOut = baseType.third
	} else if(runnerList[2] != -1 && getBaseByBaseType(baseType.second).hasForceOut){
		leadForceOut = baseType.second
	} else if(runnerList[3] != -1 && getBaseByBaseType(baseType.first).hasForceOut){
		leadForceOut = baseType.first
	}
	
	/*var easiestOut = findEasiestForceout()
	if(easiestOut != baseType.undefined){
		show_debug_message("easiest out: " + string(targetFielder))
		targetFielder = getBaseByBaseType(easiestOut).reservedFielder
	}*/
	
	if(leadForceOut != baseType.undefined){
		show_debug_message(string(fielder) + ": I should throw to" + basetypeToString(leadForceOut))
		targetFielder = getBaseByBaseType(leadForceOut).reservedFielder
	}
	
	
	
	//targetFielder = 3
	
	show_debug_message(string(fielder) + ": I'm throwing to " + string(targetFielder))
	
	return targetFielder
}