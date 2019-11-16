/// @description end countdown - close the linked inst

if (linked_inst.object_index == obj_door_multi) {
	with (linked_inst) {
		show_debug_message("switch is linked to multi door, setting array at index " + string(other.switch_index));
		switch_array[other.switch_index] = 0; // indicate that this switch is offn
		event_user(2);
	}
} else {		
	with (linked_inst) {
		if (other.action == "open") {
			event_user(1); // on timeout, close
		} else {
			event_user(0); // on timeout, open
		}
	}
}

with (linked_indicator) {
	event_user(1); //red
}
with (linked_indicator2) {
	event_user(1); //red
}
		
image_index = 0;
image_speed = 0;
audio_play_sound(switch_off, 1, false);