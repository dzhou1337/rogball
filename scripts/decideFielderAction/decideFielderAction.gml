function decideFielderAction(){
	/*
	 * This runs right as a ball is being put in play
	 * Each fielder runs this method. They will look at the trajectory of the ball,
	 * and their own position to decide what they should do as the ball is put in play.
	 * Fielders will either try to get the ball, cover a base, or back up a play.
	 */
	
	if(instance_exists(obj_baseball)){
		
		var ballToMe = isBallTowardFielder()
	 
		if(ballToMe){
			show_debug_message(string(fielder) + ": the ball is coming to me")
			getBallerSpotFromBall(waypointPurpose.catching)
		}
		 
	}
	
	if(state == ballerState.waiting){
		show_debug_message(string(fielder) + " looking for base")
		if(shouldCoverNearestBase()){
			coverNearestBase()
		}
	}
	
	
	 
	 
	/*
	 
	if(hasPlayFielderOut()){
		getBallerSpotFromBall(waypointPurpose.catching)
	} else if (hasPlayQuickStop()){
		getBallerSpotFromBall(waypointPurpose.catching)
	} else {
		fieldersCoverBases()
	}
	
	
	
	if(state == ballerState.waiting && isBallTowardFielder()){
		getBallerSpotFromBall(waypointPurpose.catching)	
	}
	 
	 
	 
	 //If the fielder can make an out by catching a ball on the fly, go for the play
	 /*
	 if(hasPlayFielderOut()){
		getBallerSpotFromBall(waypointPurpose.catching)	 
	 }
	 */
	 
	 //If the fielder can get to the ball, get into position to catch the ball
	 
	 
	 //Otherwise, if the fielder is closest to a base, they should cover that base
	 
	 
	 //If they don't reserve a base to cover, back up a play or be the cutoff guy
}