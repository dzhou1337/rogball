if((state == ballerState.catching and other.z < 70) || catchingWhileMoving){
	state = ballerState.holdingBall
	hasBall = true
	
	with(obj_baller_onfield){
		if (fielder != other.fielder && state == ballerState.goingToWaypoint){
			state = ballerState.waiting
		}
	}
	
	with(other){
		instance_destroy()	
	}
	
	
}