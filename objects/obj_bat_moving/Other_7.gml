/// @description play sound on flap
// You can write your code in this editor

if ((bbox_right > camera_get_view_x(view_camera[0])) && (bbox_left < camera_get_view_x(view_camera[0]) + camera_get_view_width(view_camera[0])) && (bbox_bottom > camera_get_view_y(view_camera[0])) && (bbox_top < camera_get_view_y(view_camera[0]) + camera_get_view_height(view_camera[0]))) {
	var snd = audio_play_sound(bat_flap, 1, false);
	audio_sound_gain(snd, 2, 0);
}