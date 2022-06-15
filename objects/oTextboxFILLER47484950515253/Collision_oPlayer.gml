if(readonce == false)
{
text = 
"[#252525]This is the first time I've ever been in water. It feels really nice."

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