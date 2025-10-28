if keyboard_check_pressed(resetKey){
	resetCount++
	
	with(obj_baller_onfield){
		hasBall = false
		state = ballerState.waiting
		desiredX = 0
		desiredY = 0
		baseToCover = baseType.undefined
		
		with(obj_field_fielderspot){
			if (self.fielder == other.fielder){
				other.x = self.x
				other.y = self.y
			}
		}
		
		state = ballerState.waiting
	}
	
	with(obj_baller_baserunner){
		if(isOut){
			instance_destroy()
		} else {
			
		}
	}
	
	with(obj_baseball){
		instance_destroy()
	}
	
	with(obj_greenbox){
		instance_destroy()
	}
	
	with(obj_redbox){
		instance_destroy()
	}
	
	with(obj_base){
		reservedFielder = -1

		//This is used to determine who is out on a force out
		//Corresponds to the runnerID of an obj_baller_baserunner
		reservedBaserunner = -1

		hasForceOut = false
	}
	
	with(obj_field_firstrunnerspot){
		var guy = instance_create_layer(x,y,"Instances_1",obj_baller_baserunner)
		guy.runnerId = other.resetCount
	}
	
	
	
	
	
}

