function getFielderFromTypeDirection(ballType, ballDirection){
	
	//array of chances ordered: P, C, 1B, 2B, 3B, SS, LF, CF, RF
	var fielderChances = [0,0,0,0,0,0,0,0,0]
	var fielder = "NONE"
	
	if (currentBatter.batsRight){
		if (ballDirection == "PULL"){
			if (ballType == "LINER"){
				fielderChances = [0,0,0,0,79,70,833,18,0]
			} else if (ballType == "GROUNDER"){
				fielderChances = [20,4,0,0,516,312,148,0,0]		
			} else if (ballType == "FLYER"){
				fielderChances = [0,0,0,0,1,20,935,43,0]
			} else { //ball is POPUP
				fielderChances = [9,133,0,0,418,440,0,0,0]
			}
			
		} else if (ballDirection == "CENT"){
			if (ballType == "LINER"){
				fielderChances = [25,0,0,68,0,23,68,776,40]
			} else if (ballType == "GROUNDER"){
				fielderChances = [138,3,0,290,0,380,16,161,12]
			} else if (ballType == "FLYER"){
				fielderChances = [0,0,0,14,0,6,60,860,60]
			} else { //ball is POPUP
				fielderChances = [22,19,51,547,34,327,0,0,0]
			}
		} else { //ball is OPPO
			if (ballType == "LINER"){
				fielderChances = [0,0,48,22,0,0,0,52,877]
			} else if (ballType == "GROUNDER"){
				fielderChances = [126,33,324,229,0,0,0,0,274]
			} else if (ballType == "FLYER"){
				fielderChances = [0,0,3,11,0,0,0,54,931]
			} else { //ball is POPUP
				fielderChances = [7,89,604,300,0,0,0,0,5]
			}
		}
	} else {
		if (ballDirection == "PULL"){
			if (ballType == "LINER"){
				fielderChances = [0,0,74,78,0,0,0,15,832]
			} else if (ballType == "GROUNDER"){
				fielderChances = [34,7,423,402,0,0,0,0,134]		
			} else if (ballType == "FLYER"){
				fielderChances = [0,0,0,0,1,20,935,43,0]
			} else { //ball is POPUP
				fielderChances = [15,128,362,462,0,33,0,0,0]
			}
			
		} else if (ballDirection == "CENT"){
			if (ballType == "LINER"){
				fielderChances = [26,0,0,15,0,70,35,777,77]
			} else if (ballType == "GROUNDER"){
				fielderChances = [157,11,33,277,45,307,12,130,173]
			} else if (ballType == "FLYER"){
				fielderChances = [0,0,0,3,0,14,49,865,70]
			} else { //ball is POPUP
				fielderChances = [22,18,14,174,127,656,0,0,0]
			}
		} else { //ball is OPPO
			if (ballType == "LINER"){
				fielderChances = [0,0,0,0,56,18,866,60,0]
			} else if (ballType == "GROUNDER"){
				fielderChances = [90,22,0,0,463,160,265,0,0]
			} else if (ballType == "FLYER"){
				fielderChances = [0,0,0,0,6,8,925,61,0]
			} else { //ball is POPUP
				fielderChances = [7,83,0,0,656,254,0,0,0]
			}
		}
	}
	fielder = rollFielder(fielderChances)
	return fielder

}