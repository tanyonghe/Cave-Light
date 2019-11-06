/// @description Renders Stuff
// You can write your code in this editor

draw_set_halign(fa_center);
draw_set_valign(fa_center);

if (!(select_level || instructions || credits)) {
	draw_sprite(spr_menu_navigation, 0, 420, 730);
	
	if (selected == 0) {
		draw_sprite(spr_start_game, 1, 640, 360 + 10);
		draw_sprite(spr_select_level, 0, 640, 360 + 80);
		draw_sprite(spr_instructions, 0, 640, 360 + 150);
		draw_sprite(spr_credits, 0, 640, 360 + 220);
		draw_sprite(spr_quit, 0, 640, 360 + 290);
	}

	else if (selected == 1) {
		draw_sprite(spr_start_game, 0, 640, 360 + 10);
		draw_sprite(spr_select_level, 1, 640, 360 + 80);
		draw_sprite(spr_instructions, 0, 640, 360 + 150);
		draw_sprite(spr_credits, 0, 640, 360 + 220);
		draw_sprite(spr_quit, 0, 640, 360 + 290);
	}

	else if (selected == 2) {
		draw_sprite(spr_start_game, 0, 640, 360 + 10);
		draw_sprite(spr_select_level, 0, 640, 360 + 80);
		draw_sprite(spr_instructions, 1, 640, 360 + 150);
		draw_sprite(spr_credits, 0, 640, 360 + 220);
		draw_sprite(spr_quit, 0, 640, 360 + 290);
	}
	
	else if (selected == 3) {
		draw_sprite(spr_start_game, 0, 640, 360 + 10);
		draw_sprite(spr_select_level, 0, 640, 360 + 80);
		draw_sprite(spr_instructions, 0, 640, 360 + 150);
		draw_sprite(spr_credits, 1, 640, 360 + 220);
		draw_sprite(spr_quit, 0, 640, 360 + 290);
	}
	
	else if (selected == 4) {
		draw_sprite(spr_start_game, 0, 640, 360 + 10);
		draw_sprite(spr_select_level, 0, 640, 360 + 80);
		draw_sprite(spr_instructions, 0, 640, 360 + 150);
		draw_sprite(spr_credits, 0, 640, 360 + 220);
		draw_sprite(spr_quit, 1, 640, 360 + 290);
	}
} 

else if (select_level == 1) {
	draw_sprite(spr_menu_background, 0, 640, 360);
	//draw_sprite(spr_instructions, 0, 640, 360);
	draw_sprite(spr_menu_spacebar, 0, 640, 360 + 300);
}

else if (instructions == 1) {
	draw_sprite(spr_menu_background, 0, 640, 360);
	draw_sprite(spr_instructions_diagram, 0, 640, 360);
	draw_sprite(spr_menu_spacebar, 0, 640, 360 + 300);
} 

else if (credits == 1) {
	draw_sprite(spr_menu_background, 0, 640, 360);
	draw_sprite(spr_credits_names, 0, 640, 360);
	draw_sprite(spr_menu_spacebar, 0, 640, 360 + 300);
}