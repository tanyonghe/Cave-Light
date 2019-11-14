/// @description

//When laser is hitting this object, linked instance's user event 0 will be called
//When laser stops hitting this object, linked instance's user event 1 will be called


image_speed = 0;
linked_inst = -1;
linked_indicator = -1;
linked_indicator2 = -1;
action = "open" //default;

activated = false;

// for multi doors: each switch connected to it has an index
switch_index = -1; //default