///@description create popup

if (obj_moving_wall.move == false) {
	obj_moving_wall.move = true;
} else {
	obj_moving_wall.move_speed *= 2;
	obj_moving_wall.x = x - (32 * 8);
}

instance_destroy();