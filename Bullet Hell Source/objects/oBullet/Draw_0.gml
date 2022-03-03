draw_sprite_ext(sprite_index, image_index, x, y, image_xscale, image_yscale,image_angle, color,image_alpha);//lets you draw at a specific color
draw_set_alpha(.2);
draw_circle(x,y,flashRad+irandom(10),false);
draw_set_alpha(1);