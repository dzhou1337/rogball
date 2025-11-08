//This should only be called in a obj_baller_onfield context
//x, y, and other properties are those of the baller who's calling this
function isBallTowardFielder(){
	//change angle for outfielders and infielders
	var maxAngle = 20
	if (isOutfielder(fielder)){
		maxAngle = 25	
	}
	
	//var homePlate = getBaseByBaseType(baseType.home)
	//var homeToFielder = point_direction(homePlate.x, homePlate.y, x, y)
	var ballToFielder = point_direction(obj_baseball.x, obj_baseball.y, x, y)
	var ballPath = obj_baseball.direction
	
	var diffAngle = abs(angle_difference(ballToFielder ,ballPath))
	
	if (diffAngle <= maxAngle){
		return true	
	} else {
		return false	
	}
}