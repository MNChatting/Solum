if(readonce == false)
{
text = 
"[#252525]These are momentum boots, they allow the wearer to [wave]double jump [/wave]. These will come in handy for this next area."

profile  = "[sPopCat]"
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