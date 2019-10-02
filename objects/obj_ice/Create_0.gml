/// @description Insert description here
// You can write your code in this editor

var tilemap = layer_tilemap_get_id(layer_get_id("Collision_Map"));
var data = tilemap_get_at_pixel(tilemap, 0, 0);
tilemap_set_at_pixel(tilemap, data, x - 64, y - 64);
tilemap_set_at_pixel(tilemap, data, x - 64, y);
tilemap_set_at_pixel(tilemap, data, x, y  - 64);
tilemap_set_at_pixel(tilemap, data, x, y);
