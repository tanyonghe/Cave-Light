///@param tilemap
///@param tilemap_data
///@param x1
///@param y1
///@param x2
///@param y2
tilemap = argument0;
tilemap_data = argument1;
x1 = argument2; //left
y1 = argument3; //top
x2 = argument4; //right
y2 = argument5; //bottom

if (x2 < x1 || y1 > y2) {
	return;
}

var colMap = layer_get_id("Collision_Map");

for (i = y1; i < y2+1; i+= 16) { // top to bottom
	for (j = x1; j < x2+1; j+= 16) { //left to right
		result = tilemap_set_at_pixel(tilemap, tilemap_data, j, i);
		show_debug_message("setting tilemap " + string(tilemap) + " at " + string(j) + ", " + string(i) + " to " + string(tilemap_data) + (result?"": " Failed!"));
		
		if (global.playerKilledByDoors && tilemap == colMap && tilemap_data == 1 && position_meeting(j, i, obj_player)){
			//TODO seems to be a bug where if you stand *nearby* it treats it as a collision
			show_debug_message(" >> TILEMAP SET WHERE PLAYER IS (" + string(obj_player.x) + "," + string(obj_player.y) + ")");
			with(obj_player) {
				event_user(1);
			}
		}
	}
}
	