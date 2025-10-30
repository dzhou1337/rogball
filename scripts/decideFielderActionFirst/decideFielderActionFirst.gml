function decideFielderActionFirst(){
	if(instance_exists(obj_baseball)){
		
		var ballToMe = isBallTowardFielder()
	 
		if(ballToMe){
			show_debug_message(string(fielder) + ": the ball is coming to me")
			getBallerSpotFromBall(waypointPurpose.catching)
		}
		 
	}
}