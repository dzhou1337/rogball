function shouldCoverNearestBase(){
	//called from obj_baller_onfield context
	
	//show_debug_message(string(fielder) + " looking for base")
	
	var nearestBase = instance_nearest(x, y, obj_base)
	show_debug_message(string(fielder) + " nearest base is " + basetypeToString(nearestBase.base))
	//does the base need to be covered?

	if (nearestBase.reservedBaserunner == -1){
		return false
	}
	
	

	
	//base is not already covered
	if(nearestBase.reservedFielder == -1){
		
		//am I the nearest fielder doing nothing else?
		var closestFielderToBase = findNearestIdleFielder(nearestBase.x, nearestBase.y)
		show_debug_message(string(fielder) + ": closest fielder is " + string(closestFielderToBase.fielder))
		
		if(closestFielderToBase.fielder == fielder){
			show_debug_message(string(fielder) + ": I should cover " + basetypeToString(nearestBase.base))
			return true
		}
		
	} else {
		var otherFielder = getFielderByID(nearestBase.reservedFielder)
		
		var distanceToNearestBase = point_distance(x,y,nearestBase.x,nearestBase.y)
		var otherDistanceToNearestBase = point_distance(otherFielder.x, otherFielder.y, nearestBase.x, nearestBase.y)
		
		if (distanceToNearestBase < otherDistanceToNearestBase){
			var closestFielderToBase = findNearestIdleFielder(nearestBase.x, nearestBase.y)
			show_debug_message(string(fielder) + ": closest fielder is " + string(closestFielderToBase.fielder))
		
			if(closestFielderToBase.fielder == fielder){
				show_debug_message(string(fielder) + ": I should cover " + basetypeToString(nearestBase.base))
				otherFielder.state = ballerState.waiting
				otherFielder.baseToCover = -1
				return true
			}
		}
	}
	
	return false
}