var mx = mouse_x;
var my = mouse_y;
var n = collision_normal(mx, my, obj_wall, 6.5, 1);
    
if (n > -1) {
    draw_set_color(c_white);
    draw_arrow(mx, my, mx + lengthdir_x(30, n), my + lengthdir_y(30, n),20);
	show_debug_message("hello")
}
