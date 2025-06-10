function getBallerByID(findID){
	
	
	with (obj_baller){
		if (self.ballerID == findID){
			//show_debug_message("found: " + firstName)
			return self.id
		}
	}
}