//switching between fullscreen and windowed view
window_set_fullscreen(!(window_get_fullscreen()));

//reset the port bounds
view_set_wport(targetView, idealWidth);
view_set_hport(targetView, idealHeight);

//reset the game center
resizeCenter(targetView);
view_set_camera(targetView, global.camera);
