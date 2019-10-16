/// @description Insert description here
// You can write your code in this editor

enemy_life -= 1;

with (other) instance_destroy();

if (enemy_life < 0) instance_destroy();