function canMakeThrow(target_x, target_y){
	var distance = point_distance(x,y,target_x,target_y)
	var launchAngle = 0
	try {
		launchAngle = arcsin(distance * (9.8/60) / power(exitVelocity,2)) / 2
		return true
	} catch( _exception) {
	    return false
	}
	
}