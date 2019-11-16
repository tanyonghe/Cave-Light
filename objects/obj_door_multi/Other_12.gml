/// @description Check if all switches on

show_debug_message("switch_array: " + string(switch_array));
var all_switches_on = true;
for (var i = 0; i < required_switches; i++) {
	if (switch_array[i] == 0) {
		all_switches_on = false;
		break;
	}
}

// INDICATOR
if (instance_exists(indicator1) && instance_exists(indicator2)) {
	if (switch_array[0] == 1){
		indicator1.image_index = 1;
	} else {
		indicator1.image_index = 0;
	}
	if (switch_array[1] == 1){
		indicator2.image_index = 1;
	} else {
		indicator2.image_index = 0;
	}
}

if (all_switches_on) {
	fully_activated = true;
	
	show_debug_message("ALL SWITCHES ON")
	if (startClosed) {
		opened = true;
		image_alpha = 0.2;
		set_tilemap_within_bbox(collision_map, 0);
		audio_play_sound(door_open, 1, false);
	} else {
		opened = false;
		image_alpha = 1;
		set_tilemap_within_bbox(collision_map, 1);
		audio_play_sound(door_close, 1, false);
	}
}
//else {
//	opened = false;
//	image_alpha = 1;
//	set_tilemap_within_bbox(collision_map, 1);
//}