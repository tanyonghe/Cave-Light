tilemap = argument0;
tilemap_data = argument1;

for (i = bbox_top; i < bbox_bottom+1; i+= 16) { // top to bottom
		for (j = bbox_left; j < bbox_right+1; j+= 16) { //left to right
			tilemap_set_at_pixel(tilemap, tilemap_data, j, i);
			show_debug_message("setting tilemap at " + string(j) + ", " + string(i));
		}
	}