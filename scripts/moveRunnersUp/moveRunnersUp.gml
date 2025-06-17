function moveRunnersUp(bases){
	for (var i = 2; i >= 0; i--){
		if(baserunners[i]){
			if (i + bases >= 3){
				scoreRuns(1)
			} else {
				baserunners[i+bases] = baserunners[i]
				baserunners[i] = -1
			}
		}
	}
}