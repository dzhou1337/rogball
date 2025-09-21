if keyboard_check_pressed(resetKey){
	with(obj_baller_onfield){
		with(obj_field_fielderspot){
			if (self.fielder == other.fielder){
				other.x = self.x
				other.y = self.y
			}
		}
		
		state = ballerState.waiting
	}
	
	with(obj_baseball){
		instance_destroy()
	}
	
	
}