function calcBallinplay(){
	BIPConstant = fieldoutConstant + hitConstant
	BIPScore = BIPConstant + contactScore*contactMultiplier

	return max(1,BIPScore)
}