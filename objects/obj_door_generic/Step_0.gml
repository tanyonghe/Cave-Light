/// @description Insert description here
// You can write your code in this editor



if (destroyed) {
	instance_destroy();
	var tilemap = layer_tilemap_get_id(layer_get_id("Collision_Map"));
	print_bbox();
	for (i = bbox_top; i < bbox_bottom+1; i+= 16) { // top to bottom
		for (j = bbox_left; j < bbox_right+1; j+= 16) { //left to right
			tilemap_set_at_pixel(tilemap, 0, j, i);
			show_debug_message("emptying tilemap at " + string(j) + ", " + string(i));
		}
	}
}