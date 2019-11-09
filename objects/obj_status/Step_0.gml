/// @description Insert description here
// You can write your code in this editor

// Q disabled since we do not need it
if (keyboard_check(ord("R"))) {
	room_restart();
}

if (keyboard_check_pressed(vk_escape)) {
	if (!pause) {
		instance_create_layer(x, y, "Instructions", obj_pause_menu_controller);
		pause = true;
	} 
}

if (!instance_exists(obj_pause_menu_controller)) {
	pause = false;
}

//if (!cooldown) {
//	if (keyboard_check(vk_pageup) && room_exists(room_next(room))) {
//		room_goto_next();
//		cooldown = true;
//		alarm[0] = 30;
//	} else if (keyboard_check(vk_pagedown) && room_exists(room_previous(room))) {
//		room_goto_previous();
//		cooldown = true;
//		alarm[0] = 30;
//	}
	
//}

if (global.game_over == true && game_over_render == false) {
	game_over_render = true;
	alarm[0] = 30;
}

else if (global.game_over != true && game_over_render == true) {
	game_over_render = false;
}

// Allows panning around player object near edge of screen
if (!pause) {
	cx = following.x - (view_w/2);
	cy = following.y - (view_h/2);

	if (mouse_x - following.x > 540) {
		cx = lerp(following.x, mouse_x - 540, 0.8) - (view_w/2);
	} else if (mouse_x - following.x < -540) {
		cx = lerp(following.x, mouse_x + 540, 0.8) - (view_w/2);
	}
	if (mouse_y - following.y > 320) {
		cy = lerp(following.y, mouse_y - 320, 0.7) - (view_h/2);
	} else if (mouse_y - following.y < -320) {
		cy = lerp(following.y, mouse_y + 320, 0.7) - (view_h/2);
	}
	camera_set_view_pos(view_camera[0], cx, cy);
}

// toggle fullscreen
var altEnter = false;

if (keyboard_check(vk_alt))
{
    if (keyboard_check_pressed(vk_enter))
    {
        altEnter = true;
        show_debug_message("altEnter: " + string(altEnter));
    }
}

var f4 = (keyboard_check_pressed(vk_f4));

if (f4 || altEnter)
{
    window_set_fullscreen(!window_get_fullscreen());
} 