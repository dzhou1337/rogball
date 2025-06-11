function getBIPOutcome(fielder, ballType, ballDir){
	
	var BIPOutcomes = [1,1,1,1] //SINGLE, DOUBLE, TRIPLE, OUT
	
	if(currentBatter.batsRight){
		if(ballDir == "PULL"){
			if(ballType == "GROUNDER"){
				if(fielder == "PITCHER"){
					BIPOutcomes = [314,0,0,686]
				} else if (fielder == "CATCHER"){
					BIPOutcomes = [210,0,0,790]
				} else if (fielder == "1B"){
					return "ERROR IMPOSSIBLE OUTCOME: R PULL G TO 1B"
				} else if (fielder == "2B"){
					return "ERROR IMPOSSIBLE OUTCOME: R PULL G TO 2B"
				} else if (fielder == "3B"){
					BIPOutcomes = [91,6,0,903]
				} else if (fielder == "SS"){
					BIPOutcomes = [100,2,0,898]
				} else if (fielder == "LF"){
					BIPOutcomes = [756,239,5,0]
				} else if (fielder == "CF"){
					return "ERROR IMPOSSIBLE OUTCOME: R PULL G TO CF"
				} else if (fielder == "RF"){
					return "ERROR IMPOSSIBLE OUTCOME: R PULL G TO RF"
				} else {
					return "ERROR BIP OUTCOME, nonfielder"
				}
			} else if (ballType == "LINER"){
				if(fielder == "PITCHER"){
					return "ERROR IMPOSSIBLE OUTCOME: R PULL L TO P"
				} else if (fielder == "CATCHER"){
					return "ERROR IMPOSSIBLE OUTCOME: R PULL L TO C"
				} else if (fielder == "1B"){
					return "ERROR IMPOSSIBLE OUTCOME: R PULL L TO 1B"
				} else if (fielder == "2B"){
					return "ERROR IMPOSSIBLE OUTCOME: R PULL L TO 2B"
				} else if (fielder == "3B"){
					BIPOutcomes = [52,19,0,929]
				} else if (fielder == "SS"){
					BIPOutcomes = [68,6,0,926]
				} else if (fielder == "LF"){
					BIPOutcomes = [471,292,4,234]
				} else if (fielder == "CF"){
					BIPOutcomes = [124,768,55,53]
				} else if (fielder == "RF"){
					return "ERROR IMPOSSIBLE OUTCOME: R PULL L TO RF"
				} else {
					return "ERROR BIP OUTCOME, nonfielder"
				} 
			} else if (ballType == "FLYER"){
				if(fielder == "PITCHER"){
					return "ERROR IMPOSSIBLE OUTCOME: R PULL F TO P"
				} else if (fielder == "CATCHER"){
					return "ERROR IMPOSSIBLE OUTCOME: R PULL F TO C"
				} else if (fielder == "1B"){
					return "ERROR IMPOSSIBLE OUTCOME: R PULL F TO 1B"
				} else if (fielder == "2B"){
					return "ERROR IMPOSSIBLE OUTCOME: R PULL F TO 2B"
				} else if (fielder == "3B"){
					BIPOutcomes = [28,83,0,889]
				} else if (fielder == "SS"){
					BIPOutcomes = [99,55,0,846]
				} else if (fielder == "LF"){
					BIPOutcomes = [44,64,4,888]
				} else if (fielder == "CF"){
					BIPOutcomes = [25,350,35,590]
				} else if (fielder == "RF"){
					return "ERROR IMPOSSIBLE OUTCOME: R PULL F TO RF"
				} else {
					return "ERROR BIP OUTCOME, nonfielder"
				}
			} else { //ballType is POP
				if(fielder == "PITCHER"){
					BIPOutcomes = [55,0,0,945]
				} else if (fielder == "CATCHER"){
					BIPOutcomes = [1,0,0,999]
				} else if (fielder == "1B"){
					return "ERROR IMPOSSIBLE OUTCOME: R PULL P TO 1B"
				} else if (fielder == "2B"){
					return "ERROR IMPOSSIBLE OUTCOME: R PULL P TO 2B"
				} else if (fielder == "3B"){
					BIPOutcomes = [3,0,0,997]
				} else if (fielder == "SS"){
					BIPOutcomes = [13,0,0,987]
				} else if (fielder == "LF"){
					return "ERROR IMPOSSIBLE OUTCOME: R PULL P TO LF"
				} else if (fielder == "CF"){
					return "ERROR IMPOSSIBLE OUTCOME: R PULL P TO CF"
				} else if (fielder == "RF"){
					return "ERROR IMPOSSIBLE OUTCOME: R PULL P TO RF"
				} else {
					return "ERROR BIP OUTCOME, nonfielder"
				}
			}
			
		} else if (ballDir == "CENT") {
			if(ballType == "GROUNDER"){
				if(fielder == "PITCHER"){
					BIPOutcomes = [118,0,0,882]
				} else if (fielder == "CATCHER"){
					BIPOutcomes = [66,0,0,934]
				} else if (fielder == "1B"){
					return "ERROR IMPOSSIBLE OUTCOME: R CENT G TO 1B"
				} else if (fielder == "2B"){
					BIPOutcomes = [87,0,0,913]
				} else if (fielder == "3B"){
					return "ERROR IMPOSSIBLE OUTCOME: R CENT G TO 3B"
				} else if (fielder == "SS"){
					BIPOutcomes = [68,0,0,932]
				} else if (fielder == "LF"){
					BIPOutcomes = [936,62,2,0]
				} else if (fielder == "CF"){
					BIPOutcomes = [988,12,0,0]
				} else if (fielder == "RF"){
					BIPOutcomes = [919,14,0,67]
				} else {
					return "ERROR BIP OUTCOME, nonfielder"
				}
			} else if (ballType == "LINER"){
				if(fielder == "PITCHER"){
					BIPOutcomes = [278,6,0,716]
				} else if (fielder == "CATCHER"){
					return "ERROR IMPOSSIBLE OUTCOME: R CENT L TO C"
				} else if (fielder == "1B"){
					return "ERROR IMPOSSIBLE OUTCOME: R CENT L TO 1B"
				} else if (fielder == "2B"){
					BIPOutcomes = [55,0,0,945]
				} else if (fielder == "3B"){
					return "ERROR IMPOSSIBLE OUTCOME: R CENT L TO 3B"
				} else if (fielder == "SS"){
					BIPOutcomes = [88,3,0,909]
				} else if (fielder == "LF"){
					BIPOutcomes = [565,27,34,374]
				} else if (fielder == "CF"){
					BIPOutcomes = [485,127,14,374]
				} else if (fielder == "RF"){
					BIPOutcomes = [696,170,54,80]
				} else {
					return "ERROR BIP OUTCOME, nonfielder"
				} 
			} else if (ballType == "FLYER"){
				if(fielder == "PITCHER"){
					return "ERROR IMPOSSIBLE OUTCOME: R CENT F TO P"
				} else if (fielder == "CATCHER"){
					return "ERROR IMPOSSIBLE OUTCOME: R CENT F TO C"
				} else if (fielder == "1B"){
					return "ERROR IMPOSSIBLE OUTCOME: R CENT F TO 1B"
				} else if (fielder == "2B"){
					BIPOutcomes = [95,8,0,897]
				} else if (fielder == "3B"){
					return "ERROR IMPOSSIBLE OUTCOME: R CENT F TO 3B"
				} else if (fielder == "SS"){
					BIPOutcomes = [124,13,0,863]
				} else if (fielder == "LF"){
					BIPOutcomes = [91,85,26,798]
				} else if (fielder == "CF"){
					BIPOutcomes = [44,34,8,914]
				} else if (fielder == "RF"){
					BIPOutcomes = [121,54,32,793]
				} else {
					return "ERROR BIP OUTCOME, nonfielder"
				}
			} else { //ballType is POP
				if(fielder == "PITCHER"){
					BIPOutcomes = [36,0,0,964]
				} else if (fielder == "CATCHER"){
					BIPOutcomes = [8,0,0,992]
				} else if (fielder == "1B"){
					BIPOutcomes = [6,0,0,994]
				} else if (fielder == "2B"){
					BIPOutcomes = [17,2,0,981]
				} else if (fielder == "3B"){
					BIPOutcomes = [11,0,0,989]
				} else if (fielder == "SS"){
					BIPOutcomes = [16,3,0,981]
				} else if (fielder == "LF"){
					return "ERROR IMPOSSIBLE OUTCOME: R CENT P TO LF"
				} else if (fielder == "CF"){
					return "ERROR IMPOSSIBLE OUTCOME: R CENT P TO CF"
				} else if (fielder == "RF"){
					return "ERROR IMPOSSIBLE OUTCOME: R CENT P TO RF"
				} else {
					return "ERROR BIP OUTCOME, nonfielder"
				}
			}
		} else { //OPPO (NEED TO DO)
			if(ballType == "GROUNDER"){
				if(fielder == "PITCHER"){
					BIPOutcomes = [79,0,0,921]
				} else if (fielder == "CATCHER"){
					BIPOutcomes = [52,0,0,948]
				} else if (fielder == "1B"){
					BIPOutcomes = [77,2,0,921]
				} else if (fielder == "2B"){
					BIPOutcomes = [87,0,0,913]
				} else if (fielder == "3B"){
					return "ERROR IMPOSSIBLE OUTCOME: R OPPO G TO 3B"
				} else if (fielder == "SS"){
					return "ERROR IMPOSSIBLE OUTCOME: R OPPO G TO SS"
				} else if (fielder == "LF"){
					return "ERROR IMPOSSIBLE OUTCOME: R OPPO G TO LF"
				} else if (fielder == "CF"){
					return "ERROR IMPOSSIBLE OUTCOME: R OPPO G TO RF"
				} else if (fielder == "RF"){
					BIPOutcomes = [910,84,6,0]
				} else {
					return "ERROR BIP OUTCOME, nonfielder"
				}
			} else if (ballType == "LINER"){
				if(fielder == "PITCHER"){
					return "ERROR IMPOSSIBLE OUTCOME: R OPPO L TO P"
				} else if (fielder == "CATCHER"){
					return "ERROR IMPOSSIBLE OUTCOME: R OPPO L TO C"
				} else if (fielder == "1B"){
					BIPOutcomes = [153,114,6,727]
				} else if (fielder == "2B"){
					BIPOutcomes = [149,5,0,846]
				} else if (fielder == "3B"){
					return "ERROR IMPOSSIBLE OUTCOME: R OPPO L TO 3B"
				} else if (fielder == "SS"){
					return "ERROR IMPOSSIBLE OUTCOME: R OPPO L TO SS"
				} else if (fielder == "LF"){
					return "ERROR IMPOSSIBLE OUTCOME: R OPPO L TO LF"
				} else if (fielder == "CF"){
					BIPOutcomes = [145,530,82,243]
				} else if (fielder == "RF"){
					BIPOutcomes = [452,142,18,388]
				} else {
					return "ERROR BIP OUTCOME, nonfielder"
				} 
			} else if (ballType == "FLYER"){
				if(fielder == "PITCHER"){
					return "ERROR IMPOSSIBLE OUTCOME: R OPPO F TO P"
				} else if (fielder == "CATCHER"){
					return "ERROR IMPOSSIBLE OUTCOME: R OPPO F TO C"
				} else if (fielder == "1B"){
					BIPOutcomes = [153,114,6,727]
				} else if (fielder == "2B"){
					BIPOutcomes = [97,50,11,843]
				} else if (fielder == "3B"){
					return "ERROR IMPOSSIBLE OUTCOME: R OPPO F TO 3B"
				} else if (fielder == "SS"){
					return "ERROR IMPOSSIBLE OUTCOME: R OPPO F TO SS"
				} else if (fielder == "LF"){
					return "ERROR IMPOSSIBLE OUTCOME: R OPPO F TO LF"
				} else if (fielder == "CF"){
					BIPOutcomes = [21,175,50,754]
				} else if (fielder == "RF"){
					BIPOutcomes = [54,35,9,902]
				} else {
					return "ERROR BIP OUTCOME, nonfielder"
				}
			} else { //ballType is POP
				if(fielder == "PITCHER"){
					BIPOutcomes = [28,0,0,972]
				} else if (fielder == "CATCHER"){
					BIPOutcomes = [17,0,0,983]
				} else if (fielder == "1B"){
					BIPOutcomes = [10,4,0,986]
				} else if (fielder == "2B"){
					BIPOutcomes = [17,2,0,981]
				} else if (fielder == "3B"){
					return "ERROR IMPOSSIBLE OUTCOME: R OPPO P TO 3B"
				} else if (fielder == "SS"){
					return "ERROR IMPOSSIBLE OUTCOME: R OPPO P TO SS"
				} else if (fielder == "LF"){
					return "ERROR IMPOSSIBLE OUTCOME: R OPPO P TO LF"
				} else if (fielder == "CF"){
					return "ERROR IMPOSSIBLE OUTCOME: R OPPO P TO CF"
				} else if (fielder == "RF"){
					BIPOutcomes = [590,61,0,348]
				} else {
					return "ERROR BIP OUTCOME, nonfielder"
				}
			}
		}
		
	} else { //LEFTY HITTER
		if(ballDir == "PULL"){
			if(ballType == "GROUNDER"){
				if(fielder == "PITCHER"){
					BIPOutcomes = [109,0,0,891]
				} else if (fielder == "CATCHER"){
					BIPOutcomes = [95,0,0,905]
				} else if (fielder == "1B"){
					BIPOutcomes = [42,3,0,955]
				} else if (fielder == "2B"){
					BIPOutcomes = [42,1,0,957]
				} else if (fielder == "3B"){
					return "ERROR IMPOSSIBLE OUTCOME: L PULL G TO 3B"
				} else if (fielder == "SS"){
					return "ERROR IMPOSSIBLE OUTCOME: L PULL G TO SS"
				} else if (fielder == "LF"){
					return "ERROR IMPOSSIBLE OUTCOME: L PULL G TO LF"
				} else if (fielder == "CF"){
					BIPOutcomes = [778,222,0,0]
				} else if (fielder == "RF"){
					BIPOutcomes = [835,135,30,0]
				} else {
					return "ERROR BIP OUTCOME, nonfielder"
				}
			} else if (ballType == "LINER"){
				if(fielder == "PITCHER"){
					return "ERROR IMPOSSIBLE OUTCOME: L PULL L TO P"
				} else if (fielder == "CATCHER"){
					return "ERROR IMPOSSIBLE OUTCOME: L PULL L TO C"
				} else if (fielder == "1B"){
					BIPOutcomes = [50,16,1,933]
				} else if (fielder == "2B"){
					BIPOutcomes = [83,5,0,912]
				} else if (fielder == "3B"){
					return "ERROR IMPOSSIBLE OUTCOME: L PULL L TO 3B"
				} else if (fielder == "SS"){
					return "ERROR IMPOSSIBLE OUTCOME: L PULL L TO SS"
				} else if (fielder == "LF"){
					return "ERROR IMPOSSIBLE OUTCOME: L PULL L TO LF"
				} else if (fielder == "CF"){
					BIPOutcomes = [134,660,154,51]
				} else if (fielder == "RF"){
					BIPOutcomes = [472,262,29,237]
				} else {
					return "ERROR BIP OUTCOME, nonfielder"
				} 
			} else if (ballType == "FLYER"){
				if(fielder == "PITCHER"){
					return "ERROR IMPOSSIBLE OUTCOME: L PULL F TO P"
				} else if (fielder == "CATCHER"){
					return "ERROR IMPOSSIBLE OUTCOME: L PULL F TO C"
				} else if (fielder == "1B"){
					return "ERROR IMPOSSIBLE OUTCOME: L PULL F TO 1B"
				} else if (fielder == "2B"){
					BIPOutcomes = [72,31,0,897]
				} else if (fielder == "3B"){
					return "ERROR IMPOSSIBLE OUTCOME: L PULL F TO 3B"
				} else if (fielder == "SS"){
					return "ERROR IMPOSSIBLE OUTCOME: L PULL F TO SS"
				} else if (fielder == "LF"){
					return "ERROR IMPOSSIBLE OUTCOME: L PULL F TO LF"
				} else if (fielder == "CF"){
					BIPOutcomes = [25,315,129,530]
				} else if (fielder == "RF"){
					BIPOutcomes = [38,66,14,882]
				} else {
					return "ERROR BIP OUTCOME, nonfielder"
				}
			} else { //ballType is POP
				if(fielder == "PITCHER"){
					BIPOutcomes = [68,0,0,932]
				} else if (fielder == "CATCHER"){
					BIPOutcomes = [2,0,0,998]
				} else if (fielder == "1B"){
					BIPOutcomes = [5,0,0,995]
				} else if (fielder == "2B"){
					BIPOutcomes = [12,5,0,987]
				} else if (fielder == "3B"){
					return "ERROR IMPOSSIBLE OUTCOME: L PULL P TO 3B"
				} else if (fielder == "SS"){
					return "ERROR IMPOSSIBLE OUTCOME: L PULL P TO SS"
				} else if (fielder == "LF"){
					return "ERROR IMPOSSIBLE OUTCOME: L PULL P TO LF"
				} else if (fielder == "CF"){
					return "ERROR IMPOSSIBLE OUTCOME: L PULL P TO CF"
				} else if (fielder == "RF"){
					return "ERROR IMPOSSIBLE OUTCOME: L PULL P TO RF"
				} else {
					return "ERROR BIP OUTCOME, nonfielder"
				}
			}
			
		} else if (ballDir == "CENT") {
			if(ballType == "GROUNDER"){
				if(fielder == "PITCHER"){
					BIPOutcomes = [105,0,0,895]
				} else if (fielder == "CATCHER"){
					BIPOutcomes = [96,0,0,904]
				} else if (fielder == "1B"){
					return "ERROR IMPOSSIBLE OUTCOME: L CENT G TO 1B"
				} else if (fielder == "2B"){
					BIPOutcomes = [78,0,0,922]
				} else if (fielder == "3B"){
					return "ERROR IMPOSSIBLE OUTCOME: L CENT G TO 3B"
				} else if (fielder == "SS"){
					BIPOutcomes = [85,0,0,915]
				} else if (fielder == "LF"){
					BIPOutcomes = [969,31,0,0]
				} else if (fielder == "CF"){
					BIPOutcomes = [980,20,0,0]
				} else if (fielder == "RF"){
					BIPOutcomes = [950,47,1,0]
				} else {
					return "ERROR BIP OUTCOME, nonfielder"
				}
			} else if (ballType == "LINER"){
				if(fielder == "PITCHER"){
					BIPOutcomes = [296,0,0,703]
				} else if (fielder == "CATCHER"){
					return "ERROR IMPOSSIBLE OUTCOME: L CENT L TO C"
				} else if (fielder == "1B"){
					return "ERROR IMPOSSIBLE OUTCOME: L CENT L TO 1B"
				} else if (fielder == "2B"){
					BIPOutcomes = [97,1,0,902]
				} else if (fielder == "3B"){
					return "ERROR IMPOSSIBLE OUTCOME: L CENT L TO 3B"
				} else if (fielder == "SS"){
					BIPOutcomes = [63,1,0,936]
				} else if (fielder == "LF"){
					BIPOutcomes = [657,220,36,86]
				} else if (fielder == "CF"){
					BIPOutcomes = [480,125,18,376]
				} else if (fielder == "RF"){
					BIPOutcomes = [596,345,64,106]
				} else {
					return "ERROR BIP OUTCOME, nonfielder"
				} 
			} else if (ballType == "FLYER"){
				if(fielder == "PITCHER"){
					return "ERROR IMPOSSIBLE OUTCOME: L CENT F TO P"
				} else if (fielder == "CATCHER"){
					return "ERROR IMPOSSIBLE OUTCOME: L CENT F TO C"
				} else if (fielder == "1B"){
					return "ERROR IMPOSSIBLE OUTCOME: L CENT F TO 1B"
				} else if (fielder == "2B"){
					BIPOutcomes = [115,27,0,858]
				} else if (fielder == "3B"){
					return "ERROR IMPOSSIBLE OUTCOME: L CENT F TO 3B"
				} else if (fielder == "SS"){
					BIPOutcomes = [92,15,0,893]
				} else if (fielder == "LF"){
					BIPOutcomes = [135,70,34,761]
				} else if (fielder == "CF"){
					BIPOutcomes = [38,34,8,914]
				} else if (fielder == "RF"){
					BIPOutcomes = [76,79,50,795]
				} else {
					return "ERROR BIP OUTCOME, nonfielder"
				}
			} else { //ballType is POP
				if(fielder == "PITCHER"){
					BIPOutcomes = [27,0,0,973]
				} else if (fielder == "CATCHER"){
					BIPOutcomes = [7,0,0,993]
				} else if (fielder == "1B"){
					BIPOutcomes = [18,0,0,982]
				} else if (fielder == "2B"){
					BIPOutcomes = [26,8,0,966]
				} else if (fielder == "3B"){
					BIPOutcomes = [18,0,0,982]
				} else if (fielder == "SS"){
					BIPOutcomes = [16,3,0,981]
				} else if (fielder == "LF"){
					return "ERROR IMPOSSIBLE OUTCOME: L CENT P TO LF"
				} else if (fielder == "CF"){
					return "ERROR IMPOSSIBLE OUTCOME: L CENT P TO CF"
				} else if (fielder == "RF"){
					return "ERROR IMPOSSIBLE OUTCOME: L CENT P TO RF"
				} else {
					return "ERROR BIP OUTCOME, nonfielder"
				}
			}
		} else { //OPPO
			if(ballType == "GROUNDER"){
				if(fielder == "PITCHER"){
					BIPOutcomes = [236,0,0,764]
				} else if (fielder == "CATCHER"){
					BIPOutcomes = [233,0,0,766]
				} else if (fielder == "1B"){
					return "ERROR IMPOSSIBLE OUTCOME: L OPPO G TO 1B"
				} else if (fielder == "2B"){
					return "ERROR IMPOSSIBLE OUTCOME: L OPPO G TO 2B"
				} else if (fielder == "3B"){
					BIPOutcomes = [214,4,0,782]
				} else if (fielder == "SS"){
					BIPOutcomes = [281,3,0,716]
				} else if (fielder == "LF"){
					BIPOutcomes = [835,162,2,0]
				} else if (fielder == "CF"){
					BIPOutcomes = [949,38,13,0]
				} else if (fielder == "RF"){
					return "ERROR IMPOSSIBLE OUTCOME: L OPPO G TO RF"
				} else {
					return "ERROR BIP OUTCOME, nonfielder"
				}
			} else if (ballType == "LINER"){
				if(fielder == "PITCHER"){
					return "ERROR IMPOSSIBLE OUTCOME: L OPPO L TO P"
				} else if (fielder == "CATCHER"){
					return "ERROR IMPOSSIBLE OUTCOME: L OPPO L TO C"
				} else if (fielder == "1B"){
					return "ERROR IMPOSSIBLE OUTCOME: L OPPO L TO 1B"
				} else if (fielder == "2B"){
					return "ERROR IMPOSSIBLE OUTCOME: L OPPO L TO 2B"
				} else if (fielder == "3B"){
					BIPOutcomes = [67,8,0,925]
				} else if (fielder == "SS"){
					BIPOutcomes = [115,23,0,862]
				} else if (fielder == "LF"){
					BIPOutcomes = [443,169,6,381]
				} else if (fielder == "CF"){
					BIPOutcomes = [175,553,27,244]
				} else if (fielder == "RF"){
					return "ERROR IMPOSSIBLE OUTCOME: L OPPO L TO RF"
				} else {
					return "ERROR BIP OUTCOME, nonfielder"
				} 
			} else if (ballType == "FLYER"){
				if(fielder == "PITCHER"){
					return "ERROR IMPOSSIBLE OUTCOME: L OPPO F TO P"
				} else if (fielder == "CATCHER"){
					return "ERROR IMPOSSIBLE OUTCOME: L OPPO F TO C"
				} else if (fielder == "1B"){
					return "ERROR IMPOSSIBLE OUTCOME: L OPPO F TO 1B"
				} else if (fielder == "2B"){
					return "ERROR IMPOSSIBLE OUTCOME: L OPPO F TO 2B"
				} else if (fielder == "3B"){
					BIPOutcomes = [121,83,0,796]
				} else if (fielder == "SS"){
					BIPOutcomes = [67,38,0,895]
				} else if (fielder == "LF"){
					BIPOutcomes = [52,45,2,901]
				} else if (fielder == "CF"){
					BIPOutcomes = [20,186,21,774]
				} else if (fielder == "RF"){
					return "ERROR IMPOSSIBLE OUTCOME: L OPPO F TO RF"
				} else {
					return "ERROR BIP OUTCOME, nonfielder"
				}
			} else { //ballType is POP
				if(fielder == "PITCHER"){
					BIPOutcomes = [54,0,0,946]
				} else if (fielder == "CATCHER"){
					BIPOutcomes = [0,0,0,1000]
				} else if (fielder == "1B"){
					return "ERROR IMPOSSIBLE OUTCOME: L OPPO P TO 1B"
				} else if (fielder == "2B"){
					return "ERROR IMPOSSIBLE OUTCOME: L OPPO P TO 2B"
				} else if (fielder == "3B"){
					BIPOutcomes = [11,4,0,985]
				} else if (fielder == "SS"){
					BIPOutcomes = [25,8,0,967]
				} else if (fielder == "LF"){
					return "ERROR IMPOSSIBLE OUTCOME: L OPPO P TO LF"
				} else if (fielder == "CF"){
					return "ERROR IMPOSSIBLE OUTCOME: L OPPO P TO CF"
				} else if (fielder == "RF"){
					return "ERROR IMPOSSIBLE OUTCOME: L OPPO P TO RF"
				} else {
					return "ERROR BIP OUTCOME, nonfielder"
				}
			}
		}
	}
	
	BIPResult = rollBIP(BIPOutcomes)
	
	return BIPResult
}