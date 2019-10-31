/// @description Insert description here
// You can write your code in this editor

if (other.hitboxBeamType != beamTypes.normal) {
	enemy_life -= 1;
	image_blend = make_color_rgb(255, 80, 80);
	alarm[0] = 3;
}

if (enemy_life < 0) instance_destroy();