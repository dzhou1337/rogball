if keyboard_check(vk_shift){
	if keyboard_check(ord("G")){
		z = 30
		direction = point_direction(x,y,mouse_x,mouse_y)
		speed = 12
		zspeed = -3
	} 
	
	if keyboard_check(ord("P")){
		z = 30
		direction = point_direction(x,y,mouse_x,mouse_y)
		speed = 5
		zspeed = 10
	}
	
	if keyboard_check(ord("F")){
		z = 30
		direction = point_direction(x,y,mouse_x,mouse_y)
		speed = 11
		zspeed = 9
	}
	
	if keyboard_check(ord("L")){
		z = 30
		direction = point_direction(x,y,mouse_x,mouse_y)
		speed = 12
		zspeed = 3
	}
} else {
	x = mouse_x
	y = mouse_y
	speed = 0
	z = 0
	zspeed = 0
	
	//isBallTowardFielder()
	
}