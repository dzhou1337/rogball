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
		holdingBase
	}
	
	enum baseType {
		home,
		first,
		second,
		third,
		undefined
	}
}