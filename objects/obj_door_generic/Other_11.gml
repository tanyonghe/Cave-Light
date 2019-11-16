/// @description Close (set tilemap to 1)
// You can write your code in this editor
if (opened) {
	opened = false;
	image_alpha = 1;
	print_bbox();
	set_tilemap_within_bbox(collision_map, 1);
	audio_play_sound(door_close, 1, false);
}