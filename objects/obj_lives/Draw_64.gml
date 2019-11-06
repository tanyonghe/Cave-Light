/// @description Insert description here
// You can write your code in this editor

if global.numOfLives <= 0 {
	var spriteIndex = 2;
} else {
	var spriteIndex = 3 - global.numOfLives;
}


draw_sprite_ext(spr_lives_face, spriteIndex, 75, 75, 0.4, 0.4, 0, c_white, 1);
draw_sprite_ext(spr_lives_heart, 0, 170, 75, 0.6, 0.6, 0, c_white, 1);
draw_sprite_ext(spr_lives_number, global.numOfLives, 230, 75, 0.6, 0.6, 0, c_white, 1);