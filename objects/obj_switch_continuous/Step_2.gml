/// @description if still activated, open instance

if (instance_exists(linked_inst)) {	
	
	if (activated) { //call the "open" or equivalent event in the inst
		with (linked_inst) {
			event_user(0);
		}
		image_index = 1;
		alarm[0] = 5; // as long as this switch is activated (from being shot at), the event won't run
		//alarm countdown has to be greater than laser hitbox intervals
	}
}