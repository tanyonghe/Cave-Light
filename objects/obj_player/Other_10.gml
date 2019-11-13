/// @description Die

if (invuln) {
	image_blend = c_red;
	return;
}

global.numOfLives = max(global.numOfLives - 1, 0);
global.deaths += 1;

if (global.numOfLives > 0) {
	if (global.checkpointR == room) {
		x = global.checkpointX;
		y = global.checkpointY;
		camera_set_view_size(view_camera[0], global.cameraW, global.cameraH);
	} else {
		room_restart();
	}
} else {
	with (all) {
		move_speed = 0;
		jump_impulse = 0;
		grav = 0;
		v_speed = 0;
	}
	global.game_over = true;
}