/// @description Insert description here
// You can write your code in this editor

// set up motion
direction = point_direction(x, y, mouse_x, mouse_y);
speed = 50;
image_angle = direction;

// tile map info
var l = layer_get_id("Bulletproof_Mask");
tilemap = layer_tilemap_get_id(l);

// sprite info
sprite_bbox_left = sprite_get_bbox_left(sprite_index) - sprite_get_xoffset(sprite_index);
sprite_bbox_right = sprite_get_bbox_right(sprite_index) - sprite_get_xoffset(sprite_index);
sprite_bbox_bottom = sprite_get_bbox_bottom(sprite_index) - sprite_get_yoffset(sprite_index);
sprite_bbox_top = sprite_get_bbox_top(sprite_index) - sprite_get_yoffset(sprite_index);