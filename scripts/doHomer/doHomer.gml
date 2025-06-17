function doHomer(){
	baserunnerCount = 0
	for (var i = 0; i < 3; i++){
		if (baserunners[i]){
			baserunnerCount += 1
		}
	}
	
	scoreRuns(1 + baserunnerCount)
	baserunners = [-1,-1,-1]
	
	lastPAResult = "HITTER HOMERS"
}