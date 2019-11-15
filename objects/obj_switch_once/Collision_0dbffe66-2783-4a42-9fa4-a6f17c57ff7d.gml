/// @description Open/activate entity

if (used && !reusable) { // can only activate once
	return;
}

if (instance_exists(linked_inst)) {
	with (linked_inst) {
		if (other.action == "open") {
			event_user(0);
			audio_play_sound(switch_on, 1, false);
		} else {  //close
			event_user(1);
			audio_play_sound(switch_off, 1, false);
		}
	}
	
	with (linked_indicator) {
		if (other.action == "open") {
			event_user(0); //green
			audio_play_sound(switch_on, 1, false);
		} else {
			event_user(1); //red
			audio_play_sound(switch_off, 1, false);
		}
	}
	
	if (instance_exists(linked_indicator2)) {
		with (linked_indicator2) {
			if (other.action == "open") {
				event_user(0); //green
				audio_play_sound(switch_on, 1, false);
			} else {
				event_user(1); //red
				audio_play_sound(switch_off, 1, false);
			}
		}
	}
	image_index = 1;
	used = true;
}