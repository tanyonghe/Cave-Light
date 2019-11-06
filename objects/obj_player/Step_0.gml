/// @description Insert description here
// You can write your code in this editor


var dx = move_speed * (keyboard_check(ord("D")) - keyboard_check(ord("A")));

if (global.playerControlsEnabled) {
	if (keyboard_check(ord("D"))) {
		facing = 1;
	} else if (keyboard_check(ord("A"))) {
		facing = -1;
	}
} else {
	dx = 0;
}

var dy = v_speed;
v_speed += grav;

var t1 = tilemap_get_at_pixel(tilemap, bbox_left, bbox_bottom + 1) & tile_index_mask;
var t2 = tilemap_get_at_pixel(tilemap, bbox_right, bbox_bottom + 1) & tile_index_mask;
if (t1 != 0 || t2 != 0) {
	if (global.playerControlsEnabled && keyboard_check(vk_space)) {
	//if (keyboard_check(vk_space)) {
		v_speed = -jump_impulse;
		dx_in_air = dx;
	}
}

// do vertical movement
y += dy;
if (dy > 0) { // down
	var t1 = tilemap_get_at_pixel(tilemap, bbox_left, bbox_bottom) & tile_index_mask;
	var t2 = tilemap_get_at_pixel(tilemap, bbox_right, bbox_bottom) & tile_index_mask;
	
	if (t1 != 0 || t2 != 0) {
		y = ((bbox_bottom & ~31) - 1) - sprite_bbox_bottom;
		v_speed = 0;
		dx_in_air = 0;

	} else {
		if (dx == 0) {
			dx_in_air = dx_in_air * 0.96;
			if (abs(dx_in_air) < 0.1) {
				dx_in_air = 0;
			}
			dx = dx_in_air;
		} else {
			dx_in_air = dx;
		}
	}
	
} else { // up 
	var t1 = tilemap_get_at_pixel(tilemap, bbox_left, bbox_top) & tile_index_mask;
	var t2 = tilemap_get_at_pixel(tilemap, bbox_right, bbox_top) & tile_index_mask;
	
	if (t1 != 0 || t2 != 0) {
		y = ((bbox_top + 32) & ~31) - sprite_bbox_top;
		v_speed = 0;
		dx_in_air = 0;
		
	} else if (dy != 0) {
		if (dx == 0) {
			dx_in_air = dx_in_air * 0.96;
			if (abs(dx_in_air) < 0.1) {
				dx_in_air = 0;
			}
			dx = dx_in_air;
		} else {
			dx_in_air = dx;
		}
	} else if (dy == 0) {
		dx_in_air = 0;
	}
	
}

// do horizontal movement
x += dx;
if (dx > 0) { // right
	var t1 = tilemap_get_at_pixel(tilemap, bbox_right, bbox_top) & tile_index_mask;
	var t2 = tilemap_get_at_pixel(tilemap, bbox_right, bbox_bottom) & tile_index_mask;
	var t3 = tilemap_get_at_pixel(tilemap, bbox_right, bbox_top + sprite_height/2) & tile_index_mask;
	
	if (t1 != 0 || t2 != 0 || t3 != 0) {
		x = ((bbox_right & ~31) - 1) - sprite_bbox_right;
		dx_in_air = 0;
	}
} else { // left 
	var t1 = tilemap_get_at_pixel(tilemap, bbox_left, bbox_top) & tile_index_mask;
	var t2 = tilemap_get_at_pixel(tilemap, bbox_left, bbox_bottom) & tile_index_mask;
	var t3 = tilemap_get_at_pixel(tilemap, bbox_left, bbox_top + sprite_height/2) & tile_index_mask;
	
	if (t1 != 0 || t2 != 0 || t3 != 0) {
		x = ((bbox_left + 32) & ~31) - sprite_bbox_left;
		dx_in_air = 0;
	}
}

// shoot - enables the alarm for laser hitbox's fire rate


if (mouse_check_button(mb_left) && global.hasGun && global.playerControlsEnabled) {
	dir = point_direction(x, y, mouse_x, mouse_y); // update dir first, used both in step and draw
	if (dir<90 || dir > 270) { // change orientation based on shooting direction
		facing = 1;
	} else {
		facing = -1;
	}
	firingDir = point_direction(x + gunOffsetX * facing, y, mouse_x, mouse_y); // account for offset

	if alarm[0] = -1 {
		alarm[0] = room_speed/fire_rate;
	}
}

// platform
if (instance_exists(obj_platform)) {
	y -= dy;
	var platform = instance_nearest(x, y, obj_platform);
	var on_platform = place_meeting(x, y + 1, platform) || (y <= platform.y - sprite_get_height(spr_player)/2 && y + dy > platform.y - sprite_get_height(spr_player)/2) && abs(platform.x - x) < platform.sprite_width/2;
	if (dy >= 0 && on_platform && y <= platform.y - sprite_get_height(spr_player)/2) {
		if (x_diff_set == false || dx != 0) {
			x_diff = platform.x - x;
			x_diff_set = true;
		}
		if (keyboard_check(vk_space) || keyboard_check(ord("W"))) {
			v_speed = -jump_impulse;
		} else {
			v_speed = 0;
			y = platform.y - sprite_get_height(spr_player)/2 - 12;
			x = platform.x - x_diff;
		}
	} else {
		y += dy;
		x_diff_set = false;
	}
}

cooldown = max(0, cooldown - 1);

if (keyboard_check_pressed(vk_alt)) {
	invuln = !invuln;
}
