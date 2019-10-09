/// @description Insert description here
// You can write your code in this editor

if (movement_counter < 2) {
	x = max(x - 2, min_x);
}
else if (movement_counter >= 4 and movement_counter < 6) {
	x = min(x + 2, max_x);
}

movement_counter = (movement_counter + 1/60) % 7;