/// @description Insert description here
// You can write your code in this editor

var dx = move_speed * (keyboard_check(ord("D")) - keyboard_check(ord("A")));

var dy = v_speed;
v_speed += grav;

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
		
		//coyote
		prev_dx = 0;
	}
	
	//coyote
	/*if (dx != 0) {
		prev_dx = dx;
	} else if (prev_dx > 0) {
		dx = max(prev_dx - 0.1, 0);
		prev_dx = dx;
	} else if (prev_dx < 0) {
		dx = min(prev_dx + 0.1, 0);
		prev_dx = dx;
	}*/
	
} else { // up 
	var t1 = tilemap_get_at_pixel(tilemap, bbox_left, bbox_top) & tile_index_mask;
	var t2 = tilemap_get_at_pixel(tilemap, bbox_right, bbox_top) & tile_index_mask;
	
	if (t1 != 0 || t2 != 0) {
		y = ((bbox_top + 64) & ~63) - sprite_bbox_top;
		v_speed = 0;
	}
	
	//coyote
	/*if (dx != 0) {
		prev_dx = dx;
	} else if (prev_dx > 0) {
		dx = max(prev_dx - 0.1, 0);
		prev_dx = dx;
	} else if (prev_dx < 0) {
		dx = min(prev_dx + 0.1, 0);
		prev_dx = dx;
	}*/
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

// shoot - enables the alarm for laser hitbox's fire rate
dir = point_direction(x, y, mouse_x, mouse_y); // update dir first, used both in step and draw
if (mouse_check_button(mb_left)) {
	if alarm[0] = -1 {
		alarm[0] = room_speed/fire_rate;
//		with (instance_create_layer(x+gunOffsetX, y+gunOffsetY, "Instances", obj_laser_hit)) {
//			image_angle = other.dir; 
//			image_xscale = other.laser_length + 4; // add a bit in case laser stops before obj
//			image_yscale = other.laser_width;
//			hitboxBeamType = beamTypes.normal; // have to change if player picks up crystal
//		}
	}
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

cooldown = max(0, cooldown - 1);
