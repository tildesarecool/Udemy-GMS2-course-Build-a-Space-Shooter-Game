/// @description Get out of full screen

// set it to the opposite

// original
//fullscreen = !(fullscreen);

// sending the opposite of whatever it is currently
// this is replaced by a more advanced method in part 17 anyway

// original
//window_set_fullscreen(fullscreen);

window_set_fullscreen( !(window_get_fullscreen()));

// reset the port bounds to ideal
view_set_wport(targetView, idealWidth);
view_set_hport(targetView, idealHeight);

// reset game center
resizeCenter(targetView);
view_set_camera(targetView, camera );