/// @description Insert description here
// You can write your code in this editor

enemy_life = 5;

// basic move vars
move_speed = 5;
//jump_impulse = 14;
//grav = 0.75;
//v_speed = 0;
//dx_in_air = 0;


// tile map info
var l = layer_get_id("Enemy_Map");
tilemap = layer_tilemap_get_id(l);

// sprite info
sprite_bbox_left = sprite_get_bbox_left(sprite_index) - sprite_get_xoffset(sprite_index);
sprite_bbox_right = sprite_get_bbox_right(sprite_index) - sprite_get_xoffset(sprite_index);
sprite_bbox_bottom = sprite_get_bbox_bottom(sprite_index) - sprite_get_yoffset(sprite_index);
sprite_bbox_top = sprite_get_bbox_top(sprite_index) - sprite_get_yoffset(sprite_index);