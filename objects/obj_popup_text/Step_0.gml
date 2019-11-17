/// @description Dismiss on W

if (can_dismiss) {
	if (keyboard_check(ord("W"))) {
		global.playerControlsEnabled = true;
		instance_destroy();
	}
}