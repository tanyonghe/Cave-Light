/// @description Door which needs multiple switches

startClosed = true; // to override initial state, put "startOpened = false; image_alpha = 0.2" in creation code
//"polarity" of door is decided here instead of in switch events for convenience

collision_map = layer_tilemap_get_id(layer_get_id("Collision_Map"));
required_switches = 2;
curr_switches = 0;
switch_array = array_create(required_switches, 0); 

fully_activated = false; // for switches to check to stay on
image_blend = make_color_rgb(249, 210, 151); //temp