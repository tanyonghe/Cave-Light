/// @description Insert description here
// You can write your code in this editor

if (keyboard_check(ord("W"))) {
	show_debug_message("ALL GUNS BLAZING: Player found a gun!");
	global.hasGun = true;
	alarm[0] = 30;
}