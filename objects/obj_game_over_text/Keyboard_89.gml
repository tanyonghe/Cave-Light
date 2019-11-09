/// @description Insert description here
// You can write your code in this editor

if (canAdvance) {
	global.continues += 1;
	global.numOfLives = 3;
	global.game_over = false;
	
	if (global.checkpointR == room) {
		x = global.checkpointX;
		y = global.checkpointY;
		camera_set_view_size(view_camera[0], global.cameraW, global.cameraH);
	}
}