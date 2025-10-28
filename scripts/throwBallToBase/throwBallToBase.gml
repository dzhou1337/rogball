function throwBallToBase(baseType){
	var targetBase = getBaseByBaseType(baseType)
	var targetFielder = targetBase.reservedFielder
	
	passBallToFielder(targetFielder)
}