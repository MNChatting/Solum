/// @description 
// Set color
draw_set_color(merge_color(c_ltgray, c_white, hover));

// Draw rounded rectangle
draw_roundrect(x, y, x + width, y + height, 0);

//draw_set_colour(c_blue)
//draw_rectangle(900,global.highy,950,global.highy + 50,0)

// Draw text
scribble(text).draw(x + width/2, y + height/2, text);


// Reset color
draw_set_color(c_white);