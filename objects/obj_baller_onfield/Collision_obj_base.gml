if(state == ballerState.coveringBase && other.base == baseToCover){
	state = ballerState.holdingBase	
	other.reservedFielder = fielder
}

if((state == ballerState.holdingBall || hasBall) && other.base == baseToCover && other.hasForceOut){
	other.hasForceOut = false
	
	makeBaserunnerOut(other.reservedBaserunner)
	other.reservedBaserunner = -1
	
	//state = ballerState.holdingBall
	if(hasBall){
		state = ballerState.holdingBall	
	}
}