if(readonce == false)
{
text = 
"[#252525]So why should I care if I'm alone? I enjoy my company, I've explored the world in my own company and was better off for it. [pause] I'm happy with me."

profile  = "[sPopCat]"
}

textment = true;

if(destroyme == true)
{
	textment = false;
	textstart = false;
	destroyme = false;
	readonce = true;
	room_goto(GameEnd)
	
}