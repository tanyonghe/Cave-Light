/// @description

// basic move vars
move_speed = 3;
prev_speed = move_speed;
dir = "x";
should_move = true;
stop_counter_limit = 0;
stop_counter = 0;

// tile map info
var l = layer_get_id("Enemy_Map");
tilemap = layer_tilemap_get_id(l);

// sprite info
sprite_bbox_left = sprite_get_bbox_left(sprite_index) - sprite_get_xoffset(sprite_index);
sprite_bbox_right = sprite_get_bbox_right(sprite_index) - sprite_get_xoffset(sprite_index);
sprite_bbox_bottom = sprite_get_bbox_bottom(sprite_index) - sprite_get_yoffset(sprite_index);
sprite_bbox_top = sprite_get_bbox_top(sprite_index) - sprite_get_yoffset(sprite_index);