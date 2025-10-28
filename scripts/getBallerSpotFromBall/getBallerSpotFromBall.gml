function getBallerSpotFromBall(purpose){
	show_debug_message(string(fielder) + ": gimme")
	
	var ballerX = x
	var ballerY = y	
	var ballerHeight = height
	
	with(obj_baseball){
		var pX = obj_baseball.x
		var pY = obj_baseball.y
		var pZ = obj_baseball.z
		var pZSpeed = obj_baseball.zspeed
		var pSpeed = obj_baseball.speed
		var pDirection = obj_baseball.direction
		var framesFromCalc = 0
		
	
		
		while (pZ >= 0 && speed > 0){
			framesFromCalc += 1
			
			if(pZ == 0){
			pSpeed = max(0, pSpeed - rollResistCoef - rollResistSpeedCoef *(power(pSpeed,2)))
			//speed = max(0, speed - .01)
			}

			//slowdown due to drag
			pSpeed = max(0, pSpeed - dragCoefficient*pSpeed)

			if(pZ > 0){
				pZSpeed -= ballgravity
			}

			if(pZ + pZSpeed <= 0 && abs(pZSpeed) > 4){
				pZSpeed = -1 * pZSpeed * bounceCoefficient
			}
			
			var pXSpeed = lengthdir_x(pSpeed,pDirection)
			var pYSpeed = lengthdir_y(pSpeed,pDirection)
			
			if(place_meeting(pX+pXSpeed, pY+pYSpeed,obj_wall)){
				// Find surface normal
				var wallNormal = collision_normal(pX,pY,obj_wall,pSpeed,1)
		
				if (wallNormal != -1){
					var nx = lengthdir_x(1, wallNormal);
					var ny = lengthdir_y(1, wallNormal);
		
					// Find incident vector
					var ix = lengthdir_x(1, pDirection);
					var iy = lengthdir_y(1, pDirection);
		
					// Find reflection vector
					var rx = ix - 2 * nx * dot_product(ix, iy, nx, ny);
					var ry = iy - 2 * ny * dot_product(ix, iy, nx, ny);
		
					move_outside_solid(wallNormal, pSpeed);
					pDirection = point_direction(0, 0, rx, ry);
					pXSpeed = lengthdir_x(pSpeed,pDirection)
					pYSpeed = lengthdir_y(pSpeed,pDirection)
					show_debug_message("bounce")
				}
		
			}
			
			
			pX = pX+pXSpeed
			pY = pY+pYSpeed
			pZ = max(0,pZ+pZSpeed)
			
			if(pZ <= other.ballerHeight){
				
				distance = point_distance(pX, pY, other.x, other.y)
				
				if (distance < other.maxspeed * framesFromCalc){
					//instance_create_depth(pX, pY-pZ,0,obj_greenbox)
					waypoint = instance_create_depth(pX, pY, 0, obj_baller_onfield_waypoint)
					waypoint.fielder = other.fielder
					waypoint.purpose = purpose
					other.desiredX = pX
					other.desiredY = pY
					other.state = ballerState.goingToWaypoint
					
					break
				} else {
					//instance_create_depth(pX, pY-pZ,0,obj_redbox)
				}
			}	
		}
	}
}