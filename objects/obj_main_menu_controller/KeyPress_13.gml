/// @description Select Option
// You can write your code in this editor

if (selected == 0) {
	audio_play_sound(menu_boop, 1, false);
	room_goto_next();
}

else if (instructions == 0 && selected == 1) {
	audio_play_sound(menu_boop, 1, false);
	instructions = 1;
}

else if (credits == 0 && selected == 2) {
	audio_play_sound(menu_boop, 1, false);
	credits = 1;
}

else if (selected == 3) {
	audio_play_sound(menu_boop, 1, false);
	game_end();
}