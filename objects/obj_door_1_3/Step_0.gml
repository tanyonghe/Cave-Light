/// @description Insert description here
// You can write your code in this editor
top = y - sprite_height/2;
left = x - sprite_width/2;

if (destroyed) {
	instance_destroy();
	var i, j;
	
	var tilemap = layer_tilemap_get_id(layer_get_id("Collision_Map"));
	var data = tilemap_get_at_pixel(tilemap, x - 96, y - 32);
	for (i = -32; i < 32; i += 32) {
		for (j = -96; j < 96; j += 32) {
			tilemap_set_at_pixel(tilemap, data, x + i, y + j);
		}
	}
	
	var tilemap = layer_tilemap_get_id(layer_get_id("Bulletproof_Mask"));
	var data = tilemap_get_at_pixel(tilemap, x - 96, y - 32);
	for (i = -32; i < 32; i += 32) {
		for (j = -96; j < 96; j += 32) {
			tilemap_set_at_pixel(tilemap, data, x + i, y + j);
		}
	}
}