/// @description Insert description here
// You can write your code in this editor

if (destroyed) {
	instance_destroy();
	var tilemap = layer_tilemap_get_id(layer_get_id("Collision_Map"));
	var data = tilemap_get_at_pixel(tilemap, x - 96, y - 32);
	tilemap_set_at_pixel(tilemap, data, x - 32, y - 96);
	tilemap_set_at_pixel(tilemap, data, x - 32, y - 32);
	tilemap_set_at_pixel(tilemap, data, x - 32, y + 32);
	var tilemap = layer_tilemap_get_id(layer_get_id("Bulletproof_Mask"));
	var data = tilemap_get_at_pixel(tilemap, x - 96, y - 32);
	tilemap_set_at_pixel(tilemap, data, x - 32, y - 96);
	tilemap_set_at_pixel(tilemap, data, x - 32, y - 32);
	tilemap_set_at_pixel(tilemap, data, x - 32, y + 32);
}