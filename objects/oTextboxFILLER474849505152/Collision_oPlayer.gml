if(readonce == false)
{
text = 
"[#252525]I heard that this game was amazing. I wonder who created it... [pause] probably a massive nerd."

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