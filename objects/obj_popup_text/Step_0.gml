/// @description Dismiss on Enter

if (can_dismiss) {
	if (keyboard_check(vk_space)) {
		global.playerControlsEnabled = true;
		instance_destroy();
	}
}