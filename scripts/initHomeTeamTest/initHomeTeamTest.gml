function initHomeTeamTest(){
	homeballer1 = instance_create_depth(x,y,0,obj_baller)
	homeballer1.firstName = "Jarren"
	homeballer1.lastName = "Duran"
	homeballer1.batsRight = false
	homeballer1.ballerID = 1
	
	homeballer2 = instance_create_depth(x,y,0,obj_baller)
	homeballer2.firstName = "Rafael"
	homeballer2.lastName = "Devers"
	homeballer2.batsRight = false
	homeballer2.ballerID = 2
	
	homeballer3 = instance_create_depth(x,y,0,obj_baller)
	homeballer3.firstName = "Abraham"
	homeballer3.lastName = "Toro"
	homeballer3.batsRight = false
	homeballer3.ballerID = 3
	
	homeballer4 = instance_create_depth(x,y,0,obj_baller)
	homeballer4.firstName = "Trevor"
	homeballer4.lastName = "Story"
	homeballer4.batsRight = true
	homeballer4.ballerID = 4
	
	homeballer5 = instance_create_depth(x,y,0,obj_baller)
	homeballer5.firstName = "Roman"
	homeballer5.lastName = "Anthony"
	homeballer5.batsRight = false
	homeballer5.ballerID = 5
	
	homeballer6 = instance_create_depth(x,y,0,obj_baller)
	homeballer6.firstName = "Marcelo"
	homeballer6.lastName = "Mayer"
	homeballer6.batsRight = false
	homeballer6.ballerID = 6
	
	homeballer7 = instance_create_depth(x,y,0,obj_baller)
	homeballer7.firstName = "Kristian"
	homeballer7.lastName = "Campbell"
	homeballer7.batsRight = true
	homeballer7.ballerID = 7
	
	homeballer8 = instance_create_depth(x,y,0,obj_baller)
	homeballer8.firstName = "Ceddane"
	homeballer8.lastName = "Rafaela"
	homeballer8.batsRight = true
	homeballer8.ballerID = 8
	
	homeballer9 = instance_create_depth(x,y,0,obj_baller)
	homeballer9.firstName = "Connor"
	homeballer9.lastName = "Wong"
	homeballer9.batsRight = true
	homeballer9.ballerID = 9
	
	var lineup = [1,2,3,4,5,6,7,8,9]
	
	return lineup
}