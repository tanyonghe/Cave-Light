/// @description Insert description here
// You can write your code in this editor

/// @description Insert description here
// You can write your code in this editor

inst = instance_nearest(x, y, obj_laser_hit)

if (inst.hitboxBeamType == 1) {
	//instance_change(obj_ice, 1);
	with (instance_create_layer(x, y, "Invisible_Instances", obj_mirror)) {
		image_xscale = other.image_xscale;
		image_yscale = other.image_yscale;
	}
	// make it solid
	set_tilemap_within_bbox(layer_tilemap_get_id(layer_get_id("Collision_Map")), 1);
	
	// change tiles to ice
	water_tilemap = layer_tilemap_get_id(layer_get_id("Background_Map_Misc"));
	set_tilemap_within_area(water_tilemap, 34, bbox_left, bbox_top, bbox_right, bbox_top + 32);
	set_tilemap_within_area(water_tilemap, 35, bbox_left, bbox_top + 33, bbox_right, bbox_top + 64);
	set_tilemap_within_area(water_tilemap, 36, bbox_left, bbox_top + 65, bbox_right, bbox_bottom);
	
	instance_destroy();
	
}