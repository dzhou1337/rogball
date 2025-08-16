if(state == ballerState.gettingBall){
	direction = point_direction(x,y,obj_baseball.x,obj_baseball.y)
	speed = maxspeed
}

if(state == ballerState.goingToWaypoint || state == ballerState.coveringBase){
	direction = point_direction(x,y,desiredX, desiredY)
	speed = maxspeed
}

if (state == ballerState.waiting){
	speed = 0
}

if (state == ballerState.catching){
	speed = 0
}

if (state == ballerState.holdingBase){
	speed = 0
}



