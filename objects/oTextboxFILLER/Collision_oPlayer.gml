if(readonce == false)
{
text = 
"[#252525]Damn a deadend. You'd think for a apartment building it would be easier to navigate."

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