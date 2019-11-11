/// @description Melt into water

with (instance_create_layer(x, y, "Instances", obj_water)) {
	image_xscale = other.image_xscale;
	image_yscale = other.image_yscale;
}
// make it non solid
set_tilemap_within_bbox(layer_tilemap_get_id(layer_get_id("Collision_Map")), 0);
	
// change tiles to water
water_tilemap = layer_tilemap_get_id(layer_get_id("Background_Map_Misc"));
set_tilemap_within_area(water_tilemap, 1, bbox_left, bbox_top, bbox_right, bbox_top + 31);
set_tilemap_within_area(water_tilemap, 17, bbox_left, bbox_top + 32, bbox_right, min(bbox_top + 63, bbox_bottom));
set_tilemap_within_area(water_tilemap, 33, bbox_left, bbox_top + 64, bbox_right, bbox_bottom);
	
instance_destroy();
