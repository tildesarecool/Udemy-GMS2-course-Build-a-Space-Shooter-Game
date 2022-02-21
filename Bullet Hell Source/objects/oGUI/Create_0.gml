/// @description Full screen settings
/*
fullscreen = true;
window_set_fullscreen(fullscreen);

*/

// this region thing doesn't do anything besides giving me that minus sign so i can 
// temporarily hide sections of code
#region fullscreen
idealHeight = 768;

//aspectRatio = display_get_width() / display_get_height();
aspectRatio = 1366 / 768;

idealWidth = round(aspectRatio * idealHeight);

// view settings
targetView = 0;
view_enabled = true;
view_set_visible(targetView, true);

// view port size
view_set_wport(targetView, idealWidth);
view_set_hport(targetView, idealHeight);

//resize and center - this iscalled from script "resizeCenter" external GML file
resizeCenter(targetView);

// build the camera

camera = camera_create_view( 0,0, idealWidth, idealHeight, false );

//set the view to use the camera
view_set_camera( targetView, camera );

// set to run in full screen
window_set_fullscreen(false);

#endregion