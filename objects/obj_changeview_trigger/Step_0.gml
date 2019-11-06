/// @description zoom

if (canZoom) {
	t++;
	var progress = t/duration;
	show_debug_message(progress*100);
	camera_set_view_size(view_camera[0], 
	(finalW - initialW) * progress + initialW, 
	(finalH - initialH) * progress + initialH);
	
	if (t >= duration) {
		canZoom = false;
	}
}