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
dir = 0; //aim
fire_rate = 20; //times per second
amplified_laser_damage = 10; //each time
frost_laser_damage = 5;
surge_laser_damage = 7;
reflects = 10; //max times laser can reflect
laser_length = 0; //actual distance of beam
laser_width = 4;
// how far from the player to draw the laser
gunOffsetX = 0;
gunOffsetY = 0;

// tile map info
var l = layer_get_id("Collision_Map");
tilemap = layer_tilemap_get_id(l);

// sprite info
sprite_bbox_left = sprite_get_bbox_left(sprite_index) - sprite_get_xoffset(sprite_index);
sprite_bbox_right = sprite_get_bbox_right(sprite_index) - sprite_get_xoffset(sprite_index);
sprite_bbox_bottom = sprite_get_bbox_bottom(sprite_index) - sprite_get_yoffset(sprite_index);
sprite_bbox_top = sprite_get_bbox_top(sprite_index) - sprite_get_yoffset(sprite_index);