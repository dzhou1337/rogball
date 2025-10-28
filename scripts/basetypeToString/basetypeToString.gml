function basetypeToString(basetype){
	if (basetype == baseType.first){
		return "FIRST"
	}
	if (basetype == baseType.second){
		return "SECOND"
	}
	if (basetype == baseType.third){
		return "THIRD"
	}
	if (basetype == baseType.home){
		return "HOME"
	}
	return "ERROR"
}