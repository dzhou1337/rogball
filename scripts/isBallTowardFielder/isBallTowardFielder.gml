//This should only be called in a obj_baller_onfield context
//x, y, and other properties are those of the baller who's calling this
function isBallTowardFielder(){
	var maxAngle = 25
	
	var homePlate = getBaseByBaseType(baseType.home)
	var homeToFielder = point_direction(homePlate.x, homePlate.y, x, y)
	var ballPath = obj_baseball.direction
	
	var diffAngle = abs(angle_difference(homeToFielder ,ballPath))
	
	if (diffAngle <= maxAngle){
		return true	
	} else {
		return false	
	}
}