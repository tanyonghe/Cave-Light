/// @description Insert description here
// You can write your code in this editor

var dx = move_speed;

//var dy = v_speed;
//v_speed += grav;

/*
var t1 = tilemap_get_at_pixel(tilemap, bbox_left, bbox_bottom + 1) & tile_index_mask;
var t2 = tilemap_get_at_pixel(tilemap, bbox_right, bbox_bottom + 1) & tile_index_mask;
if (t1 != 0 || t2 != 0) {
	if (keyboard_check(vk_space) || keyboard_check(ord("W"))) {
		v_speed = -jump_impulse;
	}
}
*/

/*
// do vertical movement
y += dy;
if (dy > 0) { // down
	var t1 = tilemap_get_at_pixel(tilemap, bbox_left, bbox_bottom) & tile_index_mask;
	var t2 = tilemap_get_at_pixel(tilemap, bbox_right, bbox_bottom) & tile_index_mask;
	
	if (t1 != 0 || t2 != 0) {
		y = ((bbox_bottom & ~31) - 1) - sprite_bbox_bottom;
		v_speed = 0;
		dx_in_air = 0;

	}
} else { // up 
	var t1 = tilemap_get_at_pixel(tilemap, bbox_left, bbox_top) & tile_index_mask;
	var t2 = tilemap_get_at_pixel(tilemap, bbox_right, bbox_top) & tile_index_mask;
	
	if (t1 != 0 || t2 != 0) {
		y = ((bbox_top + 32) & ~31) - sprite_bbox_top;
		v_speed = 0;
		
	}
	
}
*/

// do horizontal movement
x += dx;
if (dx > 0) { // right
	var t1 = tilemap_get_at_pixel(tilemap, bbox_right, bbox_top) & tile_index_mask;
	var t2 = tilemap_get_at_pixel(tilemap, bbox_right, bbox_bottom) & tile_index_mask;
	//var t3 = tilemap_get_at_pixel(tilemap, bbox_right, bbox_top + (bbox_top-bbox_bottom)/2) & tile_index_mask;
	
	if (t1 != 0 || t2 != 0) {
		x = ((bbox_right & ~31) - 1) - sprite_bbox_right;
		move_speed = -move_speed;
		image_xscale = 1;
	}
} else { // left 
	var t1 = tilemap_get_at_pixel(tilemap, bbox_left, bbox_top) & tile_index_mask;
	var t2 = tilemap_get_at_pixel(tilemap, bbox_left, bbox_bottom) & tile_index_mask;
	
	if (t1 != 0 || t2 != 0) {
		x = ((bbox_left + 32) & ~31) - sprite_bbox_left;
		move_speed = -move_speed;
		image_xscale = -1;
	}
}
