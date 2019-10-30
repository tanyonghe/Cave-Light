/// @description Insert description here
// You can write your code in this editor

// Method 1: Store a list of spite names and a list of coordinates
// Render specific sprited at specific coordinates 
// depending on the current global.instructionsIndex value
// I think this is neater but annoying to specify specific coordinates

// Method 2: Create an object for each prompt and render each
// depending on the current global.instructionsIndex value
// The lazy way lolol

// Also, the triggers are big to prevent possibility of players avoiding it
// And they will be shift to Invisible_Instances after implementation is done

if (global.instructionsIndex == 1) {
	sprite_index = spr_enemy;
}