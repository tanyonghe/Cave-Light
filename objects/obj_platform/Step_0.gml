/// @description Insert description here
// You can write your code in this editor

if (motion == 1) {
	y -= dy;
	displacement += dy;
	if (displacement >= 320) {
		motion = 2;
	}
} else if (motion == 2) {
	if (displacement > 0) {
		y += dy;
		displacement -= dy;
	} else {
		motion = 0;
	}
}
