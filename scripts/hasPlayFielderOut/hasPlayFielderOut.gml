function hasPlayFielderOut(){
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
			
			if(pZ == 0 || (pZ + pZSpeed <= 0 && abs(pZSpeed) > 4)){
				return false
			}

			//slowdown due to drag
			pSpeed = max(0, pSpeed - dragCoefficient*pSpeed)

			if(pZ > 0){
				pZSpeed -= ballgravity
			}
			
			pXSpeed = lengthdir_x(pSpeed,pDirection)
			pYSpeed = lengthdir_y(pSpeed,pDirection)
			
			pX = pX+pXSpeed
			pY = pY+pYSpeed
			pZ = max(0,pZ+pZSpeed)
			
			if(pZ <= other.ballerHeight){
				
				distance = point_distance(pX, pY, other.x, other.y)
				
				if (distance < other.maxspeed * framesFromCalc){
					return true
				}
			}	
		}
	}
	
	return false
}