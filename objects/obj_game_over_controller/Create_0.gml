/// @description

//x = window_get_width()/2;
//y = window_get_height()/2 - 50;

/// @description Initialization
// You can write your code in this editor

//("pause_screenshot.png");
//spr_screenshot = sprite_add("pause_screenshot.png", 0, false, true, 640, 360);
spr_gameover_screenshot = sprite_create_from_surface(application_surface, 0, 0, surface_get_width(application_surface), surface_get_height(application_surface), 0, 1, 640, 360);

midx = 640;
midy = 384;
left = midx - 250
right = midx + 250
top = midy  + 220
bottom = midy + 320

canAdvance = false;
alarm[0] = 30;

audio_play_sound(snd_game_over, 1, false);
instance_deactivate_all(true);