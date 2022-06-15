if(readonce == false)
{
text = 
"[#252525]I travelled all this way only to learn the truth.[pause] Theres a reason I'm the last one here, why I'm able to use all these upgrades. I wasn't human to begin with."

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