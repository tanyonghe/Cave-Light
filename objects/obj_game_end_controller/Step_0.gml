/// @description Insert description here
// You can write your code in this editor

if (curr_alpha < 1) {
	curr_alpha = min(curr_alpha + 0.001, 1);
}

if (next_alpha < 1) {
	next_alpha = min(next_alpha + 0.01, 1);
}

var lay_id = layer_get_id("Background");
var back_id = layer_background_get_id(lay_id);
layer_background_alpha(back_id, curr_alpha);