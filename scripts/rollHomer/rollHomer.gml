function rollHomer(ballType, ballDirection){
	if (ballType == "POPUP" || ballType == "GROUNDER"){
		return false
	}
	
	if (currentBatter.batsRight){
		if (ballType == "LINER"){
			if (ballDirection == "PULL"){
				return coinFlip(60)
			} else if (ballDirection == "CENT"){
				return coinFlip(18)
			} else { //ballDirection is OPPO
				return coinFlip(16)
			}
		} else { //ballType is FLYER
			if (ballDirection == "PULL"){
				return coinFlip(388)
			} else if (ballDirection == "CENT"){
				return coinFlip(108)
			} else { //ballDirection is OPPO
				return coinFlip(63)
			}
		}
	} else { //currentBatter bats lefty
		if (ballType == "LINER"){
			if (ballDirection == "PULL"){
				return coinFlip(57)
			} else if (ballDirection == "CENT"){
				return coinFlip(14)
			} else { //ballDirection is OPPO
				return coinFlip(10)
			}
		} else { //ballType is FLYER
			if (ballDirection == "PULL"){
				return coinFlip(297)
			} else if (ballDirection == "CENT"){
				return coinFlip(99)
			} else { //ballDirection is OPPO
				return coinFlip(50)
			}
		}
	}
}