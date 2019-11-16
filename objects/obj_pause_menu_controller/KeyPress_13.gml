/// @description Select Option
// You can write your code in this editor

if (selected == 0) {
	audio_play_sound(menu_boop, 1, false);
	instance_destroy();
}

else if (selected == 1) {
	audio_play_sound(menu_boop, 1, false);
	instructions = 1;
}

else if (selected == 2) {
	audio_play_sound(menu_boop, 1, false);
	instance_destroy();
	room_goto(Game_Screen);
}