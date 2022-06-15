if(readonce == false)
{
text = 
"[#252525]It was a good thing I found that delivery box earlier."

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