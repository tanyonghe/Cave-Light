/// @description Display player thoughts

with (instance_create_layer(x, y, "Instances", obj_popup_text)) {
	textString = string_gunPickedUp;
}
alarm[1] = 120;