/// @description Insert description here
// You can write your code in this editor

// basic move vars
move_speed = 6;
jump_impulse = 14;
grav = 0.75;
v_speed = 0;
prev_dx = 0;

// shooting vars
cooldown = 0;

// tile map info
var l = layer_get_id("Collision_Map");
tilemap = layer_tilemap_get_id(l);

// sprite info
sprite_bbox_left = sprite_get_bbox_left(sprite_index) - sprite_get_xoffset(sprite_index);
sprite_bbox_right = sprite_get_bbox_right(sprite_index) - sprite_get_xoffset(sprite_index);
sprite_bbox_bottom = sprite_get_bbox_bottom(sprite_index) - sprite_get_yoffset(sprite_index);
sprite_bbox_top = sprite_get_bbox_top(sprite_index) - sprite_get_yoffset(sprite_index);