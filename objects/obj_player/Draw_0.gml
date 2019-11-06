/// @description Draw laser and self

if (mouse_check_button(mb_left) && global.hasGun == true) {
	//show_debug_message(dir);
	xx = x + gunOffsetX * facing;
	yy = y + gunOffsetY;
	//show_debug_message("create_laser(normal, " + string(reflects) + " reflects)");
	create_laser(beamTypes.normal, laser_width, reflects, 1);
}

if (invuln) {
	draw_text(x, y - 32, "invuln");
}
draw_self();

