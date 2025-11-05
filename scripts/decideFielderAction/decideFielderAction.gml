function decideFielderAction(){
	/*
	 * This runs right as a ball is being put in play
	 * Each fielder runs this method. They will look at the trajectory of the ball,
	 * and their own position to decide what they should do as the ball is put in play.
	 * Fielders will either try to get the ball, cover a base, or back up a play.
	 */
	
	
	
	if(state == ballerState.waiting){
		//show_debug_message(string(fielder) + " looking for base")
		if(shouldCoverNearestBase()){
			coverNearestBase()
		}
	}
	
	if(instance_exists(obj_baseball)){
		if(state == ballerState.waiting && isBallTowardFielder()){
			getBallerSpotFromBall(waypointPurpose.catching)	
		}
	}
	 
	
	 
	 
	 
	 //Otherwise, if the fielder is closest to a base, they should cover that base
	 
	 
	 //If they don't reserve a base to cover, back up a play or be the cutoff guy
}