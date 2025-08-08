function getBallerSpotFromBall(){
	ballerX = x
	ballerY = y	
	ballerHeight = height
	
	with(obj_baseball){
		pX = obj_baseball.x
		pY = obj_baseball.y
		pZ = obj_baseball.z
		pZSpeed = obj_baseball.zspeed
		pSpeed = obj_baseball.speed
		pDirection = obj_baseball.direction
		framesFromCalc = 0
		
	
		
		while (pZ > 0){
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
			
			pXSpeed = lengthdir_x(pSpeed,pDirection)
			pYSpeed = lengthdir_y(pSpeed,pDirection)
			
			pX = pX+pXSpeed
			pY = pY+pYSpeed
			pZ = max(0,pZ+pZSpeed)
			
			if(pZ <= other.ballerHeight){
				
				distance = point_distance(pX, pY, other.x, other.y)
				
				if (distance < other.maxspeed * framesFromCalc){
					instance_create_depth(pX, pY-pZ,0,obj_greenbox)
					instance_create_depth(pX, pY, 0, obj_baller_onfield_waypoint)
					other.state = ballerState.goingToWaypoint
					
					break
				} else {
					instance_create_depth(pX, pY-pZ,0,obj_redbox)
				}
			}
			
		}
			
		
		
		
	}
}