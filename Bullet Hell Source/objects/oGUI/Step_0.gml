//making sure the camera settings are updated correctly
if (global.cameraWidth != camera_get_view_width(global.camera)){
	
	global.cameraWidth = camera_get_view_width(global.camera);
	global.cameraHeight = camera_get_view_height(global.camera);
	global.cameraX = camera_get_view_x(global.camera);
	global.cameraY = camera_get_view_y(global.camera);
	
}

//spawning particles
if (irandom(20) == 1){
	
	part_particles_create(backgroundSystem,starX,global.cameraY+irandom(global.cameraHeight),star,1);
	
}
if (irandom(100) == 1){
	
	part_particles_create(backgroundSystem,cloudX,global.cameraY+irandom(global.cameraHeight),cloud,1);
	
}
//only use once on bullet collision
if ringSpawn{
	
	part_particles_create(bulletImpact,ringX,ringY,bulletRing,1);
	ringSpawn = false;
	
}


if ( deathEffect )  {
	
	part_particles_create(deathSystem, exX, exY, explosion, 5);
	deathEffect = false; 
	
}