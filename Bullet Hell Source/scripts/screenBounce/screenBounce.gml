// This script restricts the player to the screen and bounces
// them off when they run into the border
function screenBounce(bounceVal){ //I changed this to bounceval but it doesnt matter what you call it
	// here we calculate the half widths and half heights of the objects sprite
	var halfWidth = sprite_get_width(sprite_index)/2;
	var halfHeight = sprite_get_height(sprite_index)/2;
	// this value decreases the bounce each time
	var damper = bounceVal;
	
	if (x>global.cameraWidth + global.cameraX - halfWidth || x < global.cameraX + halfWidth){ // checking if out of the room
		
		x = prevX; //moving back if out of the room
		vX = -vX*damper; //adding the bounce
	
	}
	
	if (y>global.cameraY + global.cameraHeight - halfHeight || y < global.cameraY + halfHeight){
		
		y = prevY;
		vY = -vY*damper;
	
	}
}