if(readonce == false)
{
text = 
"[#252525]thats right we know have [wave]working[/wave] text boxes[pause] testing that this works too, turns out i need more filler text cause i need to test box limits and whether this text is going to over lap on the text box tho i am very doubtful it will"

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