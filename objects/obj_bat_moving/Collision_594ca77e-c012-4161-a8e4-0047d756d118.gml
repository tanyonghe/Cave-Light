/// @description Insert description here
// You can write your code in this editor

// Inherit the parent event
event_inherited();

if (other.hitboxBeamType == beamTypes.frost) {
	freeze_counter -= 1;
	image_blend = make_color_rgb(185, 236, 249); //blueish
	alarm[0] = 3;
}

if (freeze_counter < 0) {
	instance_create_layer(x, y, "Instances", obj_bat_frozen);
	instance_destroy();
}
