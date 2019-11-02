/// @description Door which needs multiple switches

opened = false; // to override initial state, put "opened = true; image_alpha = 0.2" in creation code
collision_map = layer_tilemap_get_id(layer_get_id("Collision_Map"));
required_switches = 2;
curr_switches = 0;

image_blend = make_color_rgb(249, 210, 151); //temp