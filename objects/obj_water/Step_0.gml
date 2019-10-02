/// @description Insert description here
// You can write your code in this editor

if (place_meeting(x, y + 1, obj_ice)) {
	instance_destroy();
	instance_create_layer(x, y, "Instances", obj_ice);
}

if (place_meeting(x, y - 1, obj_ice)) {
	instance_destroy();
	instance_create_layer(x, y, "Instances", obj_ice);
}

if (place_meeting(x + 1, y, obj_ice)) {
	instance_destroy();
	instance_create_layer(x, y, "Instances", obj_ice);
}

if (place_meeting(x - 1, y, obj_ice)) {
	instance_destroy();
	instance_create_layer(x, y, "Instances", obj_ice);
}