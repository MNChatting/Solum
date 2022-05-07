/// @description 
if (keyboard_check_pressed(vk_escape)) || (gamepad_button_check_pressed(0, gp_start)){
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

	create_button(640, 180 + addthis, _width, _height, "[#252525][scale,2][fa_centre][fa_middle]Resume", on_click); // <- Do not include ()

	create_button(640, 450 + addthis, _width, _height, "[#252525][scale,2][fa_centre][fa_middle]Reset", on_click);

	create_button(640, 720 + addthis, _width, _height, "[#252525][scale,2][fa_centre][fa_middle]Quit", on_click);
	
	
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
	
	//controller up, everything should be NEGATIVE
if (gamepad_button_check_pressed(0, gp_padu) || keyboard_check_pressed(vk_up))
{
	if(!(ishigh == 1))
	{
		ishigh = ishigh - 1;
		show_debug_message(ishigh)
		global.highy = global.highy - 300
	}
}
//controller down, everything should be POSITIVE
if (gamepad_button_check_pressed(0, gp_padd) || keyboard_check_pressed(vk_down))
{
	if(!(ishigh == 3))
	{
		ishigh = ishigh + 1;
		show_debug_message(ishigh)
		global.highy = global.highy + 300
	}
}