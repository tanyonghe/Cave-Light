/// @description Insert description here
// You can write your code in this editor
var mousex = device_mouse_x_to_gui(0); // GUI position of mouse's x coordinate
var mousey = device_mouse_y_to_gui(0); // GUI position of mouse's y coordinate
var diffX = abs(mousex-prevX);
var diffY = abs(mousey-prevY);

if (!(instructions)) {
	if (diffX > 0 || diffY > 0) {
		if (point_in_rectangle(mousex, mousey, 648, 230, 1008, 310)) {
		    selected = 0;
		    if (mouse_check_button_pressed(mb_left)) {
				audio_play_sound(menu_boop, 1, false);
		        instance_destroy();
		    }
		} else if (point_in_rectangle(mousex, mousey, 648, 320, 1008, 400)) {
		    selected = 1;
			if (mouse_check_button_pressed(mb_left)) {
				audio_play_sound(menu_boop, 1, false);
		        instructions = 1;
		    }
		} else if (point_in_rectangle(mousex, mousey, 648, 415, 1028, 495)) {
		    selected = 2;
			if (mouse_check_button_pressed(mb_left)) {
				audio_play_sound(menu_boop, 1, false);
		        instance_destroy();
				room_goto(Game_Screen);
		    }
		}
	}
} else if (instructions) {
	if (mouse_check_button_pressed(mb_left)) {
		instructions = 0;
	}
}

if (mouse_check_button_pressed(mb_left)) {
	if (point_in_rectangle(mousex, mousey, 648, 230, 1008, 310)) {
		audio_play_sound(menu_boop, 1, false);
		instance_destroy();
	} else if (instructions == 0 && point_in_rectangle(mousex, mousey, 648, 320, 1008, 400)) {
		audio_play_sound(menu_boop, 1, false);
		instructions = 1;
	} else if (point_in_rectangle(mousex, mousey, 648, 415, 1028, 495)) {
		audio_play_sound(menu_boop, 1, false);
		instance_destroy();
		room_goto(Game_Screen);
	}
}

prevX = mousex;
prevY = mousey;