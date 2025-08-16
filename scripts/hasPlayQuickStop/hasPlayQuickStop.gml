function hasPlayQuickStop(){
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
		var maxFrames = 120
	
		
		while (pZ >= 0 && framesFromCalc < maxFrames){
			framesFromCalc += 1
			
			if(pZ == 0 || (pZ + pZSpeed <= 0 && abs(pZSpeed) > 4)){
				 pZSpeed = -1 * zspeed * bounceCoefficient
			}

			//slowdown due to drag
			pSpeed = max(0, pSpeed - dragCoefficient*pSpeed)

			if(pZ > 0){
				pZSpeed -= ballgravity
			}
			
			var pXSpeed = lengthdir_x(pSpeed,pDirection)
			var pYSpeed = lengthdir_y(pSpeed,pDirection)
			
			pX = pX+pXSpeed
			pY = pY+pYSpeed
			pZ = max(0,pZ+pZSpeed)
			
			if(pZ <= other.ballerHeight){
				
				var distance = point_distance(pX, pY, other.x, other.y)
				
				if (distance < other.maxspeed * framesFromCalc){
					return true
				}
			}	
		}
	}
	
	return false
}