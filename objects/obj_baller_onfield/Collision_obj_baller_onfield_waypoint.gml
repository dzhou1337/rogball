if(other.purpose == waypointPurpose.catching){
	with(obj_baller_onfield_waypoint){
		if(purpose == waypointPurpose.catching){
			instance_destroy()
		}
	}
	with(obj_baller_onfield){
		if(state == ballerState.goingToWaypoint){
			state = ballerState.waiting
		}
	}
}

if(other.fielder == fielder){
	state = ballerState.catching
	mask_index = spr_baller_catching

	with(other){
		instance_destroy()
	}
}