/// @description Insert description here
// You can write your code in this editor
var mousex = device_mouse_x_to_gui(0); // GUI position of mouse's x coordinate
var mousey = device_mouse_y_to_gui(0); // GUI position of mouse's y coordinate
var diffX = abs(mousex-prevX);
var diffY = abs(mousey-prevY);

if (!(instructions || credits)) {
	if (diffX > 0 || diffY > 0) {
		if (point_in_rectangle(mousex, mousey, 640 - 142, 430 - 22, 640 + 142, 430 + 22)) {
		    selected = 0;
		    if (mouse_check_button_pressed(mb_left)) {
		        room_goto_next();
		        //show_message("Start Game");
		    }
		} else if (point_in_rectangle(mousex, mousey, 640 - 74, 500 - 22, 640 + 74, 500 + 22)) {
		    selected = 1;
			if (mouse_check_button_pressed(mb_left)) {
		        instructions = 1;
		    }
		} else if (point_in_rectangle(mousex, mousey, 640 - 91, 570 - 45, 640 + 91, 570 + 45)) {
		    selected = 2;
			if (mouse_check_button_pressed(mb_left)) {
		        credits = 1;
		    }
		} else if (point_in_rectangle(mousex, mousey, 640 - 54, 640 - 22, 640 + 54, 640 + 22)) {
		    selected = 3;
			if (mouse_check_button_pressed(mb_left)) {
		        game_end();
		    }
		}
	}
} else if (instructions) {
	if (mouse_check_button_pressed(mb_left)) {
		instructions = 0;
	}
} else if (credits) {
	if (mouse_check_button_pressed(mb_left)) {
		credits = 0;
	}
}

if (mouse_check_button_pressed(mb_left)) {
	if (point_in_rectangle(mousex, mousey, 640 - 142, 430 - 22, 640 + 142, 430 + 22)) {
		room_goto_next();
	} else if (point_in_rectangle(mousex, mousey, 640 - 74, 500 - 22, 640 + 74, 500 + 22)) {
		instructions = 1;
	} else if (point_in_rectangle(mousex, mousey, 640 - 91, 570 - 45, 640 + 91, 570 + 45)) {
		credits = 1;
	} else if (point_in_rectangle(mousex, mousey, 640 - 54, 640 - 22, 640 + 54, 640 + 22)) {
		game_end();
	}
}

prevX = mousex;
prevY = mousey;