/// @description Insert description here
// You can write your code in this editor

if (keyboard_check(ord("Q"))) {
	game_restart();
} else if (keyboard_check(ord("R"))) {
	room_restart();
}

if (keyboard_check_pressed(vk_escape)) {
	if (!pause) {
		pause = true;
		instance_deactivate_all(true);
	} else {
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