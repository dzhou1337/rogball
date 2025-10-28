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

if (state == ballerState.holdingBall){
	
	
	var targetFielder = whoToThrowTo()

	if (targetFielder != -1){
		var targetFielderObjRef = getFielderByID(targetFielder)
		var targetBaseType = targetFielderObjRef.baseToCover
		var targetBase = getBaseByBaseType(targetBaseType)
		
		var myDistanceToBase = point_distance(x,y,targetBase.x,targetBase.y)
		var hisDistanceToBase = point_distance(targetFielderObjRef.x,targetFielderObjRef.y
											  ,targetBase.x,targetBase.y)
									
		show_debug_message("myDistance: " + string(myDistanceToBase))
		show_debug_message("hisDistnace: " + string(hisDistanceToBase))
		if (myDistanceToBase < hisDistanceToBase){
			show_debug_message("covering myself")
			
			targetFielderObjRef.state = ballerState.waiting
			targetFielder = fielder
			state = ballerState.coveringBase
			baseToCover = targetBaseType
			desiredX = targetBase.x
			desiredY = targetBase.y
		}
	}
	
	
	if (targetFielder == fielder){
		state = ballerState.coveringBase
		
	} else if (targetFielder != -1){
		passBallToFielder(targetFielder)
		show_debug_message("throwing to: " + string(targetFielder))
		state = ballerState.waiting
	} else {
		//eat the ball
		state = ballerState.waiting
	}
	
	
}


