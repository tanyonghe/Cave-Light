/// @description create_laser(type)
/// @param type
/// @param width
/// @param reflects
/// @param alpha_multiplier
//creates a laser

//show_debug_message("===============   START create_laser   ================");

var stepSize, length 
length = 3000; // max distance to check (should be greater than any actual line of sight)
stepSize = 5; // collision is checked every stepSize. smaller stepsize, better precision, worse performance
type = argument0;
width = argument1;
reflects = argument2; //how many more times the beam can reflect]
alpha_multiplier = argument3;

if reflects <= 0 {
	//show_debug_message(" >>> laser used up reflects");
	return;
}

draw_set_color(c_red);
draw_set_alpha(1);

laser_length = 0; // actual distance of this segment of the beam

//for (i = 0; (i<length) && (!collision_point(xx+lengthdir_x(i, firingfiringDir), yy + lengthdir_y(i, firingfiringDir), obj_ice, 1, 1)); i += stepSize) {

for (i = 0; (i<length) && (!check_laser_collision(xx+lengthdir_x(i, firingDir), yy+lengthdir_y(i, firingDir))); i += stepSize) {
	laser_length = i;
}

endX = xx + lengthdir_x(laser_length, firingDir);
endY = yy + lengthdir_y(laser_length, firingDir);
endX2 = xx + lengthdir_x(laser_length + stepSize*2, firingDir); //might stop before obj => wont detect collision??
endY2 = yy + lengthdir_y(laser_length + stepSize*2, firingDir);

//show_debug_message("DRAW_LASER(" + string(xx) + "," + string(yy) + "," + string(endX) + "," + string(endY) + ")")

draw_laser(xx, yy, endX, endY, width, type, alpha_multiplier);

// while LMB is pressed, player's alarm[0] constantly cycles. once it hits a set value (here, 1) the laser hitbox fires
//show_debug_message("-- obj_player.alarm[0] = " + string(obj_player.alarm[0]));
if obj_player.alarm[0] == 1 {
	//("create new laserHitbox, type: " + string(type));
	hitboxInst = instance_create_layer(xx, yy, "Instances", obj_laser_hit);
	hitboxInst.image_angle = firingDir;
	hitboxInst.image_xscale = laser_length + 4; // add a bit in case laser stops before obj
	hitboxInst.image_yscale = width;
	hitboxInst.hitboxBeamType = type;
	
	switch(type) {
		case beamTypes.normal:
			break;
		case beamTypes.frost:
			hitboxInst.image_blend = make_color_rgb(199, 250, 255);
			break;
		case beamTypes.surge:
			hitboxInst.image_blend = make_color_rgb(187, 176, 255);
			break;
		case beamTypes.amplified:
		case beamTypes.amplifiedFrost:
		case beamTypes.amplifiedSurge:
			hitboxInst.image_blend = c_orange; //TODO
			break;
	}
}
	
	
// ============ CHECK COLLISIONS WITH SPECIAL ENTITIES =============
// use this for entities which modify the laser / require its properties like angle and type
// use obj_laser_hit for things involving damage and hits per second, and switches (for convenience)

// laser colliding with mirror (ice surfaces should use invisible mirrors)
if collision_point(endX,endY,obj_mirror,0,1) || collision_point(endX2,endY2,obj_mirror,0,1) {
    inst = instance_nearest(endX,endY,obj_mirror)
    inst.xx = endX
    inst.yy = endY
	var reflectedDir = inst.v1 + (inst.v2 - firingDir)
    inst.firingDir = reflectedDir;
    //inst.dis = length-laser_length; // remaining length left to project the laser (must decrement else will infinitely reflect)
    inst.reflects = reflects - 1;
	inst.beamType = type;
	with inst {
		//if (keyboard_check(vk_control)) { //debugging
			show_debug_message("reflection: create_laser(normal, " + string(reflects) + " reflects), firingDir: " + string(firingDir));
			create_laser(beamType, other.width, reflects, 0.8*other.alpha_multiplier); //retain current beam type
		//}
	}
	
	//show_debug_message("===============   end create_laser   ================");
	return; // TODO should it return? what if objects overlap?
}

// laser colliding with ice crystal
if collision_point(endX,endY,obj_crystal_ice,0,1) || collision_point(endX2,endY2,obj_crystal_ice,0,1) {
	//show_debug_message("COLLIDED WITH ICE CRYSTAL")
    inst = instance_nearest(endX,endY,obj_crystal_ice)
    inst.xx = endX
    inst.yy = endY
    inst.firingDir = firingDir
    //inst.dis = length-laser_length; // remaining length left to project the laser (must decrement else will infinitely reflect)
    inst.reflects = reflects;
	with inst {
		//show_debug_message("create_laser(frost, " + string(reflects) + " reflects)");
		create_laser(beamTypes.frost, other.width, reflects, 1); //change beam type to frost
	}
	
	//show_debug_message("===============   end create_laser   ================");
	return;
}

//show_debug_message("===============   end create_laser   ================");