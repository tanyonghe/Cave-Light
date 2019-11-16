/// @description Renders Stuff
// You can write your code in this editor

//draw_set_halign(fa_center);
//draw_set_valign(fa_center);

//draw_set_alpha(next_alpha);
//draw_set_colour(c_black);
//draw_text(640, 360 - 100, "Thank you for playing!");

draw_sprite_ext(spr_ending_text, 0, camera_get_view_width(0)/2, camera_get_view_height(0)/2 + 30, 1, 1, 0, c_white, 1);