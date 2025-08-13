if keyboard_check(vk_shift){
	if keyboard_check(ord("G")){
		z = 30
		direction = point_direction(x,y,mouse_x,mouse_y)
		speed = 14
		zspeed = -1
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
		speed = 9
		zspeed = 9
	}
} else {
	x = mouse_x
	y = mouse_y
	speed = 0
	z = 0
	zspeed = 0
	
}