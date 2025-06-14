function calcWalk(){
	walkScore = walkConstant + walkScore*walkMultiplier

	return max(1,walkScore)
}