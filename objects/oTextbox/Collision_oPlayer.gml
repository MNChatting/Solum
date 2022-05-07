if(readonce == false)
{
text = 
"[#252525][wave]You did it!![/wave] you opened the dialogue box! pressing x again will progress the text[pause]           you are so smart :)"

profile  = "[sProfileFace1]"
}
else
{
text = 
"[#252525][shake]did this change?"

profile  = "[sProfileFace1]"
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