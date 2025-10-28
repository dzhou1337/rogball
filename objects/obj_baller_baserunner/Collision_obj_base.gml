if(other.base == targetBase && !isOut){
	currentBase = other.base
	other.reservedBaserunner = runnerId
	getBaseByBaseType(currentBase).hasForceOut = false
	state = runnerState.waiting
}