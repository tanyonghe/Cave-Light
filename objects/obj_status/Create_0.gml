/// @description Insert description here
// You can write your code in this editor

pause = false;
game_over_render = false;
cooldown = false;

if (room == Level_1_1 || room == Level_1_2_a || room == Level_1_2_b || room == Level_1_3) {
	if (!audio_is_playing(lvl1)) {
		audio_play_sound(lvl1, 10, true);
	}
}

if (room == Level_2_1 || room == Level_2_2 || room == Level_2_3) {
	if (audio_is_playing(lvl1)) {
		audio_stop_sound(lvl1);
	}
	if (!audio_is_playing(lvl2)) {
		audio_play_sound(lvl2, 10, true);
	}
}

if (room == Level_3_1 || room == Level_3_2 || room == Level_3_3) {
	if (audio_is_playing(lvl2)) {
		audio_stop_sound(lvl2);
	}
	if (!audio_is_playing(lvl3)) {
		audio_play_sound(lvl3, 10, true);
	}
}

if (room == Level_4_1 || room == Level_4_2) {
	if (audio_is_playing(lvl3)) {
		audio_stop_sound(lvl3);
	}
	if (!audio_is_playing(lvl4)) {
		audio_play_sound(lvl4, 10, true);
	}
}
