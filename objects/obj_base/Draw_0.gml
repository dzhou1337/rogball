draw_sprite(spr_base,0,x,y)
draw_text(x+20,y+20,"fielder: " + string(reservedFielder))
draw_text(x+40,y+40,"runner: " + string(reservedBaserunner))
draw_text(x+20,y-20,string(base))
if(hasForceOut){
	draw_text(x+20,y-40,"FORCE")
} else {
	draw_text(x+20,y-40,"NO FORCE")
}