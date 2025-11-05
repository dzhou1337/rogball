if(other.base == targetBase && !isOut){
	if (other.base == baseType.home){
		instance_destroy()
		exit
	}
	
	currentBase = other.base
	other.reservedBaserunner = runnerId
	getBaseByBaseType(currentBase).hasForceOut = false
	
	
	
	var shouldAdvance = shouldTakeNextBase()
	
	if(shouldAdvance){
		var priorBase = getBaseByBaseType(currentBase)
		priorBase.reservedBaserunner = -1
		
		
		targetBase = getNextBase(currentBase)
		var nextBase = getBaseByBaseType(targetBase)
		nextBase.reservedBaserunner = runnerId
		
	} else {
		state = runnerState.waiting
	}
}