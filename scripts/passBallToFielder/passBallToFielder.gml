function passBallToFielder(fielder){
	
	var targetFielder = getFielderByID(fielder)
	
	if(targetFielder.state != ballerState.coveringBase){
		targetFielder.state = ballerState.catching
		targetFielder.mask_index = spr_baller_catching

		var distance = point_distance(x,y,targetFielder.x,targetFielder.y)
		var launchAngle = getLaunchAngleForDistance(maxArmStrength, distance)
		
		var creationOffset = 1
		var creationOffset_x = lengthdir_x(creationOffset,point_direction(x,y,targetFielder.x,targetFielder.y))
		var creationOffset_y = lengthdir_y(creationOffset,point_direction(x,y,targetFielder.x,targetFielder.y))
	
		var ball = instance_create_depth(x+creationOffset_x,y+creationOffset_y,0,obj_baseball)
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
		
		show_debug_message("XSpeed: " + string(targetXSpeed))
		show_debug_message("YSpeed: " + string(targetYSpeed))
		
		var targetX = targetFielder.x + (targetXSpeed*travelTime)
		var targetY = targetFielder.y + (targetYSpeed*travelTime)
		
		
		targetX = targetFielder.x - (targetXSpeed*travelTime)
		targetY = targetFielder.y - (targetYSpeed*travelTime)
		
		//targetX = base.x
		//targetY = base.y
		
		var creationOffset = 1
		var creationOffset_x = lengthdir_x(creationOffset,point_direction(x,y,targetX,targetY))
		var creationOffset_y = lengthdir_y(creationOffset,point_direction(x,y,targetX,targetY))
		

		var ball = instance_create_depth(x+creationOffset_x,y+creationOffset_y,0,obj_baseball)
		ball.direction = point_direction(x,y,targetX,targetY)
		instance_create_depth(targetX, targetY, 0, obj_redbox)
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
	
	hasBall = false
	
	with(obj_baller_onfield){
		decideFielderAction()	
	}
	
}