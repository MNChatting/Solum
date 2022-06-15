if(readonce == false)
{
text = 
"[#252525]This leads to the outside. Pretty sure the old flooded mall is near the edge of the building.."

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