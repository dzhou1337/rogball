function calcBallinplay(){
	BIPConstant = fieldoutConstant + hitConstant
	BIPScore = BIPConstant + currentBatter.contactRating - currentPitcher.pitchMovementRating

	return BIPScore
}