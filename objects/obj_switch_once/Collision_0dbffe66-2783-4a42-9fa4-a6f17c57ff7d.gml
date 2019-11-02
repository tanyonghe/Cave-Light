/// @description Insert description here
// You can write your code in this editor

if (instance_exists(door_inst)) {
	with (door_inst) {
		if (other.action == "open") {
			event_user(0);
		} else {  //close
			event_user(1);
		}
	}
	image_index = 1;
}