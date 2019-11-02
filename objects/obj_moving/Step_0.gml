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
			image_xscale = 1;
		} else {
			y = ((bbox_bottom & ~31) - 1) - sprite_bbox_bottom;
		}
		
		move_speed = -move_speed;
		
		
	}
} else { // -ve x (left) / -ve y (up)
	var t1 = tilemap_get_at_pixel(tilemap, bbox_left, bbox_top) & tile_index_mask;
	var t2 = tilemap_get_at_pixel(tilemap, bbox_left, bbox_bottom) & tile_index_mask;
	
	if (t1 != 0 || t2 != 0) {
		if (dir = "x") {
			x = ((bbox_left + 32) & ~31) - sprite_bbox_left;
			image_xscale = -1;
		} else {
			y = ((bbox_top + 32) & ~31) - sprite_bbox_top;
		}
		move_speed = -move_speed;
		
	}
}
 