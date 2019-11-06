/// @description Insert description here
// You can write your code in this editor

if (!should_move) {
	exit;
}

if (!opened) { // should move & !opened => open
	if (displacement < maxDisplacement) {
		if (dir = "y") { // up
			y -= dy;
			displacement += dy;
		} else { // left
			x -= dx;
			displacement += dx;
		}
	} else {
		should_move = false;
		opened = true;
	}
} else { // should move & open => close
	if (displacement > 0) {
		if (dir = "y") { // down
			y += dy;
			displacement -= dy;
		} else { // right
			x += dx;
			displacement -= dx;
		}
	} else {
		should_move = false;
		opened = false;
	}
}