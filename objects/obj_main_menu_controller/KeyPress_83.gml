/// @description Select Next
// You can write your code in this editor

if (!(select_level || instructions || credits)) {
	selected = (selected + 1) mod numOfOptions;
}