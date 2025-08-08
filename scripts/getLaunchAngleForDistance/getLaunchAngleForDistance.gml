function getLaunchAngleForDistance(exitVelocity, distance){
	launchAngle = arcsin(distance * (9.8/60) / power(exitVelocity,2)) / 2
	return launchAngle
}