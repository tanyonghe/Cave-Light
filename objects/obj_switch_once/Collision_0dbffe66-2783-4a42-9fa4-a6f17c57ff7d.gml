/// @description Open/activate entity

if (used && !reusable) { // can only activate once
	return;
}

if (instance_exists(linked_inst)) {
	with (linked_inst) {
		if (other.action == "open") {
			event_user(0);
		} else {  //close
			event_user(1);
		}
	}
	
	with (linked_indicator) {
		if (other.action == "open") {
			event_user(0); //green
		} else {
			event_user(1); //red
		}
	}
	
	if (instance_exists(linked_indicator2)) {
		with (linked_indicator2) {
			if (other.action == "open") {
				event_user(0); //green
			} else {
				event_user(1); //red
			}
		}
	}
	image_index = 1;
	used = true;
	audio_play_sound(switch_on, 1, false);
}