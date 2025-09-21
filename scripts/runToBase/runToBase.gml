function runToBase(base){
	var target = getBaseByBaseType(base)
	move_towards_point(target.x, target.y, baseRunnerSpeed)
}