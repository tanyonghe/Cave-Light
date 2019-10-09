/// @description Insert description here
// You can write your code in this editor

var dx = move_speed * (keyboard_check(ord("D")) - keyboard_check(ord("A")));
var dy = v_speed;
v_speed += grav;

if (keyboard_check(ord("Q"))) {
	game_restart();
} else if (keyboard_check(ord("R"))) {
	room_restart();
}

var t1 = tilemap_get_at_pixel(tilemap, bbox_left, bbox_bottom + 1) & tile_index_mask;
var t2 = tilemap_get_at_pixel(tilemap, bbox_right, bbox_bottom + 1) & tile_index_mask;
if (t1 != 0 || t2 != 0) {
	if (keyboard_check(vk_space) || keyboard_check(ord("W"))) {
		v_speed = -jump_impulse;
	}
}

// do vertical movement
y += dy;
if (dy > 0) { // down
	var t1 = tilemap_get_at_pixel(tilemap, bbox_left, bbox_bottom) & tile_index_mask;
	var t2 = tilemap_get_at_pixel(tilemap, bbox_right, bbox_bottom) & tile_index_mask;
	
	if (t1 != 0 || t2 != 0) {
		y = ((bbox_bottom & ~63) - 1) - sprite_bbox_bottom;
		v_speed = 0;
	}
} else { // up 
	var t1 = tilemap_get_at_pixel(tilemap, bbox_left, bbox_top) & tile_index_mask;
	var t2 = tilemap_get_at_pixel(tilemap, bbox_right, bbox_top) & tile_index_mask;
	
	if (t1 != 0 || t2 != 0) {
		y = ((bbox_top + 64) & ~63) - sprite_bbox_top;
		v_speed = 0;
	}
}

// do horizontal movement
x += dx;
if (dx > 0) { // right
	var t1 = tilemap_get_at_pixel(tilemap, bbox_right, bbox_top) & tile_index_mask;
	var t2 = tilemap_get_at_pixel(tilemap, bbox_right, bbox_bottom) & tile_index_mask;
	
	if (t1 != 0 || t2 != 0) {
		x = ((bbox_right & ~63) - 1) - sprite_bbox_right;
	}
} else { // left 
	var t1 = tilemap_get_at_pixel(tilemap, bbox_left, bbox_top) & tile_index_mask;
	var t2 = tilemap_get_at_pixel(tilemap, bbox_left, bbox_bottom) & tile_index_mask;
	
	if (t1 != 0 || t2 != 0) {
		x = ((bbox_left + 64) & ~63) - sprite_bbox_left;
	}
}

// shoot
if (mouse_check_button(mb_left)) {
	instance_create_layer(x, y, "Weapons", obj_laser);
}

// platform
y -= dy;
if (dy >= 0 && place_meeting(x, y + 1, obj_platform) && y < obj_platform.y - obj_platform.sprite_height/2) {
	if (keyboard_check(vk_space) || keyboard_check(ord("W"))) {
		v_speed = -jump_impulse;
	} else {
		v_speed = 0;
		y = obj_platform.y - obj_platform.sprite_height - 1;
	}
} else {
	y += dy;
}
