

//tell other fielders I got the play

if (other.fielder == fielder){
	with(obj_baller_onfield){
		if(self.id != other.id && state == ballerState.gettingBall){
			state = ballerState.waiting
			decideFielderAction()
		}
	}
	with(obj_baller_onfield_waypoint_gotit){
		instance_destroy()
	}
}
