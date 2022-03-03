//This is to find the direction the player is trying to move
if keyboard_check_direct(ord("W")){

	goUp = -1;

} else {
	
	goUp = 0;
	
}
if keyboard_check_direct(ord("S")){
	
	goDown = 1;

} else {
	
	goDown = 0;
	
}
if keyboard_check_direct(ord("D")){
	
	goRight = 1;

} else {
	
	goRight = 0;
	
}
if keyboard_check_direct(ord("A")){
	
	goLeft = -1;

} else {
	
	goLeft = 0;
	
}

//here we combine the data into a coordinate
difV = goUp + goDown;
difH = goRight + goLeft;
//here we find the direction from an origin point to our coordinate
dir = point_direction(0,0,difH, difV);
//This is to track if we should be moving
if (difV == 0 && difH == 0){
	
	isMoving = false;
	
} else {
	
	isMoving = true;
	
}
//if we should be moving we change the velocity by adding our acceleration
if isMoving{
	if (abs(vX + lengthdir_x(acceleration,dir)) <= maxVelocity){ // this keeps our acceleration below the max
		vX = vX + lengthdir_x(acceleration,dir);
	}
	if (abs(vY + lengthdir_y(acceleration,dir)) <= maxVelocity){
		vY = vY + lengthdir_y(acceleration,dir);
	}
} else { // here we slow the ship if the player is not pressing a key
	
	vX *= drag;
	vY *= drag;
	
}

//here we store the previous values of x and y incase they leave the room
prevX = x;
prevY = y;

//this is where we move the ship
x += vX;
y += vY;

//update trail
//puts start of trail to current position
trail[0,0] = x - 32;
trail[0,1] = y;

for(var i = 1; i <= trailPoints; i++){ //loops through trail
	//this makes each coordinate approach the value of the last coordinate for smooth movement (lerping)
	trail[i,0] = trail[i-1,0] + (trail[i,0] -pointSpacing - trail[i-1,0])*moveAmount;
	trail[i,1] = trail[i-1,1] + (trail[i,1] - trail[i-1,1])*moveAmount;
}

//shooting
if (keyboard_check_direct(ord("J"))){
	bulletVal += 1;
	if (bulletVal >= coolDown){
		vX -= knockback; //pushing the ship back from the force of the bullet
		xPos = x + lengthdir_x(60,image_angle);//adjusting the spawn location of the bullet
		yPos = y + lengthdir_y(60,image_angle);
		instance_create_depth(xPos, yPos,1,oBullet);
		bulletVal = 0;
	}
	
}