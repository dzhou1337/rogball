function throwBallToBase(baseType){
	targetBase = getBaseByBaseType(baseType)
	targetFielder = targetBase.reservedFielder
	
	passBallToFielder(targetFielder)
}