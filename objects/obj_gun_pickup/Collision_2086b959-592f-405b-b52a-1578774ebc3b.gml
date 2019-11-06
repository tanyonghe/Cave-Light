/// @description Get gun, show popup and info icon
// You can write your code in this editor

if (!triggered && keyboard_check(ord("W"))) {
	triggered = true;
	show_debug_message("ALL GUNS BLAZING: Player found a gun!");
	global.hasGun = true;
	alarm[0] = 10;
	
	instance_create_layer(3072, 688, "Instances", obj_checkpoint);
	
	info_icon_shoot.image_alpha = 0.8;
	with(instance_create_layer(1360, 1024, "Instances", obj_instructions_trigger)) {
		instructionSprite = spr_instruction_shoot;
		inst_image_num = sprite_get_number(instructionSprite);
		image_xscale = 0.5;
		image_yscale = 0.625;
	}
}