prevX = x;//used for the collision rectangle
prevX = y;
x += lengthdir_x(velocity,dir);//adding our x and y velocity to the bullet
y += lengthdir_y(velocity,dir);
//differentiating between enemy and player bullets for color and collision checking
if enemyBullet == false{
	color = c_white;
	//using a rectangle for collision checking (don't use if shooting at an angle)
	inst = collision_rectangle(x,y+yOffset,prevX,prevY-yOffset,oChaser,false,true);
} else {
	color = make_color_hsv(62,133,255);
	//using a line to check collisions with enemy bullets (players will dodge this more but it makes them
	//feel good at the game plus the enemies can shoot at an angle
	inst = collision_line(x,y,prevX,prevY,oPlayer,false,true);
}
	
if inst != noone{
	
	with(inst){ //whoever it collides with gets armor reduced
		
		armor -= 1;
		wasHit = true;
		
	}
	oGUI.ringSpawn = true;//spawning the collision particles
	oGUI.ringX = x;
	oGUI.ringY = y;
	instance_destroy();
	
}