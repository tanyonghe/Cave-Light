/// @description Insert description here
// You can write your code in this editor
draw_self();
if (!activated) {
	draw_sprite(spr_light_glow, 0, x-1, y-22);
} else {
	draw_sprite(spr_light_glow, 1, x-1, y-22);
}