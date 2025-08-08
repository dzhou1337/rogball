if(state == ballerState.gettingBall){
	direction = point_direction(x,y,obj_baseball.x,obj_baseball.y)
	speed = maxspeed
}

if(state == ballerState.goingToWaypoint){
	direction = point_direction(x,y,obj_baller_onfield_waypoint.x, obj_baller_onfield_waypoint.y)
	speed = maxspeed
}

if (state == ballerState.waiting){
	speed = 0
}