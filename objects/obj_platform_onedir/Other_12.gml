/// @description Normal (on: up/left)
if (should_move) {
	
	if (displacement < maxDisplacement) { // not yet at max
		if (dir = "y") { // up
			y -= dy;
			displacement += dy;
		} else { // left
			x -= dx;
			displacement += dx;
		}
	}
} 

else {

	if (displacement > 0) { // not yet at min
		if (dir = "y") { // down
			y += dy;
			displacement -= dy;
		} else { // right
			x += dx;
			displacement -= dx;
		}
	}

}