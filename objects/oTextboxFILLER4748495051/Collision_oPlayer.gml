if(readonce == false)
{
text = 
"[#252525]I need to get to the passageway, underneath the elevator here. [pause] But how do I do that when I can't touch the water?"

profile  = "[sProfileFace1]"
}

textment = true;

if(destroyme == true)
{
	textment = false;
	textstart = false;
	destroyme = false;
	readonce = true;
	instance_destroy()
	
}