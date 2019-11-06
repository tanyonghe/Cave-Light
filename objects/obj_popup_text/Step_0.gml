/// @description Dismiss on Enter

if (can_dismiss) {
	if (keyboard_check(vk_enter)) {
		global.playerControlsEnabled = true;
		instance_destroy();
	}
}