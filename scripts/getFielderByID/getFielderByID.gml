function getFielderByID(findID){
	
	with (obj_baller_onfield){
		//show_debug_message("looking at " + string(fielder))
		if (self.fielder == findID){
			//show_debug_message("found: " + string(fielder))
			return self.id
		}
	}
}