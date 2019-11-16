/// @description Clean Up
// You can write your code in this editor

if (file_exists("pause_screenshot.png")) {
	file_delete("pause_screenshot.png");
}

if (sprite_exists(spr_screenshot)) {
	sprite_delete(spr_screenshot);
}
audio_play_sound(menu_boop, 1, false);
instance_activate_all();