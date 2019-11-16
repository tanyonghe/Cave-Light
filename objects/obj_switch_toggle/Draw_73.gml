/// @description Insert description here
// You can write your code in this editor
draw_self();
if (image_index == 0) {
	draw_sprite_ext(spr_light_glow, 0, x+8, y-22, 0.8, 0.8, 0, c_white, 0.8);
	draw_sprite(spr_light_glow, 1, x-7, y-22);
} else {
	draw_sprite_ext(spr_light_glow, 0, x-8, y-22, 0.8, 0.8, 0, c_white, 0.8);
	draw_sprite(spr_light_glow, 1, x+9, y-22);
}