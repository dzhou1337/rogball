function doWalk(){
	if (baserunners[0]){
		if (baserunners[1]){
			if (baserunners[2]){
				//bases loaded walk


				baserunners[2] = baserunners[1]
				baserunners[1] = baserunners[0]
				baserunners[0] = true
				
				scoreRuns(1)
			} else {
				//runners on 1st and 2nd here
				baserunners[2] = baserunners[1]
				baserunners[1] = baserunners[0]
				baserunners[0] = true
			}
		} else {
			//runner on 1st, none on 2nd, don't care about 3rd
			baserunners[1] = baserunners[0]
			baserunners[0] = true
		}
	} else {
		//no runner on 1st, don't care about the rest
		baserunners[0] = true
	}
	
	lastPAResult = "HITTER WALKS"
}


/*
	real implementation

	GS.currentBatter.walks++
	GS.currentBatter.PAs++

	if (baserunners[0] not null){
		if (baserunners[1] not null){
			if (baserunners[2] not null){
				//bases loaded walk
				GS.addRuns(1)
				baseRunner[2].runs++
				baserunners[2] = baserunners[1]
				baserunner[1] = baserunnser[0]
				baserunner[0] = currentBatter
			} else {
				//runners on 1st and 2nd here
				baserunners[2] = baserunners[1]
				baserunner[1] = baserunnser[0]
				baserunner[0] = currentBatter
			}
		} else {
			//runner on 1st, none on 2nd, don't care about 3rd
			baserunner[1] = baserunnser[0]
			baserunner[0] = currentBatter
		}
	} else {
		//no runner on 1st, don't care about the rest
		baserunner[0] = currentBatter
	}

*/