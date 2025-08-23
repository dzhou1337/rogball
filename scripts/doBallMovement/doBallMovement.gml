function doBallMovement(){
	//rolling resistance
	if(z == 0){
		speed = max(0, speed - rollResistCoef - rollResistSpeedCoef *(power(speed,2)))
		
		//speed = max(0, speed - .01)
	}

	//slowdown due to drag
	speed = max(0, speed - dragCoefficient*speed)

	if(z > 0){
		zspeed -= ballgravity
	}

	if(z + zspeed <= 0 && abs(zspeed) > 4){
		zspeed = -1 * zspeed * bounceCoefficient
	}

	z = max(0,z+zspeed)
	
	if(place_meeting(x+hspeed, y+vspeed,obj_wall)){
		// Find surface normal
		var wallNormal = collision_normal(x,y,obj_wall,speed,1)
		
		if (wallNormal != -1){
			var nx = lengthdir_x(1, wallNormal);
			var ny = lengthdir_y(1, wallNormal);
		
			// Find incident vector
			var ix = lengthdir_x(1, direction);
			var iy = lengthdir_y(1, direction);
		
			// Find reflection vector
			var rx = ix - 2 * nx * dot_product(ix, iy, nx, ny);
			var ry = iy - 2 * ny * dot_product(ix, iy, nx, ny);
		
			move_outside_solid(wallNormal, speed);
			direction = point_direction(0, 0, rx, ry);
			show_debug_message("bounce")
		}
		
	}
}