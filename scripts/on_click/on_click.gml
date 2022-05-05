function on_click() {
	show_debug_message("Button clicked: " + text);	
	
	if(text == "[#252525][scale,2][fa_centre][fa_middle]Resume")
	{
	global.unpause = true;
	}
	
	if(text == "[#252525][scale,2][fa_centre][fa_middle]Save")
	{
	show_message("i am trying but its hard to make it save states")
	}
	
	if(text == "[#252525][scale,2][fa_centre][fa_middle]Quit")
	{
	game_end()
	}


}
