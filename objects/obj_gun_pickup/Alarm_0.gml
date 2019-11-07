/// @description Display player thoughts

with (instance_create_layer(x, y, "Instances", obj_popup_text)) {
	textString = global.string_gunPickedUp;
}
instance_destroy();