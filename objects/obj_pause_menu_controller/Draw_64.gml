/// @description Renders Stuff
// You can write your code in this editor

draw_set_halign(fa_center);
draw_set_valign(fa_center);


draw_sprite(spr_screenshot, 0, 640, 360);
draw_sprite(spr_menu_background, 0, 640, 360);
//draw_sprite_ext(spr_backdrop,0,0,0,1,1,0,c_white,1);

draw_set_colour(c_black);
draw_set_font(fnt_pause_menu);
draw_text(540, 412, room_get_name(room));
draw_text(540, 445, string(global.continues));

//draw_sprite(spr_menu_navigation1, 0, 640, 360 + 200 + 100);
if (instructions == 0) {
	//draw_sprite(spr_menu_navigation, 0, 440, 640);
	
	if (selected == 0) {
		draw_sprite(spr_menu_select, 1, 860, 360 - 110);
		//draw_sprite(spr_resume, 1, 640, 360 - 100);
		//draw_sprite(spr_instructions, 0, 640, 360);
		//draw_sprite(spr_quit, 0, 640, 360 + 100);
	}

	else if (selected == 1) {
		draw_sprite(spr_menu_select, 1, 860, 360 - 40);
		//draw_sprite(spr_resume, 0, 640, 360 - 100);
		//draw_sprite(spr_instructions, 1, 640, 360);
		//draw_sprite(spr_quit, 0, 640, 360 + 100);
	}

	else if (selected == 2) {
		draw_sprite(spr_menu_select, 1, 870, 360 + 30);
		//draw_sprite(spr_resume, 0, 640, 360 - 100);
		//draw_sprite(spr_instructions, 0, 640, 360);
		//draw_sprite(spr_quit, 1, 640, 360 + 100);
	}
} else {
	draw_sprite(spr_instructions_diagram, 0, 640, 360);
	draw_sprite(spr_menu_spacebar1, 0, 640, 360 + 200 + 100);
}