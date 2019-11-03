/// @description Insert description here
// You can write your code in this editor

if (keyboard_check(ord("Q"))) {
	game_restart();
} else if (keyboard_check(ord("R"))) {
	room_restart();
}

if (keyboard_check_pressed(vk_escape)) {
	if (!pause) {
		if(!sprite_exists(screenShot)){
	        screenShot = sprite_create_from_surface(application_surface,0,0,view_wport,view_hport,0,0,0,0);    
	    }
		pause = true;
		instance_deactivate_all(true);
	} else {
		if(sprite_exists(screenShot)){
	        sprite_delete(screenShot);
	    }
		pause = false;
		instance_activate_all();
	}
}

if (!cooldown) {
	if (keyboard_check(vk_pageup) && room_exists(room_next(room))) {
		room_goto_next();
		cooldown = true;
		alarm[0] = 30;
	} else if (keyboard_check(vk_pagedown) && room_exists(room_previous(room))) {
		room_goto_previous();
		cooldown = true;
		alarm[0] = 30;
	}
	
}

if (global.game_over == true && game_over_render == false) {
	game_over_render = true;
	instance_create_layer(0, 0, "Instructions", obj_game_over);
	instance_create_layer(0, 0, "Instructions", obj_game_over_text);
}

/*
if (pause) {
	if point_in_rectangle(window_mouse_get_x(),window_mouse_get_y(),
    155 - sprite_get_width(spr_menu_resume)/2, 35 - sprite_get_height(spr_menu_resume)/2,
    155 + sprite_get_width(spr_menu_resume)/2, 35 + sprite_get_height(spr_menu_resume)/2) {
		game_restart();
	}
}
*/