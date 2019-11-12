/// @description Toggle state
if (!opened) {
	opened = true;
	image_alpha = 0.2;
	print_bbox();
	set_tilemap_within_bbox(collision_map, 0);
} else {
	opened = false;
	image_alpha = 1;
	print_bbox();
	set_tilemap_within_bbox(collision_map, 1);
}