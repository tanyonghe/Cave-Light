/// @description Insert description here
// You can write your code in this editor

if (lives == 3) {
	sprite_index = spr_lives_3;
} else if (lives == 2) {
	sprite_index = spr_lives_2;
} else {
	sprite_index = spr_lives_1;
}

var cx = camera_get_view_x(view_camera[0]);
var cy = camera_get_view_y(view_camera[0]);

x = cx + 32;
y = cy + 32;
