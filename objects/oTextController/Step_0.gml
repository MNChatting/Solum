if(textstart == true)
{
	
if((keyboard_check_pressed(vk_up) || gamepad_button_check_pressed(0, gp_face3)) && element4.get_typewriter_state() < 1 && element4.get_typewriter_paused() == false)
{element4.typewriter_skip();}


if((keyboard_check_pressed(vk_up) || gamepad_button_check_pressed(0, gp_face3)) && element4.get_typewriter_paused())
{element4.typewriter_unpause();}

if((keyboard_check_pressed(vk_up) || gamepad_button_check_pressed(0, gp_face3)) && element4.get_typewriter_state() = 1)
{	
	textstart = false;
	textment = false;
	global.pause = 0;
	
	element4.typewriter_reset()
	
	destroyme = true;
}

}