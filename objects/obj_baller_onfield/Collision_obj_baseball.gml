if(state == ballerState.catching and other.z < 70){
	state = ballerState.holdingBall
	with(other){
		instance_destroy()	
	}
}