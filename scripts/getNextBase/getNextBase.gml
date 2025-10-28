function getNextBase(currBase){
	switch(currBase){
		case(-1):
			return baseType.first
		
		case(baseType.first):
			return baseType.second	
			
		case(baseType.second):
			return baseType.third
			
		case(baseType.third):
			return baseType.home
	}
	
	return baseType.error
}