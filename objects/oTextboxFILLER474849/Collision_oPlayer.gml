if(readonce == false)
{
text = 
"[#252525]I forgot how bad the flooding was over this side of the building, I'll need to be able to make the long jumps in order to get to the mall."

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