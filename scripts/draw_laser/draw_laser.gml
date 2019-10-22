/// @description draw_laser(x1,x2,y1,y2,w,type)
/// @param x1
/// @param x2
/// @param y1
/// @param y2
/// @param w
/// @param type
//draws a laser (line) between two coords

enum beamTypes {
	normal,
	frost,
	surge,
	amplified,
	amplifiedFrost,
	amplifiedSurge
}

x1 = argument0
y1 = argument1
x2 = argument2
y2 = argument3
ww = argument4
type = argument5

colour_normalbeam = make_colour_rgb(255, 237, 114);
colour_frost = c_aqua;
colour_surge = make_colour_rgb(128, 110, 245);

switch(type) {
	case beamTypes.normal:
		draw_set_color(colour_normalbeam);
		break;
	case beamTypes.frost:
		draw_set_color(colour_frost);
		break;
	case beamTypes.surge:
		draw_set_color(colour_surge);
		break;
	case beamTypes.amplified:
	case beamTypes.amplifiedFrost:
	case beamTypes.amplifiedSurge:
		draw_set_color(c_orange); //TODO
		break;
}

//TODO can vary the lines for diff beamtypes to improve appearance
gpu_set_blendmode(bm_normal);
draw_set_alpha(0.2);
draw_line_width(x1,y1,x2,y2,ww*2);
draw_line_width(x1,y1,x2,y2,ww*1.75);
draw_line_width(x1,y1,x2,y2,ww*1.5);
draw_set_alpha(1);
draw_line_width(x1,y1,x2,y2,ww);
draw_set_alpha(0.2);
draw_set_color(c_white);
draw_line_width(x1,y1,x2,y2,ww*0.5);
draw_set_alpha(0.5);
draw_line_width(x1,y1,x2,y2,ww*0.3);
draw_set_alpha(1);

//show_debug_message("DRAW_LINE_WIDTH(" + string(x1) + "," + string(y1) + "," + string(x2) + "," + string(y2) + "," + string(ww) + ")")
