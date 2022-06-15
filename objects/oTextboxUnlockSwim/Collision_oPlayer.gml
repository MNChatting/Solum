if(readonce == false)
{
text = 
"[#252525]Pool Floaties.[pause] I've read that children used to use these to help them [wave]swim[/wave]. Maybe I can use them too."

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