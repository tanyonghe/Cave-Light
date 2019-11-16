/// @description Toggle state
if (!opened) {
	opened = true;
	image_alpha = 0.2;
	print_bbox();
	set_tilemap_within_bbox(collision_map, 0);
	audio_play_sound(door_open, 1, false);
} else {
	opened = false;
	image_alpha = 1;
	print_bbox();
	set_tilemap_within_bbox(collision_map, 1);
	audio_play_sound(door_close, 1, false);
}