/// @description create_laser(type)
/// @param type
/// @param width
/// @param reflects
//creates a laser

//show_debug_message("CREATE_LASER")

var stepSize, length 
length = 3000; // max distance to check (should be greater than any actual line of sight)
stepSize = 5; // collision is checked every stepSize. smaller stepsize, better precision, worse performance
type = argument0;
width = argument1;
reflects = argument2; //how many more times the beam can reflect

if reflects <= 0 {
	show_debug_message(" >>> laser used up reflects");
	return;
}

draw_set_color(c_red);
draw_set_alpha(1);

laser_length = 0; // actual distance of this segment of the beam

//for (i = 0; (i<length) && (!collision_point(xx+lengthdir_x(i, dir), yy + lengthdir_y(i, dir), obj_ice, 1, 1)); i += stepSize) {

for (i = 0; (i<length) && (!check_laser_collision(xx+lengthdir_x(i, dir), yy+lengthdir_y(i, dir))); i += stepSize) {
	laser_length = i;
}

endX = xx + lengthdir_x(laser_length, dir);
endY = yy + lengthdir_y(laser_length, dir);
endX2 = xx + lengthdir_x(laser_length + stepSize, dir); //might stop before obj => wont detect collision??
endY2 = yy + lengthdir_y(laser_length + stepSize, dir);

//show_debug_message("DRAW_LASER(" + string(xx) + "," + string(yy) + "," + string(endX) + "," + string(endY) + ")")

draw_laser(xx, yy, endX, endY, width, type);


// ============ CHECK COLLISIONS WITH SPECIAL ENTITIES =============

// laser colliding with mirror (ice surfaces should use invisible mirrors)
if collision_point(endX,endY,obj_mirror,0,1) || collision_point(endX2,endY2,obj_mirror,0,1) {
	show_debug_message("COLLIDED WITH MIRROR")
    inst = instance_nearest(endX,endY,obj_mirror)
    inst.xx = endX
    inst.yy = endY
    inst.dir = inst.v1 + (inst.v2 - dir)
    //inst.dis = length-laser_length; // remaining length left to project the laser (must decrement else will infinitely reflect)
    inst.reflects = reflects - 1;
	inst.beamType = type;
	with inst {
		show_debug_message("create_laser(normal, " + string(reflects) + " reflects)");
		create_laser(beamType, other.width, reflects); //retain current beam type
	}
}

// laser colliding with ice crystal
if collision_point(endX,endY,obj_crystal_ice,0,1) || collision_point(endX2,endY2,obj_crystal_ice,0,1) {
	show_debug_message("COLLIDED WITH ICE CRYSTAL")
    inst = instance_nearest(endX,endY,obj_crystal_ice)
    inst.xx = endX
    inst.yy = endY
    inst.dir = dir
    //inst.dis = length-laser_length; // remaining length left to project the laser (must decrement else will infinitely reflect)
    inst.reflects = reflects;
	with inst {
		show_debug_message("create_laser(frost, " + string(reflects) + " reflects)");
		create_laser(beamTypes.frost, other.width, reflects); //change beam type to frost
	}
}