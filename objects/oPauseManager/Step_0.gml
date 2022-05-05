/// @description 
if (keyboard_check_pressed(vk_escape)) {
	menuOpen = !menuOpen;
	
if(global.pause == 0)
	{global.pause = 1;
	pressedpause = true;}
else {global.pause = 0;
	pressedpause= false;}
	
	if(menuOpen)
	{
	
	var _width = 600;
    var _height = 200;

	create_button(640, 180 + addthis, _width, _height, "Resume", on_click); // <- Do not include ()

	create_button(640, 450 + addthis, _width, _height, "Save", on_click);

	create_button(640, 720 + addthis, _width, _height, "Quit", on_click);
	
	}
	else {instance_destroy(oButton);}
}

if(global.unpause)
	{
		instance_destroy(oButton);
		pressedpause= false;
		global.pause = 0;
		global.unpause = 0;
		menuOpen = !menuOpen
	}