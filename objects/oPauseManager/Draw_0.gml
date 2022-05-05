if(pressedpause = true)
{
draw_set_color(c_black);
draw_set_alpha(0.9);
draw_rectangle(0,0, room_width,room_height,0);
draw_set_alpha(1);
	camX = camera_get_view_x(view_camera[0])
    camY = camera_get_view_y(view_camera[0])
	scribble("[#FFFFFF][scale,1.5][fa_centre][fa_middle][pulse]Game Pause").draw(camX + 320,camY + 50);
}