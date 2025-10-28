function getListOfRunners(){
	//Start at home and work backwards to build a list of runners
	
	var baserunners = [-1,-1,-1,-1]
	

	with(obj_base){
		if(base == baseType.home){
			baserunners[0] = reservedBaserunner
		} else if (base == baseType.third){
			baserunners[1] = reservedBaserunner
		} else if (base == baseType.second){
			baserunners[2] = reservedBaserunner
		} else {
			baserunners[3] = reservedBaserunner
		}
	}
	
	return baserunners
}