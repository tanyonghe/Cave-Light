/// @description Insert description here
// You can write your code in this editor

lives = max(lives -1, 0);

if (lives > 0) {
	room_restart();
} else {
	with (all) {
		move_speed = 0;
		jump_impulse = 0;
		grav = 0;
		v_speed = 0;
	}
	instance_create_layer(0, 0, "Instructions", obj_game_over);
	instance_create_layer(0, 0, "Instructions", obj_game_over_text);
}