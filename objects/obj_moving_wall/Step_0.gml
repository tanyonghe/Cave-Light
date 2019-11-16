 /// @description Insert description here
// You can write your code in this editor

if (move) {
	if (audio_is_playing(lvl3)) {
		audio_stop_sound(lvl3);
	}
	if (!audio_is_playing(lvl4)) {
		audio_play_sound(lvl4, 10, true);
	}
	
	if (move_counter == 0) {
		x += move_speed;
	}
	move_counter = (move_counter + 1) %  (30);
}