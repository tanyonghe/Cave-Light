/// @description get woken up
// You can write your code in this editor

if (other.hitboxBeamType != beamTypes.normal) {
	enemy_life -= 1;
	image_blend = make_color_rgb(255, 80, 80);
	alarm[0] = 3;
} else { //wake up
	instance_destroy();
	random_move_dir = (random_range(0, 1) > 0.5) ? 1 : -1;
	with (instance_create_layer(x, y, "Instances", obj_bat_moving)) {
		should_move = false; 
		displayExclamation = true;
		move_speed = other.random_move_dir * move_speed;
		
		alarm[1] = 90
	}
}


if (enemy_life < 0) instance_destroy();