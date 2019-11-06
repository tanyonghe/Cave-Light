/// @description Insert description here
// You can write your code in this editor

//defaults
dir = "y";
motion = 1; // move by default
displacement = 0;
maxDisplacement = 320;
dy = 2;
dx = 2;
continuous = false;

inverse = false; // default - on: up/left
                 // inverse - on: down/right


should_move = true; // interface for switches; move by default
//NOTE if this platform is switch activated,
//should_move makes it forwards,
//should_move = false makes it move backwards