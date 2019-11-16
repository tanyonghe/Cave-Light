/// @description Insert description here
// You can write your code in this editor
draw_self();
if (image_index == 0) {
	draw_sprite(spr_light_glow, 1, x-8, y-22);
} else {
	draw_sprite(spr_light_glow, 1, x+8, y-22);
}