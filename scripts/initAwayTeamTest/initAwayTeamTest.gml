function initAwayTeamTest(){
	awayballer1 = instance_create_depth(x,y,0,obj_baller)
	awayballer1.firstName = "Josh"
	awayballer1.lastName = "Lowe"
	awayballer1.batsRight = false
	awayballer1.ballerID = 10
	
	awayballer2 = instance_create_depth(x,y,0,obj_baller)
	awayballer2.firstName = "Brandon"
	awayballer2.lastName = "Lowe"
	awayballer2.batsRight = true
	awayballer2.ballerID = 11
	
	awayballer3 = instance_create_depth(x,y,0,obj_baller)
	awayballer3.firstName = "Yandy"
	awayballer3.lastName = "Diaz"
	awayballer3.batsRight = true
	awayballer3.ballerID = 12
	
	awayballer4 = instance_create_depth(x,y,0,obj_baller)
	awayballer4.firstName = "Johnathan"
	awayballer4.lastName = "Aranda"
	awayballer4.batsRight = true
	awayballer4.ballerID = 13
	
	awayballer5 = instance_create_depth(x,y,0,obj_baller)
	awayballer5.firstName = "Junior"
	awayballer5.lastName = "Caminero"
	awayballer5.batsRight = true
	awayballer5.ballerID = 14
	
	awayballer6 = instance_create_depth(x,y,0,obj_baller)
	awayballer6.firstName = "Jake"
	awayballer6.lastName = "Mangum"
	awayballer6.batsRight = true
	awayballer6.ballerID = 15
	
	awayballer7 = instance_create_depth(x,y,0,obj_baller)
	awayballer7.firstName = "Cameron"
	awayballer7.lastName = "Misner"
	awayballer7.batsRight = true
	awayballer7.ballerID = 16
	
	awayballer8 = instance_create_depth(x,y,0,obj_baller)
	awayballer8.firstName = "Taylor"
	awayballer8.lastName = "Walls"
	awayballer8.batsRight = true
	awayballer8.ballerID = 17
	
	awayballer9 = instance_create_depth(x,y,0,obj_baller)
	awayballer9.firstName = "Danny"
	awayballer9.lastName = "Jansen"
	awayballer9.batsRight = true
	awayballer9.ballerID = 18
	
	var lineup = [10,11,12,13,14,15,16,17,18]
	
	return lineup
}