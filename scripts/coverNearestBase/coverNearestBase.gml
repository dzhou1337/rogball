function coverNearestBase(){
	var nearestBase = instance_nearest(x,y, obj_base)
	
	nearestBase.reservedFielder = fielder
	baseToCover = nearestBase.base
	state = ballerState.coveringBase
}