/// @description Insert description here
// You can write your code in this editor

lives = max(lives - 1, 0);

if (lives > 0) {
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