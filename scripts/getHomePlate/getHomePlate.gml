function getHomePlate(){
	with(obj_base){
		if(baseType == baseType.home){
			return self
		}
	}
	
	return noone
}