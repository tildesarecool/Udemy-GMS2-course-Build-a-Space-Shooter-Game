/// @description Insert description here
// You can write your code in this editor

if ( armor <= 0 ) {
	oGUI.deathEffect = true;
	oGUI.exX = x;
	oGUI.exY = y;
	instance_destroy();
}

if ( wasHit ) {
	image_xscale = 1.2;
	image_yscale = 1.2;
} else {

	image_xscale = 1;
	image_yscale = 1;
	
}