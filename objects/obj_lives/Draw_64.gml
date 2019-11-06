/// @description Insert description here
// You can write your code in this editor
draw_sprite_ext(spr_lives_face, 3 - global.numOfLives, 75, 75, 0.4, 0.4, 0, c_white, 1);
draw_sprite_ext(spr_lives_heart, 0, 170, 75, 0.6, 0.6, 0, c_white, 1);
draw_sprite_ext(spr_lives_number, global.numOfLives, 230, 75, 0.6, 0.6, 0, c_white, 1);

draw_text(0, 120, string(fps));