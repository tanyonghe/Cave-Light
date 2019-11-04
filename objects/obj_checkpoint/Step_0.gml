/// @description Insert description here
// You can write your code in this editor

if (place_meeting(x, y, obj_player)) {
	global.checkpointID = id;
	global.checkpointX = x;
	global.checkpointY = y;
	global.checkpointR = room;
	instance_destroy();
}