/// @description Check if all switches on

show_debug_message("switch_array: " + string(switch_array));
var all_switches_on = true;
for (var i = 0; i < required_switches; i++) {
	if (switch_array[i] == 0) {
		all_switches_on = false;
		break;
	}
}

if (all_switches_on) {
	fully_activated = true;
	
	show_debug_message("ALL SWITCHES ON")
	if (startClosed) {
		opened = true;
		image_alpha = 0.2;
		set_tilemap_within_bbox(collision_map, 0);
	} else {
		opened = false;
		image_alpha = 1;
		set_tilemap_within_bbox(collision_map, 1);
	}
}
//else {
//	opened = false;
//	image_alpha = 1;
//	set_tilemap_within_bbox(collision_map, 1);
//}