/// @description

alarm[0] = 10; // must be greater than laser hit interval

if (!canToggle) { // an interval before it can be toggled
	exit;
}

if (instance_exists(linked_inst)) {
	with (linked_inst) {
		if (other.action) {
			event_user(0);
			audio_play_sound(switch_on, 1, false);
		} else {  //close
			event_user(1);
			audio_play_sound(switch_off, 1, false);
		}
	}
	image_index = (image_index+1)%2; // toggles between 0 and 1
	canToggle = false;
	action = !action; //invert
	
}