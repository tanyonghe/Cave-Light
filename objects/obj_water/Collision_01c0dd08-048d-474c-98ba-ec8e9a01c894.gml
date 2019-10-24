/// @description Insert description here
// You can write your code in this editor

/// @description Insert description here
// You can write your code in this editor

inst = instance_nearest(x, y, obj_laser_hit)

if (inst.hitboxBeamType == 1) {
	instance_change(obj_ice, 1);
	instance_create_layer(x, y, "Invisible_Instances", obj_mirror);
}