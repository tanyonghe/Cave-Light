/// @description

if (!should_move) {
	return
}

var d = move_speed;

// do horizontal movement
if (dir = "x") {
	x += d;
} else {
	y += d;
}
if (d > 0) { // +ve x (right) / +ve y (down)
	var t1 = tilemap_get_at_pixel(tilemap, bbox_right, bbox_top) & tile_index_mask;
	var t2 = tilemap_get_at_pixel(tilemap, bbox_right, bbox_bottom) & tile_index_mask;
	//var t3 = tilemap_get_at_pixel(tilemap, bbox_right, bbox_top + (bbox_top-bbox_bottom)/2) & tile_index_mask;
	
	if (t1 != 0 || t2 != 0) {
		if (dir = "x") {
			x = ((bbox_right & ~31) - 1) - sprite_bbox_right;
			if (stop_counter_limit == 0 || stop_counter > stop_counter_limit) {
				image_xscale = 1;
			}
		} else {
			y = ((bbox_bottom & ~31) - 1) - sprite_bbox_bottom;
		}
		
		if (stop_counter_limit == 0 || stop_counter > stop_counter_limit) {
			curr_speed = -move_speed;
			move_speed = -move_speed;
			stop_counter = 0;
		} else {
			curr_speed = 0;
			stop_counter += 1;
		}
		
		
	}
} else { // -ve x (left) / -ve y (up)
	var t1 = tilemap_get_at_pixel(tilemap, bbox_left, bbox_top) & tile_index_mask;
	var t2 = tilemap_get_at_pixel(tilemap, bbox_left, bbox_bottom) & tile_index_mask;
	
	if (t1 != 0 || t2 != 0) {
		if (dir = "x") {
			x = ((bbox_left + 32) & ~31) - sprite_bbox_left;
			if (stop_counter_limit == 0 || stop_counter > stop_counter_limit) {
				image_xscale = -1;
			}
		} else {
			y = ((bbox_top + 32) & ~31) - sprite_bbox_top;
		}
		if (stop_counter_limit == 0 || stop_counter > stop_counter_limit) {
			curr_speed = -move_speed;
			move_speed = -move_speed;
			stop_counter = 0;
		} else {
			curr_speed = 0;
			stop_counter += 1;
		}
		
	}
}
 