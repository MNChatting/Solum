draw_self()

if(textment == true)
{
element4 = scribble(text).typewriter_in(0.5,1).wrap(350,75);
	
global.pause = 1;

camX = camera_get_view_x(view_camera[0])
camY =camera_get_view_y(view_camera[0])

textboxsprite.draw(camX + 190,camY + 225);
textprofilesprite.draw(camX + 65,camY + 225);
 
scribble(profile).draw(camX + 65,camY + 225);
 
element4.draw(camX + 205,camY + 235);
 
textstart = true;
}