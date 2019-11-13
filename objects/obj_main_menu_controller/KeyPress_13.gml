/// @description Select Option
// You can write your code in this editor

if (selected == 0) {
	room_goto_next();
}

else if (selected == 1) {
	instructions = 1;
}

else if (selected == 2) {
	credits = 1;
}

else if (selected == 3) {
	game_end();
}