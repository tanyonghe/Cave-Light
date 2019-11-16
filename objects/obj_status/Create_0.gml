/// @description Insert description here
// You can write your code in this editor

pause = false;
game_over_render = false;
cooldown = false;

if (!audio_is_playing(snd_test)) {
	audio_play_sound(snd_test, 10, true);
}