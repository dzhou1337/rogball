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
}