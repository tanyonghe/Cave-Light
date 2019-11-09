/// @description Insert description here
// You can write your code in this editor
global.initialW = 1280;
global.initialH = 768;

global.finalW = global.initialW * 1.5;
global.finalH = global.initialH * 1.5;

global.playerControlsEnabled = true;
pause = false;
invuln = false;

if (global.checkpointR == room) {
	x = global.checkpointX;
	y = global.checkpointY;
	camera_set_view_size(view_camera[0], global.cameraW, global.cameraH);
}


//---
print_bbox();


//---
// basic move vars
move_speed = 6;
jump_impulse = 14;
grav = 0.75;
v_speed = 0;
dx_in_air = 0;
x_diff = 0;
x_diff_set = false;
facing = 1; // 1 is right, -1 is left
footstep_counter = 0;
in_air = false;
coyote_counter = 0;

// shooting vars
cooldown = 0;
dir = 0; //aim
firingDir = 0; //aim including offset
fire_rate = 60; //times per second
amplified_laser_damage = 5; //each time
frost_laser_damage = 2;
surge_laser_damage = 4;
reflects = 10; //max times laser can reflect
laser_length = 0; //actual distance of beam
laser_width = 4;
// how far from the player to draw the laser
gunOffsetX = 20;
gunOffsetY = 0;

// tile map info
var l = layer_get_id("Collision_Map");
tilemap = layer_tilemap_get_id(l);

// sprite info
sprite_bbox_left = sprite_get_bbox_left(sprite_index) - sprite_get_xoffset(sprite_index);
sprite_bbox_right = sprite_get_bbox_right(sprite_index) - sprite_get_xoffset(sprite_index);
sprite_bbox_bottom = sprite_get_bbox_bottom(sprite_index) - sprite_get_yoffset(sprite_index);
sprite_bbox_top = sprite_get_bbox_top(sprite_index) - sprite_get_yoffset(sprite_index);
show_debug_message("SPRITE BBOX " + string(sprite_bbox_left) + "," + string(sprite_bbox_right) +"," + string(sprite_bbox_bottom) + "," + string(sprite_bbox_top));