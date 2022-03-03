// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function outOfRoom(){

	buffer = 400;
	
	if (x < 0 - buffer || x > room_width + buffer || y < 0 - buffer || y > room_height + buffer){
		
		return true;
		
	}


}