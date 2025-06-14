function rollHomer(ballType, ballDirection){
	if (ballType == "POPUP" || ballType == "GROUNDER"){
		return false
	}
	
	homerConstant = 0
	homerModifier = ((powerScore+100)/100 - 1)*4 + 1
	
	if (currentBatter.batsRight){
		if (ballType == "LINER"){
			if (ballDirection == "PULL"){
				homerConstant =60
			} else if (ballDirection == "CENT"){
				homerConstant =18
			} else { //ballDirection is OPPO
				homerConstant =16
			}
		} else { //ballType is FLYER
			if (ballDirection == "PULL"){
				homerConstant =388
			} else if (ballDirection == "CENT"){
				homerConstant =108
			} else { //ballDirection is OPPO
				homerConstant =63
			}
		}
	} else { //currentBatter bats lefty
		if (ballType == "LINER"){
			if (ballDirection == "PULL"){
				homerConstant =57
			} else if (ballDirection == "CENT"){
				homerConstant =14
			} else { //ballDirection is OPPO
				homerConstant =10
			}
		} else { //ballType is FLYER
			if (ballDirection == "PULL"){
				homerConstant =297
			} else if (ballDirection == "CENT"){
				homerConstant =99
			} else { //ballDirection is OPPO
				homerConstant = 50
			}
		}
	}
	
	return coinFlip(homerConstant*homerModifier)
}