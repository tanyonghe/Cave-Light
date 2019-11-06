/// @description Insert description here
// You can write your code in this editor

if (place_meeting(x, y, obj_player)) {
	global.checkpointID = id;
	global.checkpointX = x;
	global.checkpointY = y;
	global.checkpointR = room;
	global.cameraW = camera_get_view_width(view_camera[0])
	global.cameraH = camera_get_view_height(view_camera[0]);
	instance_destroy();
}