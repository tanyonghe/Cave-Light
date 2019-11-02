/// @description curr_switches++, open
// You can write your code in this editor

curr_switches++;
show_debug_message("curr: " + string(curr_switches) + "(+1), required: " + string(required_switches));
if (curr_switches >= required_switches) {
	opened = true;
	image_alpha = 0.2;
	print_bbox();
	set_tilemap_within_bbox(collision_map, 0);
}