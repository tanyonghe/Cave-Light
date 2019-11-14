/// @description close the linked inst

if (linked_inst.object_index == obj_door_multi) {
	with (linked_inst) {
		show_debug_message("switch is linked to multi door, setting array at index " + string(other.switch_index));
		switch_array[other.switch_index] = 0; // indicate that this switch is offn
		event_user(2);
		audio_play_sound(switch_on, 1, false);
	}
} else {		
	with (linked_inst) {
		event_user(1); //call the "close" or equivalent event in the inst
		audio_play_sound(switch_off, 1, false);
	}
}

with (linked_indicator) {
	event_user(1); //red
	audio_play_sound(switch_off, 1, false);
}
with (linked_indicator2) {
	event_user(1); //red
	audio_play_sound(switch_off, 1, false);
}
		
image_index = 0;