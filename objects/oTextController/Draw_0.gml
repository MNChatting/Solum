draw_self()

if(textment == true)
{
element4 = scribble(text).typewriter_in(0.5,1).wrap(640,100).typewriter_sound_per_char(Typing,1,0.80,1);
	
global.pause = 1;
global.textbox = true;

camX = camera_get_view_x(view_camera[0])
camY = camera_get_view_y(view_camera[0])

textboxsprite.draw(camX + 64,camY + 288);

//textprofilesprite.draw(camX + 65,camY + 225);
//scribble(profile).draw(camX + 65,camY + 225);
 
element4.draw(camX + 84,camY + 308);
 
textstart = true;
}