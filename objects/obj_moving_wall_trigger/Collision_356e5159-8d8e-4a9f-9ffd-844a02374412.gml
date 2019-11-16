///@description create popup

if (instance_exists(obj_moving_wall)) {
	if (obj_moving_wall.move == false) {
		obj_moving_wall.move = true;
	} else {
		obj_moving_wall.move_speed *= move_multiplier;
		obj_moving_wall.x = x - (32 * 19);
	}
} else {
	instance_create_layer(-448, 1320, "Instances", obj_moving_wall);
}

instance_destroy();