/// @description

alarm[0] = 10; // must be greater than laser hit interval

if (!canToggle) { // an interval before it can be toggled
	exit;
}

if (instance_exists(linked_inst)) {
	with (linked_inst) {
		if (other.action) {
			event_user(0);
		} else {  //close
			event_user(1);
		}
	}
	image_index = (image_index+1)%2; // toggles between 0 and 1
	canToggle = false;
	action = !action; //invert
	
}