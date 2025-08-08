if keyboard_check(vk_shift){
	if keyboard_check(ord("G")){
		z = 30
		direction = point_direction(x,y,mouse_x,mouse_y)
		speed = 5
		zspeed = -20
	} 
	
	if keyboard_check(ord("P")){
		z = 30
		direction = point_direction(x,y,mouse_x,mouse_y)
		speed = 5
		zspeed = 15
	}
	
	if keyboard_check(ord("F")){
		z = 30
		direction = point_direction(x,y,mouse_x,mouse_y)
		speed = 15
		zspeed = -2
	}
} else {
	x = mouse_x
	y = mouse_y
	speed = 0
	z = 0
	zspeed = 0
	
}