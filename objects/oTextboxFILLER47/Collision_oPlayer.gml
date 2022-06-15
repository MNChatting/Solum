if(readonce == false)
{
text = 
"[#252525]I should be careful of those spikes. As stong as I am, I don't think getting inpaled is the best choice."

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