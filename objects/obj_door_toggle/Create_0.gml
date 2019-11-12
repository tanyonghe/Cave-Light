/// @description Accommodates double toggle switches linked to this
// so instead of set events, it reacts based on its own state

opened = false; // to override initial state, put "opened = true; image_alpha = 0.2" in creation code
collision_map = layer_tilemap_get_id(layer_get_id("Collision_Map"));