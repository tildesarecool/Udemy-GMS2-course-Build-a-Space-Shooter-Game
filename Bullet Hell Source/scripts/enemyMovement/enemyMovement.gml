// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function enemyMovement( eRadius ) {
	
	x += 100000;
	closeEnemy = instance_nearest( x - 100000, y, oChaser );
	x -= 100000;
	
	if !( closeEnemy == noone || closeEnemy == id ) {
		distNearest = point_distance(closeEnemy.x, closeEnemy.y, x, y );
		if ( distNearest <= eRadius ) {
			
			dirNearest = point_direction(closeEnemy.x, closeEnemy.y, x, y );
			// push harder the closer, lesser hard the further away
			dirMag = velocity - ( distNearest / eRadius ) * velocity;
			
			
		} else {
		
			dirMag = 0;
			dirNearest = 0;
		
		
		}
	
	
	} else {
	
		dirMag = 0;
		dirNearest = 0;
	
	}
	totalX = lengthdir_x( velocity, dir ) + lengthdir_x(dirMag, dirNearest);
	totalY = lengthdir_y( velocity, dir ) + lengthdir_y(dirMag, dirNearest);
	
	x += totalX;
	y += totalY;
	
}