/// @description Insert description here
// You can write your code in this editor

if keyboard_check_direct(ord("W")) {
	// shipSpeed defined in create
	// y -= shipSpeed; //original
	goUp = -1;
} else {
	goUp = 0;
}

if keyboard_check_direct(ord("S")) {
	// shipSpeed defined in create
	//	y += shipSpeed; //original
	goDown = 1;
} else {
	goDown = 0;
}

if keyboard_check_direct(ord("D")) {
	// shipSpeed defined in create
	// x += shipSpeed; //original
	goRight = 1;
} else {
	goRight = 0;
}

if keyboard_check_direct(ord("A")) {
	// shipSpeed defined in create
	// x -= shipSpeed; //original
	goLeft = -1;
} else {
	goLeft = 0;
}

difV = goUp + goDown;
difH = goRight + goLeft;

// use above variables to get an angle
// point direction documetnation
// https://manual-en.yoyogames.com/#t=GameMaker_Language%2FGML_Reference%2FMaths_And_Numbers%2FAngles_And_Distance%2Fpoint_direction.htm&rhsearch=point_direction&rhhlterm=point_direction
// start x and y coords and end x and y coords
// 0,0 being the current x/y of the this ship object (right?) and difH/difV being the angle of the 
// ship
dir = point_direction( 0, 0, difH, difV );


// more informaiton on lengthdir
// https://manual-en.yoyogames.com/#t=GameMaker_Language%2FGML_Reference%2FMaths_And_Numbers%2FAngles_And_Distance%2Flengthdir_x.htm&rhsearch=lengthdir_&rhhlterm=lengthdir_
// the below gets replaced anyway

if ( difV == 0 && difH == 0) {
	isMoving = false;
} else {

	isMoving = true
}

if isMoving {

	x += lengthdir_x(shipSpeed, dir);
	y += lengthdir_y(shipSpeed, dir);

}






// this is end of "movement 2"
/***********************
if ( difV == 0 && difH == 0) {
	isMoving = false;
} else {

	isMoving = true
}

if isMoving {

	x += lengthdir_x(shipSpeed, dir);
	y += lengthdir_y(shipSpeed, dir);

}

***********************/





















/****************
if isMoving {
	
	if ( vX + lengthdir_x(acceleration,dir) <= maxVelocity ) {
		vX += lengthdir_x(acceleration,dir);
	}
	if ( vY + 
	lengthdir_y(acceleration, dir) ) {
		vY += lengthdir_y(acceleration,dir);
	}
	
}
****************/



//point_direction()
/*
  if (keyboard_check_direct((ord("w") ) ) ) { 
	goUp = 1;
	//	if (goUp == 1) {
		//show_message( string(goUp) );
	} else if (keyboard_check_released( ord("w") ) ) {
		
	goUp = 0;
	show_message( string(goUp) );
	//show_message( string(goUp) );
	//goUp = 1;
	//	if (goUp == 1) {
	//	show_message( string(goUp) );
	//}
}
*/