
if (state == ballerState.holdingBall){
	draw_sprite(spr_baseball,0,x-15,y-15)	
	draw_sprite(spr_baller,0,x,y)
}
	
	
if(state == ballerState.catching){
	draw_sprite(spr_baller_catching,0,x,y)
} else {
	draw_sprite(spr_baller,0,x,y)
}


draw_text(x,y-20,"covering: " + basetypeToString(baseToCover))

if (state == ballerState.waiting){
	draw_text(x,y-40,"WAITING")
}