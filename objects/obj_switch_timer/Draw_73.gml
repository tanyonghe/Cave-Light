/// @description draw countdown bar

if (!laser_touching && laser_touched_once) {
	draw_healthbar(x-30, y-60, x+30, y-50, time_left/countdown_time*100, c_gray, c_red, c_white, 0, false, false);
}
draw_self();