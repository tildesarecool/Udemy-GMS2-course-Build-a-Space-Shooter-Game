//because we added a draw event, we have to draw the object
draw_sprite_ext(sPlayer,1,x,y,1,1,image_angle,image_blend,image_alpha);//the longer draw event would let you adjust the angle if you wanted
currentWidth = startWidth;
//here we loop through the trail and draw it to the screen
for(var i = 1; i <= trailPoints; i++){
	xLine = trail[i,0];
	yLine = trail[i,1];
	xLinePrev = trail[i-1,0];
	yLinePrev = trail[i-1,1];
	draw_line_width_color(xLine,yLine,xLinePrev,yLinePrev,currentWidth,c_white,c_white);
	currentWidth -= lineShrink;
}
//this draws the small circle at the exhaust
draw_set_color(c_white);
draw_set_alpha(.2);
draw_circle(x-64,y,40+irandom(4),false);
draw_set_alpha(1);