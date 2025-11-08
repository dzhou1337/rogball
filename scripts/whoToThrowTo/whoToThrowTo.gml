function whoToThrowTo(){
	//Called when a fielder picks up a ball
	//Returns a fielder they should throw to
	
	var targetFielder = -1
	
	//who's running where
	var runnerList = getListOfRunners()
	show_debug_message(runnerList)
	
	var leadForceOut = baseType.undefined
	var leadRunnerBase = baseType.undefined
	
	if(runnerList[0] != -1 && getBaseByBaseType(baseType.home).hasForceOut){
		leadForceOut = baseType.home
	} else if(runnerList[1] != -1 && getBaseByBaseType(baseType.third).hasForceOut){
		leadForceOut = baseType.third
	} else if(runnerList[2] != -1 && getBaseByBaseType(baseType.second).hasForceOut){
		leadForceOut = baseType.second
	} else if(runnerList[3] != -1 && getBaseByBaseType(baseType.first).hasForceOut){
		leadForceOut = baseType.first
	}
	
	if(runnerList[0] != -1){
		leadRunnerBase  = baseType.home
	} else if(runnerList[1] != -1){
		leadRunnerBase  = baseType.third
	} else if(runnerList[2] != -1){
		leadRunnerBase  = baseType.second
	} else if(runnerList[3] != -1){
		leadRunnerBase  = baseType.first
	}
	
	
	if(leadForceOut != baseType.undefined){
		show_debug_message(string(fielder) + ": I should throw to " + basetypeToString(leadForceOut))
		targetFielder = getBaseByBaseType(leadForceOut).reservedFielder
	} else if (leadRunnerBase != baseType.undefined){
		show_debug_message(string(fielder) + ": I should throw to " + basetypeToString(leadRunnerBase))
		targetFielder = getBaseByBaseType(leadRunnerBase).reservedFielder
	}
	
	/*
	//if the target base is too far, we should throw to a cut off guy instead
	var targetFielderObj = getFielderByID(targetFielder)
	if(!canMakeThrow(targetFielderObj.x, targetFielderObj.y)){
		show_debug_message(string(fielder) + ": I should throw to a cutoff")
		
	}*/
	
	show_debug_message(string(fielder) + ": I'm throwing to " + string(targetFielder))
	
	return targetFielder
}