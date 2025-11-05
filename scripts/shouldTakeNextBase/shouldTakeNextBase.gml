function shouldTakeNextBase(){
	//called from a obj_baller_baserunner context
	
	//if the ball is far enough away from the next base
	//and if a the nearest fielder is far enough away from the ball,
	//take an extra base
	if(instance_exists(obj_baseball)){
		var ball = instance_find(obj_baseball, 0)
		var nextBase = getBaseByBaseType(getNextBase(currentBase))
		var distanceBallToBase = point_distance(ball.x, ball.y, nextBase.x, nextBase.y)
		
		var distanceThreshold = 200
		
		if (distanceBallToBase > 200){
			return true	
		} else {
			return false	
		}
	}
	
	return false
}