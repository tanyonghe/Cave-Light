/// @description Insert description here
// You can write your code in this editor

if (mouse_check_button(mb_left) && global.hasGun == true) {
	//show_debug_message(dir);
	xx = x + gunOffsetX;
	yy = y + gunOffsetY;
	//show_debug_message("create_laser(normal, " + string(reflects) + " reflects)");
	create_laser(beamTypes.normal, laser_width, reflects);
}

draw_self();

