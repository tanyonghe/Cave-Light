/// @description Insert description here
// You can write your code in this editor

if (invuln) {
	return;
}

global.numOfLives = max(global.numOfLives - 1, 0);

if (global.numOfLives > 0) {
	room_restart();
} else {
	with (all) {
		move_speed = 0;
		jump_impulse = 0;
		grav = 0;
		v_speed = 0;
	}
	global.game_over = true;
}