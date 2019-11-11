/// @description

//When laser is hitting this object, call linked instance's user 0 (open), keep on reseting alarm[0]
//When laser stops hitting this object, countdown will start
// basically same as continuous switch but alarm[0] timing is the countdown time, and it draws the countdown

image_speed = 0;
linked_inst = -1;
linked_indicator = -1;
linked_indicator2 = -1;
action = "open" //default;

laser_touching = false; // countdown only starts when laser stops touching

image_blend = c_fuchsia; //temp

countdown_time = 180; // frames
time_left = countdown_time; // have to put this in creation code if defining diff countdown time

laser_touched_once = false; // so countdown bar not drawn at start;

//only_respond_to_surge = true;

// for multi doors: each switch connected to it has an index
switch_index = -1; //default