/// @description if triggered show img/text
// You can write your code in this editor

if (triggered) {
	// y is from bottom edge of obj
	if (drawTextInstruction) {
		draw_text(x, y-90, textString)
	} else {	
		draw_sprite_ext(instructionSprite, inst_image_index, x, y - 120, inst_xscale, inst_yscale, 0, c_white, 1); 
	
		if (alarm[0] = -1) {
			alarm[0] = room_speed/inst_image_speed;
		}
	}
}