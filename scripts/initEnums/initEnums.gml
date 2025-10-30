function initEnums(){
	enum waypointPurpose{
		catching,
		backup,
		none
	}
	
	enum ballerState {
		waiting,
		catching,
		gettingBall,
		trackingBall,
		holdingBall,
		goingToWaypoint,
		coveringBase,
		holdingBase,
		catchingWhileMoving
	}
	
	enum baseType {
		home,
		first,
		second,
		third,
		undefined,
		error
	}
	
	enum runnerState {
		waiting,
		running
	}
}