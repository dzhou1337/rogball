function getLaunchAngleForDistance(exitVelocity, distance){
	
	try {
		launchAngle = arcsin(distance * (9.8/60) / power(exitVelocity,2)) / 2
	} catch( _exception) {
	    launchAngle = .61 //35 degrees in radians
	}
	
	return launchAngle
}