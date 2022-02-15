/// @description Insert description here
// You can write your code in this editor
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