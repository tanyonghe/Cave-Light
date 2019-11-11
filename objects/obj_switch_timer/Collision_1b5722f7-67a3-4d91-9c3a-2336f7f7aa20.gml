/// @description if surge, laser_touching = true

var hasSurge = false;

// in case multiple hitboxes are touching simultaneously, check each of them
with (obj_laser_hit) {
	if instance_place(x, y, other) {
		show_debug_message(">~>~> laser (" + string(id) + ") (" + string(x) + "," + string(y) + ") touching water, type " + string(hitboxBeamType));
		if hitboxBeamType == beamTypes.surge {
			hasSurge = true;
			break;
		}
	}
}

if (!hasSurge) {
	return;
}


laser_touching = true;

laser_touched_once = true;
