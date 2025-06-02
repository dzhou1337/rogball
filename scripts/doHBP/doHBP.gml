function doHBP(){
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
	
	lastPAResult = "HITTER HIT BY PITCH"
}