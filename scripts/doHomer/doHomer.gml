function doHomer(){
	baserunnerCount = 0
	for (var i = 0; i < 3; i++){
		if (baserunners[i]){
			baserunnerCount += 1
		}
	}
	
	scoreRuns(1 + baserunnerCount)
	baserunners = [false,false,false]
	
	lastPAResult = "HITTER HOMERS"
}