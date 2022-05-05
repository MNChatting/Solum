if(readonce == false)
{
text = 
"[#252525]Thanks for playing our demo you have eached the end of the [wave]playroom[/wave]."

profile  = "[sPopCat]"
}
else
{
text = 
"[#252525]Feel free to continue exploring the level and try to break the game."

profile  = "[sPopCat]"
}


if(keyboard_check_pressed(vk_up) ||  gamepad_button_check_pressed(0, gp_face3))
{textment = true;}

if(destroyme == true)
{
	textment = false;
	textstart = false;
	destroyme = false;
	readonce = true;
	
}