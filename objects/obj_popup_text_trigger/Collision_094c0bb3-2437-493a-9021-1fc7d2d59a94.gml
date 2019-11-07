///@description create popup

with (instance_create_layer(x, y, "Instances", obj_popup_text)) {
	textString = other.textString;
}

instance_destroy();