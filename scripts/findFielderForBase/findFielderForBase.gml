function findFielderForBase(base){
	//find nearest waiting fielder
	var nearestFielder = noone
	var nearestDistance = -1
	with(obj_baller_onfield){
		if(state == ballerState.waiting){
			var distance = point_distance(x,y,base.x,base.y)
			if (distance < nearestDistance || distance == -1){
				nearestFielder = self	
			}
		}
	}
	
	//reservedFielder = nearestFielder.fielder
	
	nearestFielder.baseToCover = base.base
	nearestFielder.state = ballerState.coveringBase
	return nearestFielder

}