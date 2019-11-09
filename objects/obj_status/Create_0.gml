/// @description Insert description here
// You can write your code in this editor

pause = false;
game_over_render = false;
cooldown = false;

if (!pause) {
	following = obj_player;
	view_w = camera_get_view_width(view_camera[0]);
	view_h = camera_get_view_height(view_camera[0]);
}