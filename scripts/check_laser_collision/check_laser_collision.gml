///@description Check if laser collides with anything
///@param currX
///@param currY

currX = argument[0];
currY = argument[1];
//TODO make this global and initialize only once
var array; // everything a laser should collide with
array[0] = obj_crystal_ice;
array[1] = obj_ice;
array[2] = obj_platform;
array[3] = obj_enemy;
array[4] = obj_bat;
array[5] = obj_rat;
array[6] = obj_mirror;

var collision_map_layer_id = layer_get_id("Collision_Map");
var map_id = layer_tilemap_get_id(collision_map_layer_id);
if tilemap_get_at_pixel(map_id, currX, currY) {
	return true;
}

var hasCollided = false;

for (var i = 0; i < 7; i++) {
	if collision_point(currX, currY, array[i], 1, 1) {
		show_debug_message(">> COLLIDED WITH " + object_get_name(array[i]));
		hasCollided = true;
		break;
	}
		
}

//show_debug_message("hasCollided:" + string(hasCollided));
return hasCollided;