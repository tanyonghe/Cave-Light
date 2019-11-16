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

if (global.game_over && !game_over_render ) {
	game_over_render = true;
	alarm[0] = 30;
} else if (!global.game_over) {
	game_over_render = false;
}

// Allows panning around player object near edge of screen
if (!pause) {
	following = obj_player;
	view_w = camera_get_view_width(view_camera[0]);
	view_h = camera_get_view_height(view_camera[0]);
	
	cx = following.x - (view_w/2);
	cy = following.y - (view_h/2);
	threshold_w = view_w * 0.38//0.35;
	threshold_h = view_h * 0.35//0.3;
	
	//var maxDist = sqrt(power(view_h/2, 2) + power(view_w/2, 2));
	//var mouseX_Windowspace = window_view_mouse_get_x(0);
	//var mouseY_Windowspace = window_view_mouse_get_y(0);
	//show_debug_message("mouse X: " + string(mouseX_Windowspace) + ", mouse Y: " + string(mouseY_Windowspace));
	//show_debug_message("view_h/2: " +string(view_h/2) + ", view_w/2: " + string(view_w/2));
	//var dist = point_distance(mouseX_Windowspace , mouseY_Windowspace, view_w/2, view_h/2);
	//var effect = point_distance(mouseX_Windowspace , mouseY_Windowspace, view_w/2, view_h/2) / maxDist;
	//var clamped = clamp(0.4 * effect, 0, 0.6);
	//show_debug_message("DIST: " + string(dist) + ", EFFECT: "+ string(effect) + " | CLAMPED: " + string(clamped));
	
	if (mouse_x - following.x > threshold_w) {
		weight = min(0.7, (mouse_x - following.x) / (view_w * 1.2));
		cx = lerp(following.x, mouse_x - threshold_w, weight) - (view_w/2);
	} else if (mouse_x - following.x < -threshold_w) {
		weight = min(0.7, (following.x - mouse_x) / (view_w * 1.2));
		cx = lerp(following.x, mouse_x + threshold_w, weight) - (view_w/2);
	}
	
	if (mouse_y - following.y > threshold_h) {
		weight = min(0.7, (mouse_y - following.y) / (view_h * 1.35));
		cy = lerp(following.y, mouse_y - threshold_h, weight) - (view_h/2);
	} else if (mouse_y - following.y < -threshold_h) {
		weight = min(0.7, (following.y - mouse_y) / (view_h * 1.35));
		cy = lerp(following.y, mouse_y + threshold_h, weight) - (view_h/2);
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