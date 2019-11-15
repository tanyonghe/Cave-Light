/// @description Initialization
// You can write your code in this editor

//("pause_screenshot.png");
//spr_screenshot = sprite_add("pause_screenshot.png", 0, false, true, 640, 360);
spr_screenshot = sprite_create_from_surface(application_surface, 0, 0, surface_get_width(application_surface), surface_get_height(application_surface), 0, 1, 640, 360);

midx = 640;
midy = 360;

selected = 0;
numOfOptions = 3;
instructions = 0;

instance_deactivate_all(true);