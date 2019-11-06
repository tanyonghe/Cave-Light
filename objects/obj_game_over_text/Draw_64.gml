 /// @description Insert description here
// You can write your code in this editor

draw_set_halign(fa_center);
draw_set_font(fnt_lives);
draw_set_colour(c_white);

draw_text(drawX, drawY + 20, "Press 'Enter' to return to Game Menu!");
draw_text(drawX, drawY + 50, "Press 'C' to continue!");
draw_text(drawX, drawY + 80, "Number of continues used: " + string(global.continues));
