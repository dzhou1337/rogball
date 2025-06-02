function calcStrikeout(){
	strikeoutScore = strikeoutConstant - currentBatter.avoidKRating + currentPitcher.pitchVelocityRating

	return strikeoutScore
}