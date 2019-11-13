/// @description Draw laser and self

if (mouse_check_button(mb_left) && global.hasGun && global.playerControlsEnabled) {
	//show_debug_message(dir);
	xx = x + gunOffsetX * facing;
	yy = y + gunOffsetY;
	//show_debug_message("create_laser(normal, " + string(reflects) + " reflects)");
	create_laser(beamTypes.normal, laser_width, reflects, 1);
}

if (invuln) {
	draw_text(x, y - 64, "invuln | " + string(fps));
}

image_xscale = facing;
if (keyboard_check(ord("D")) && global.playerControlsEnabled) {
	if (facing == -1) {
		image_speed = -1;
	}
	facing = 1;
	if (!in_air) {
		sprite_index = global.hasGun ? spr_player_run_gun : spr_player_run;
	} else {
		sprite_index = global.hasGun ? spr_player_jump_gun : spr_player_jump;
		if (v_speed > 0) {
			image_index = 1;
		} else {
			image_index = 2;
		}
	}
} else if (keyboard_check(ord("A")) && global.playerControlsEnabled) {
	if (facing == 1) {
		image_speed = -1;
	}
	facing = -1;
	if (!in_air) {
		sprite_index = global.hasGun ? spr_player_run_gun : spr_player_run;
	} else {
		sprite_index = global.hasGun ? spr_player_jump_gun : spr_player_jump;
		if (v_speed > 0) {
			image_index = 1;
		} else {
			image_index = 2;
		}
	}
}

draw_self();

