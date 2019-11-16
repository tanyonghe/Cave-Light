/// @description play bgm
// You can write your code in this editor
if (!audio_is_playing(audio)) {
	audio_play_sound(audio, 1, true);
}