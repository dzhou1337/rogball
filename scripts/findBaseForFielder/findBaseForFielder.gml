function findBaseForFielder(){
	//find nearest waiting fielder
	var nearestBase = noone
	var nearestDistance = -1
	with(obj_base){
		
		var distance = point_distance(x,y,other.x,other.y)
		if (distance < nearestDistance || distance == -1){
			other.nearestBase = self	
		}
	}
	
	return nearestBase.id


}