/// @description Renders Stuff
// You can write your code in this editor

draw_set_halign(fa_center);
draw_set_valign(fa_center);


draw_sprite(spr_screenshot, 0, midx, midy);
draw_sprite(spr_menu_background, 0, midx, midy);
//draw_sprite_ext(spr_backdrop,0,0,0,1,1,0,c_white,1);

draw_set_colour(c_black);
draw_set_font(fnt_pause_menu);
draw_text(498, 430, room_get_name(room));
draw_text(498, 470, string(global.continues));
draw_set_font(-1);

//draw_sprite(spr_menu_navigation1, 0, 640, 360 + 200 + 100);
if (instructions == 0) {
	//draw_sprite(spr_menu_navigation, 0, 440, 640);
	
	if (selected == 0) {
		draw_sprite(spr_menu_select, 1, 969, 265);
	}

	else if (selected == 1) {
		draw_sprite(spr_menu_select, 1, 965, 355);
	}

	else if (selected == 2) {
		draw_sprite(spr_menu_select, 1, 975, 445);
	}
} else {
	draw_sprite(spr_instructions_diagram, 0, midx, midy);
	draw_sprite(spr_menu_spacebar1, 0, midx, midy + 300);
}