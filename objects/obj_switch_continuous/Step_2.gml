/// @description if still activated, open instance

if (instance_exists(linked_inst)) {	
	
	if (activated) { //call the "open" or equivalent event in the inst
		
		// for multi doors
		if (linked_inst.object_index == obj_door_multi) {
			with (linked_inst) {
				show_debug_message("switch is linked to multi door, setting array at index " + string(other.switch_index));
				switch_array[other.switch_index] = 1; // indicate that this switch is on
				event_user(2);
			}
		} else {		
			with (linked_inst) {
				event_user(0);
			}
		}
		
		with (linked_indicator) {
			event_user(0); //green
		}
		with (linked_indicator2) {
			event_user(0); //green
		}
	
		image_index = 1;
		alarm[0] = 2; // TODO breaks for normal switch // as long as this switch is activated (from being shot at), the event won't run
		//alarm countdown has to be greater than laser hitbox intervals
		//but not so great that you can sweep the laser between switches for multi doors
	}
}