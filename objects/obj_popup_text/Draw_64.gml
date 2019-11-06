/// @description Draw text box

//cx = camera_get_view_x(view_camera[0]);
//cy = camera_get_view_y(view_camera[0]);
cx = 0
cy = 0

midx = cx + view_wport[0]/2
midy = cy + view_hport[0]/2
left = midx - 250
right = midx + 250
top = midy  + 150
bottom = midy + 270

rectMidY = (top + bottom)/2;

//show_debug_message("draw at " + string(left) +", "+ string(right) +", "+ string(top) +", "+ string(bottom))
draw_rectangle_colour(left-5, top-5, right+5, bottom+5, c_white, c_white, c_white, c_white, false);
draw_rectangle_colour(left, top, right, bottom, c_black, c_black, c_black, c_black, false);

draw_set_halign(fa_center);
draw_set_valign(fa_middle);
draw_text(midx, rectMidY, textString);

if (can_dismiss) {
	draw_text_transformed(midx + 165, rectMidY + 40, "\"Enter\" to dismiss", 0.85, 0.85, 0);
}