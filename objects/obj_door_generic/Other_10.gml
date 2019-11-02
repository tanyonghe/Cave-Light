/// @description Open (set tilemap to 0)
// You can write your code in this editor
if (!opened) {
	opened = true;
	image_alpha = 0.2;
	print_bbox();
	set_tilemap_within_bbox(collision_map, 0);
}