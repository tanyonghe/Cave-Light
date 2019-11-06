 /// @description Insert description here
// You can write your code in this editor

draw_set_font(fnt_lives);
draw_set_colour(c_white);
draw_text(x, y + 20, "Press 'Enter' to return to Game Menu!");
draw_text(x, y + 50, "Press 'C' to continue!");
draw_text(x, y + 80, "Number of continues used: " + string(global.continues));