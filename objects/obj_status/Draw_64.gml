/// @description Insert description here
// You can write your code in this editor

/*
if (pause) {
	draw_set_colour(c_black);
	draw_set_alpha(0.6);
	draw_rectangle(view_xport[0], view_yport[0], view_wport[0], view_hport[0]+150, 0);
	draw_set_font(fnt_instructions);
	draw_set_color(c_white);
	draw_set_alpha(1);
	draw_text((view_wport[0]-96)/2, (view_hport[0]-96)/2, "Paused");
}
*/

if (pause) {
	var cx = camera_get_view_x(view_camera[0]) + view_wport[0]/2;
	var cy = camera_get_view_y(view_camera[0]) + view_hport[0]/2;
	
	//instance_create_layer(cx, cy, "Instructions", obj_menu_background);
	instance_create_layer(cx, cy - 200, "Instructions", obj_menu_resume);
	instance_create_layer(cx, cy, "Instructions", obj_menu_instructions);
	instance_create_layer(cx, cy + 200, "Instructions", obj_menu_quit);
	instance_create_layer(cx, cy, "Instructions", obj_menu_background);
} 

else {
	instance_destroy(obj_menu_background);
	instance_destroy(obj_menu_resume);
	instance_destroy(obj_menu_instructions);
	instance_destroy(obj_menu_quit);
}