function passBallToFielder(fielder){
	var targetFielder = getFielderByID(fielder)
	targetFielder.state = ballerState.catching
	show_debug_message("hello")
	var distance = point_distance(x,y,targetFielder.x,targetFielder.y)
	var launchAngle = getLaunchAngleForDistance(maxArmStrength, distance)
	
	var ball = instance_create_depth(x,y,0,obj_baseball)
	ball.direction = point_direction(x,y,targetFielder.x,targetFielder.y)
	if (random(1) > .5){
		ball.direction += 1
	} else {
		ball.direction -= 1
	}
	ball.speed = cos(launchAngle) * maxArmStrength
	ball.zspeed = sin(launchAngle) * maxArmStrength 
	ball.z = 30
}