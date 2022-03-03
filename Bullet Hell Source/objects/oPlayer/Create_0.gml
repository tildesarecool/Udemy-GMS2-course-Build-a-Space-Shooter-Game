//these variables store what key is being pressed to later be used to determine
//the direction
goUp = 0;
goDown = 0;
goLeft = 0;
goRight = 0;
//this is a boolian variable to store if we have moved
isMoving = false;
//this is how fast we change speeds
acceleration = .95;
//here we have our initial velocities
vX = 0;
vY = 0;
//this is the maximum number of units per frame our ship will move
maxVelocity = 10;
//drag is how fast we slow down when nothing is pressed. The smaller this number the
//more abrupt the stop
drag = .9;

//trail variables
moveAmount = .5;
startWidth = 10;
lineShrink = .1;
trailPoints = 75;
pointSpacing = 10;
//allocate the memory space for the array
trail[trailPoints,1] = 0;
trail[0,0] = x - 32;
trail[0,1] = y;
//loop through and populate the array
for(var i = 1; i <= trailPoints; i++){
	trail[i,0] = trail[i-1,0] - pointSpacing;
	trail[i,1] = y;
}

//bullet variables
bulletVal = 0;
coolDown = 10;
knockback = 3;
