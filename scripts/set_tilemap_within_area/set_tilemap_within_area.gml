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

for (i = y1; i < y2+1; i+= 16) { // top to bottom
	for (j = x1; j < x2+1; j+= 16) { //left to right
		result = tilemap_set_at_pixel(tilemap, tilemap_data, j, i);
		show_debug_message("setting tilemap at " + string(j) + ", " + string(i) + " to " + string(tilemap_data) + (result?"": " Failed!"));
	}
}
	