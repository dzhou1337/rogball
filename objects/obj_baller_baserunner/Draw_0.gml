draw_sprite(spr_baller_baserunner,0,x,y)
if(isOut){
	draw_text(x+10,y-10, "OUT")
} else {
	draw_text(x+10,y-10, "SAFE")
}
