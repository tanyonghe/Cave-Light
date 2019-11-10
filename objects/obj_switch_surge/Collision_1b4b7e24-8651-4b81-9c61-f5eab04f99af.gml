/// @description Open/activate entity

if (used && !reusable) { // can only activate once
	return;
}

var hasSurge = false;

// in case multiple hitboxes are touching simultaneously, check each of them
with (obj_laser_hit) {
	if instance_place(x, y, other) {
		show_debug_message(">~>~> laser (" + string(id) + ") (" + string(x) + "," + string(y) + ") touching water, type " + string(hitboxBeamType));
		if hitboxBeamType == beamTypes.surge {
			hasSurge = true;
			break;
		}
	}
}

if (!hasSurge) {
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
	
	with (linked_indicator2) {
		if (other.action == "open") {
			event_user(0); //green
			audio_play_sound(switch_on, 1, false);
		} else {
			event_user(1); //red
			audio_play_sound(switch_off, 1, false);
		}
	}
	image_index = 1;
	used = true;
}