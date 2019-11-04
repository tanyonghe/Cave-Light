/// @description Insert description here
// You can write your code in this editor

if (!should_move) {
	return;
}

if (motion == 1) {
	
	if (dir = "y") { // up
		y -= dy;
		displacement += dy;
	} else { // left
		x -= dx;
		displacement += dx;
	}
	
	if (displacement >= maxDisplacement) {
		motion = 2;
	}
} 

else if (motion == 2) {
	
	if (displacement > 0) {
		if (dir = "y") { // down
			y += dy;
			displacement -= dy;
		} else { // right
			x += dx;
			displacement -= dx;
		}
	} else {
		if (continuous) {
			motion = 1;
		} else {
			motion = 0;
		}
	}
}