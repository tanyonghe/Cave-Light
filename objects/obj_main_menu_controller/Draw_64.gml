/// @description Renders Stuff
// You can write your code in this editor

draw_set_halign(fa_center);
draw_set_valign(fa_center);

var lay_id = layer_get_id("Background");
var back_id = layer_background_get_id(lay_id);

if (global.completedGame == true) {
	layer_background_sprite(back_id, spr_game_background_end);
}

draw_sprite(spr_game_title, 0, 640, 360 - 100);



if (!(instructions || credits)) {
	//draw_sprite(spr_menu_navigation, 0, 640, 730);
	
	if (selected == 0) {
		draw_sprite(spr_start_game, 1, 640, 360 + 70);
		draw_sprite(spr_instructions, 0, 640, 360 + 140);
		draw_sprite(spr_credits, 0, 640, 360 + 210);
		draw_sprite(spr_quit, 0, 640, 360 + 280);
		//draw_sprite(spr_menu_navigation1, 0, 640, 360 + 380);
	}

	else if (selected == 1) {
		draw_sprite(spr_start_game, 0, 640, 360 + 70);
		draw_sprite(spr_instructions, 1, 640, 360 + 140);
		draw_sprite(spr_credits, 0, 640, 360 + 210);
		draw_sprite(spr_quit, 0, 640, 360 + 280);
		//draw_sprite(spr_menu_navigation1, 0, 640, 360 + 380);
	}

	else if (selected == 2) {
		draw_sprite(spr_start_game, 0, 640, 360 + 70);
		draw_sprite(spr_instructions, 0, 640, 360 + 140);
		draw_sprite(spr_credits, 1, 640, 360 + 210);
		draw_sprite(spr_quit, 0, 640, 360 + 280);
		//draw_sprite(spr_menu_navigation1, 0, 640, 360 + 380);
	}
	
	else if (selected == 3) {
		draw_sprite(spr_start_game, 0, 640, 360 + 70);
		draw_sprite(spr_instructions, 0, 640, 360 + 140);
		draw_sprite(spr_credits, 0, 640, 360 + 210);
		draw_sprite(spr_quit, 1, 640, 360 + 280);
		//draw_sprite(spr_menu_navigation1, 0, 640, 360 + 380);
	}
} 

else if (instructions == 1) {
	//draw_sprite(spr_menu_background, 0, 640, 360);
	draw_sprite(spr_instructions_diagram, 0, 640, 360);
	//draw_sprite(spr_menu_spacebar1, 0, 640, 360 + 200 + 100);
} 

else if (credits == 1) {
	//draw_sprite(spr_menu_background, 0, 640, 360);
	draw_sprite(spr_credits_names, 0, 640, 460);
	//draw_sprite(spr_menu_spacebar1, 0, 640, 360 + 200 + 100);
}