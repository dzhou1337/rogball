function decideFielderAction(){
	/*
	 * This runs right as a ball is being put in play
	 * Each fielder runs this method. They will look at the trajectory of the ball,
	 * and their own position to decide what they should do as the ball is put in play.
	 * Fielders will either try to get the ball, cover a base, or back up a play.
	 */
	
	
	
	if(state == ballerState.waiting){
		//show_debug_message(string(fielder) + " looking for base")
		if(shouldCoverNearestBase()){
			coverNearestBase()
		}
	}
	
	if(instance_exists(obj_baseball)){
		if(state == ballerState.waiting && isBallTowardFielder()){
			getBallerSpotFromBall(waypointPurpose.catching)	
		}
	}
	 
	with(obj_base){
		if(reservedBaserunner != -1 && reservedFielder == -1){
			var nearestFielder = findNearestIdleFielder(x,y)
			nearestFielder.baseToCover = base
			nearestFielder.state = ballerState.coveringBase
			reservedFielder = nearestFielder.fielder
		}
	}
	
	if(state == ballerState.waiting){
		//show_debug_message(string(fielder) + ": I'm being lazy")	
		if(instance_exists(obj_baseball)){
			var homeBase = getBaseByBaseType(baseType.home)
			var ballDistanceFromHome = point_distance(obj_baseball.x, obj_baseball.y, homeBase.x, homeBase.y)
			
			//How far is does the ball have to be from the infield to need a cutoff guy
			var distanceThreshold = 300
			
			if (ballDistanceFromHome > distanceThreshold && isBallTowardFielderGenerous()){
				show_debug_message(string(fielder) + ": CUTOFF")	
			
				//go get to a cutoff spot
				var directionHomeToBall = point_direction(homeBase.x, homeBase.y, obj_baseball.x, obj_baseball.y)
				var ballDistance_X = lengthdir_x(ballDistanceFromHome, directionHomeToBall)
				var ballDistance_Y = lengthdir_y(ballDistanceFromHome, directionHomeToBall)
				
				var cutoffSpot_X = homeBase.x + (ballDistance_X*3/4)
				var cutoffSpot_Y = homeBase.y + (ballDistance_Y*3/4)
				
				var waypoint = instance_create_depth(cutoffSpot_X, cutoffSpot_Y, 0, obj_baller_onfield_waypoint)
				waypoint.fielder = fielder
				waypoint.purpose = waypointPurpose.catching
				desiredX = cutoffSpot_X
				desiredY = cutoffSpot_Y
				state = ballerState.goingToWaypoint
				
			}
		}
	}
	 
	 
	 
	 //Otherwise, if the fielder is closest to a base, they should cover that base
	 
	 
	 //If they don't reserve a base to cover, back up a play or be the cutoff guy
}