/// @description Get gun, show popup and info icon
// You can write your code in this editor

if (keyboard_check(ord("W"))) {
	show_debug_message("ALL GUNS BLAZING: Player found a gun!");
	global.hasGun = true;
	alarm[0] = 30;
	instance_create_layer(3072, 688, "Instances", obj_checkpoint);
	with(instance_create_layer(2720, 896, "Instances", obj_instructions_trigger)) {
		instructionSprite = spr_instruction_shoot;
		inst_image_num = sprite_get_number(instructionSprite);
		image_xscale = 0.25;
		image_yscale = 0.625;
	}	

}