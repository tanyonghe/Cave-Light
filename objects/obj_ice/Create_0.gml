/// @description Insert description here
// You can write your code in this editor
var i, j;

var tilemap = layer_tilemap_get_id(layer_get_id("Collision_Map"));
var data = tilemap_get_at_pixel(tilemap, 0, 192);
tilemap_set_at_pixel(tilemap, data, x - 64, y - 64);
tilemap_set_at_pixel(tilemap, data, x - 64, y);
tilemap_set_at_pixel(tilemap, data, x, y  - 64);
tilemap_set_at_pixel(tilemap, data, x, y);

for (i = -64; i < 64; i += 32) {
	for (j = -64; j < 64; j += 32) {
		tilemap_set_at_pixel(tilemap, data, x + i, y + j);
	}
}