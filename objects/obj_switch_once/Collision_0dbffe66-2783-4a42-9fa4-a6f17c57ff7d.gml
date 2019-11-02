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
	image_index = 1;
	used = true;
}