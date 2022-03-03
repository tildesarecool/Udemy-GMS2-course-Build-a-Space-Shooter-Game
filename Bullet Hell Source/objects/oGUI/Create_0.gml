#region fullscreen
idealHeight = 768; //this is the dimension that we keep constant
aspectRatio = display_get_width()/display_get_height(); //the aspect ratio of the device playing the game
idealWidth = round(aspectRatio*idealHeight); //calculating the width that gives the correct ratio

//view settings
targetView = 0;
view_enabled = true;
view_set_visible(targetView, true);

//view port size
view_set_wport(targetView, idealWidth);
view_set_hport(targetView, idealHeight);

//resize and center
resizeCenter(targetView);

//camera creation
global.camera = camera_create_view(0,0,idealWidth, idealHeight,false);
global.cameraWidth = camera_get_view_width(global.camera);
global.cameraHeight = camera_get_view_height(global.camera);
global.cameraX = camera_get_view_x(global.camera);
global.cameraY = camera_get_view_y(global.camera);

//set the view to use the camera
view_set_camera(targetView, global.camera);

//run in fullscreen
window_set_fullscreen(true);

#endregion

backgroundSystem = part_system_create();

star = part_type_create();
part_type_shape(star, pt_shape_star);
part_type_color1(star, c_white);
part_type_blend(star,1);
part_type_life(star,3000,3000);
part_type_size(star,.05,.075,0,0);
part_type_orientation(star,0,365,0,0,0);
part_type_direction(star,180,180,0,0);
part_type_speed(star,.75,1,0,0);

starNumber = 200;

cloud = part_type_create();
part_type_alpha3(cloud,.2,.3,.2);
part_type_shape(cloud, pt_shape_cloud);
part_type_color1(cloud,c_white);
part_type_blend(cloud,1);
part_type_life(cloud,1000,3000);
part_type_size(cloud,1,10,0,0);
part_type_orientation(cloud,0,365,0,0,0);
part_type_direction(cloud,180,180,0,0);
part_type_speed(cloud,1,2,0,0);

bulletImpact = part_system_create();
bulletRing = part_type_create();
part_type_alpha3(bulletRing,.2,.5,.2);
part_type_shape(bulletRing, pt_shape_ring);
part_type_color1(bulletRing,c_white);
part_type_blend(bulletRing,1);
part_type_life(bulletRing,5,10);
part_type_size(bulletRing,1,3,0,0);
part_type_orientation(bulletRing,0,365,0,0,0);

ringSpawn = false;
ringX = 0;
ringY = 0;

cloudNumber = 10;

for (i=0; i<starNumber; i+=1){
	
	starX = global.cameraX + irandom(global.cameraWidth);
	starY = global.cameraY + irandom(global.cameraHeight);
	part_particles_create(backgroundSystem,starX,starY,star,1);
	
}

for (i=0; i<cloudNumber; i+=1){
	
	cloudX = global.cameraX + irandom(global.cameraWidth);
	cloudY = global.cameraY + irandom(global.cameraHeight);
	part_particles_create(backgroundSystem,cloudX,cloudY,cloud,1);
	
}

starX = global.cameraX + global.cameraWidth + 10;
cloudX = global.cameraX + global.cameraWidth + 500;