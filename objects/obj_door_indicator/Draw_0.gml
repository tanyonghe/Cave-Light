/// @description Insert description here
// You can write your code in this editor
draw_self();
if (image_index == 0) {
	draw_sprite_ext(spr_light_glow, 0, x, y, 0.8, 0.6, 0, c_white, 0.7);
} else {
	draw_sprite_ext(spr_light_glow, 1, x, y, 0.8, 0.6, 0, c_white, 0.7);
}