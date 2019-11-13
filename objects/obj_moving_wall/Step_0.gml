 /// @description Insert description here
// You can write your code in this editor

if (move) {
	if (move_counter == 0) {
		x += move_speed;
	}
	move_counter = (move_counter + 1) %  (30);
}