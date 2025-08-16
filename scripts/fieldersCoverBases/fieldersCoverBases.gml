function fieldersCoverBases(){
	with(obj_base){
		var closestFielder = instance_nearest(x,y,obj_baller_onfield)
			
		if(closestFielder.state == ballerState.waiting || closestFielder.state == ballerState.coveringBase){
			closestFielder.state = ballerState.coveringBase
			closestFielder.desiredX = x
			closestFielder.desiredY = y
		} else {
			var originalFielder = closestFielder
			originalFielder.x += 100000
			closestFielder = instance_nearest(x,y,obj_baller_onfield)
				
			closestFielder.state = ballerState.coveringBase
			closestFielder.desiredX = x
			closestFielder.desiredY = y
				
			originalFielder.x -= 100000
		}
	}
}