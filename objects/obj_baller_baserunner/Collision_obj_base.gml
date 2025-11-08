if(other.base == targetBase && !isOut && state != runnerState.waiting){
	if (other.base == baseType.home){
		var home = getBaseByBaseType(baseType.home)
		home.reservedBaserunner = -1
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
	
	with(obj_baller_onfield){
		decideFielderAction()	
	}
}