/// @description if still activated, open instance

if (!instance_exists(linked_inst)) {
	return;
}

time_left -= 1; // for countdown bar
	
if (laser_touching) { //call the "open" or equivalent event in the inst
	                  // - up to the instance to check if its open in the user0 event (to prevent redundant running of code)
	
	alarm[0] = countdown_time; // reset timer
	time_left = countdown_time;
	
	// for multi doors
	if (linked_inst.object_index == obj_door_multi) {
		with (linked_inst) {
			show_debug_message("switch is linked to multi door, setting array at index " + string(other.switch_index));
			switch_array[other.switch_index] = 1; // indicate that this switch is on
			event_user(2);
		}
	} else {		
		with (linked_inst) {
			if (other.action == "open") {
				event_user(0); // on laser hit, open
			} else {
				event_user(1); // on laser hit, close
			}
		}
	}
		
	with (linked_indicator) {
		event_user(0); //green
	}
	with (linked_indicator2) {
		event_user(0); //green
	}
	
	image_index = 1;
}