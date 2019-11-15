/// @description Insert description here
// You can write your code in this editor

if (canAdvance) {
	global.continues += 1;
	global.numOfLives = 3;
	global.game_over = false;
	
	if (global.checkpointR == room) {
		obj_status.game_over = false;
		obj_status.game_over_render = false;
		
		with (obj_player) {
			move_speed = 6;
			jump_impulse = 8;
			jump_accel = -0.75;
			grav = 0.75;
			v_speed = 0;
			dx_in_air = 0;
			x_diff = 0;
			x_diff_set = false;
			facing = 1;
			footstep_counter = 0;
			in_air = false;
			coyote_counter = 0;
			x = global.checkpointX;
			y = global.checkpointY;
		}
		camera_set_view_size(view_camera[0], global.cameraW, global.cameraH);
		instance_destroy(obj_game_over);
		instance_destroy();
	} else {
		room_restart();
	}
}