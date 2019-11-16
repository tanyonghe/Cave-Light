/// @description Select Option
// You can write your code in this editor

if (selected == 0) {
	instance_destroy();
}

else if (selected == 1) {
	instructions = 1;
}

else if (selected == 2) {
	instance_destroy();
	room_goto(Game_Screen);
}