function on_click() {
	show_debug_message("Button clicked: " + text);	
	
	if(text == "Resume")
	{
	global.unpause = true;
	}
	
	if(text == "Quit")
	{
	game_end()
	}


}
