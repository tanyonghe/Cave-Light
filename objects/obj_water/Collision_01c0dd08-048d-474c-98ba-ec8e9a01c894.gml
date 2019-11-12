/// @description

//inst = instance_nearest(x, y, obj_laser_hit)
//var instcoord = "(" + string(inst.x) + ", " + string(inst.y) + ")";
//show_debug_message("~~~~ laser ("+ string(inst.id) + ")" + instcoord + "touching water, type " + string(inst.hitboxBeamType)); //but not this???
//show_debug_message("~~~~ laser ("+ string(inst.id) + ")" + instcoord + " has property " + string(inst.property)); //this is saved
//show_debug_message("~~~~ laser ("+ string(inst.id) + ")" + instcoord + " has property2 " + string(inst.property2));

//IMPORTANT: multiple hitboxes can be touching simultaneously,
//so we need to check if any of them is frost/surge

var hasFrost = false;
var hasSurge = false;

with (obj_laser_hit) {
	if instance_place(x, y, other) {
		show_debug_message(">~>~> laser (" + string(id) + ") (" + string(x) + "," + string(y) + ") touching water, type " + string(hitboxBeamType));
		if hitboxBeamType == beamTypes.frost {
			hasFrost = true;
			break;
		} else if hitboxBeamType == beamTypes.surge {
			hasSurge = true;
			break;
		}
	}
}


//if (inst.hitboxBeamType == beamTypes.frost) {
if hasSurge {
	//if (position_meeting(x, y, obj_electrified_water)) { // prevent creating multiple instances
	//	return;
	//}
	
	with (instance_create_layer(x, y, "Invisible_Instances", obj_electrified_water)) {
		//create three overlapping mirrors to avoid the non reflection bug
		
		image_xscale = other.image_xscale;
		image_yscale = other.image_yscale;
		image_alpha = 0.3;
	}

} else if hasFrost {
	//instance_change(obj_ice, 1);
	
	///// ====== THREE ICE BLOCKS =====
	//var x_origin_interval = sprite_width/4;
	//var ice_xscale = image_xscale / 2;
	//var ice_yscale = image_yscale;
	
	////points = origin, origin - 1/4, origin + 1/4
	//for (var i = -1; i <= 1; i++) {
	//	// create three half-sized blocks at x-interval, x, x+interval
	//	with (instance_create_layer(x + i * x_origin_interval, y, "Invisible_Instances", obj_mirror)) {
	//		image_xscale = ice_xscale;
	//		image_yscale = ice_yscale;
	//		image_alpha = 0.5;
	//		mirror_type = "ice";
	//	}
	//}
	//// ==================================
	
	with (instance_create_layer(x, y, "Invisible_Instances", obj_mirror)) {
		image_xscale = other.image_xscale;
		image_yscale = other.image_yscale;
		image_angle = image_angle + 180;
		image_alpha = 0.5;
		mirror_type = "ice";
	}
	// make it solid
	set_tilemap_within_bbox(layer_tilemap_get_id(layer_get_id("Collision_Map")), 1);
	
	// change tiles to ice
	water_tilemap = layer_tilemap_get_id(layer_get_id("Background_Map_Misc"));
	set_tilemap_within_area(water_tilemap, 34, bbox_left, bbox_top, bbox_right, bbox_top + 31);
	set_tilemap_within_area(water_tilemap, 35, bbox_left, bbox_top + 32, bbox_right, min(bbox_top + 63, bbox_bottom));
	set_tilemap_within_area(water_tilemap, 36, bbox_left, bbox_top + 64, bbox_right, bbox_bottom);
	
	instance_destroy();
}