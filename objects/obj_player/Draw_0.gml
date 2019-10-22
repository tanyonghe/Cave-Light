/// @description Insert description here
// You can write your code in this editor



if (mouse_check_button(mb_left)) {
	show_debug_message(dir);
	xx = x + gunOffsetX;
	yy = y + gunOffsetY;
	show_debug_message("create_laser(normal, 5 reflects)")
	create_laser(beamTypes.normal, laser_width, reflects);
}

draw_self();

