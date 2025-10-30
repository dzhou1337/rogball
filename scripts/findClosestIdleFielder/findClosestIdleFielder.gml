function findNearestIdleFielder(pX, pY){
	var smallestDistance = 100000000
	var closestFielder = instance_find(obj_baller_onfield, 0)
	
	with(obj_baller_onfield){
		if(state == ballerState.waiting){
			var distance = point_distance(pX, pY, x, y)
			if (distance < smallestDistance){
				smallestDistance = distance
				closestFielder = self
			}
		}
	}
	
	return closestFielder
}