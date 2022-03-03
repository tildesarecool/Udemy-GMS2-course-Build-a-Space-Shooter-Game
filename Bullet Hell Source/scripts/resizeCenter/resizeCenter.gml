//this script will resize and center the viewport
function resizeCenter(targetView){

	//center the window in the display
	window_set_rectangle((display_get_width()-view_wport[targetView])*.5, (display_get_height() - view_hport[targetView])*.5,view_wport[targetView], view_hport[targetView]);
	//resize the surface
	surface_resize(application_surface, view_wport[targetView], view_hport[targetView]);

}