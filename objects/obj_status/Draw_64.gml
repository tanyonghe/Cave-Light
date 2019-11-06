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
/* AHHHH
if (pause) {
	var cx = camera_get_view_x(view_camera[0]) + view_wport[0]/2;
	var cy = camera_get_view_y(view_camera[0]) + view_hport[0]/2;
	
	//var wx = view_wport[0]/2;
	//var wy = view_hport[0]/2;
	
	//PauseBack=sprite_create_from_surface(application_surface,0,0,surface_get_width(application_surface),surface_get_height(application_surface),0,1,0,0);
	//draw_sprite_ext(PauseBack,0,view_xview,view_yview,PauseBack,PauseBack,0,c_white,1);
	draw_set_halign(fa_center);
	draw_set_valign(fa_center);

    draw_sprite_ext(screenShot,0,0,0,1,1,0,c_white,1);
	//draw_sprite(spr_menu_background,0,wx,wy);
	//draw_sprite(spr_menu_resume,0,cx,cy-100);
	//draw_sprite(spr_menu_instructions,0,cx,cy);
	//draw_sprite(spr_menu_quit,0,cx,cy+100);

	instance_create_layer(cx, cy - 200, "Instructions", obj_menu_resume);
	//instance_create_layer(cx, cy, "Instructions", obj_menu_instructions);
	//instance_create_layer(cx, cy + 200, "Instructions", obj_menu_quit);
	//instance_create_layer(cx, cy, "Instructions", obj_menu_background);
	
} 

else {
	instance_destroy(obj_menu_background);
	instance_destroy(obj_menu_resume);
	instance_destroy(obj_menu_instructions);
	instance_destroy(obj_menu_quit);
}
*/