if(readonce == false)
{
text = 
"[#252525]What's this? Some kind of upgrade?[pause]The description on the box says it allows the user to [wave]dash[/wave] forward. That should be useful."

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