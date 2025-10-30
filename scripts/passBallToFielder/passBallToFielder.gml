function passBallToFielder(fielder){
	
	var targetFielder = getFielderByID(fielder)
	
	if(targetFielder.state != ballerState.coveringBase){
		targetFielder.state = ballerState.catching
		targetFielder.mask_index = spr_baller_catching

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
	} else {
		show_debug_message("throwing ahead")
		
		var base = getBaseByBaseType(targetFielder.baseToCover)
		
		var targetSpeed = targetFielder.speed
		var targetDirection = targetFielder.direction
		var distance = point_distance(x,y,targetFielder.x,targetFielder.y)
		var launchAngle = getLaunchAngleForDistance(maxArmStrength, distance)
		var travelTime = distance/maxArmStrength
		
		show_debug_message("Travel time: " + string(travelTime))
		
		var targetXSpeed = lengthdir_x(targetSpeed, direction)
		var targetYSpeed = lengthdir_y(targetSpeed, direction)
		
		var targetX = targetFielder.x + (targetXSpeed*travelTime)
		var targetY = targetFielder.y + (targetYSpeed*travelTime)
		
		if(targetXSpeed > 0) {
			targetX = targetFielder.x + (targetXSpeed*travelTime)
		} else {
			targetX = targetFielder.x - (targetXSpeed*travelTime)
		}
		
		if(targetYSpeed < 0) {
			targetY = targetFielder.y + (targetYSpeed*travelTime)
		} else {
			targetY = targetFielder.y - (targetYSpeed*travelTime)
		}
		
		
	
		var ball = instance_create_depth(x,y,0,obj_baseball)
		ball.direction = point_direction(x,y,targetX,targetY)
		if (random(1) > .5){
			ball.direction += 0
		} else {
			ball.direction -= 0
		}
		ball.speed = cos(launchAngle) * maxArmStrength
		ball.zspeed = sin(launchAngle) * maxArmStrength
		ball.z = 30
		
		with(targetFielder){
			getBallerSpotFromBall(waypointPurpose.catching)	
		}
	}
	
}