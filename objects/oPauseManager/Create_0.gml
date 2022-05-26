menuOpen = false;
scribble_font_add("fCozette");

addthis = 64;
global.pause = 0;
global.unpause = false;
global.highy = 288;
global.textbox = false;
pressedpause = false;

ishigh = 1;

	if gamepad_is_connected(0) gamepad_set_axis_deadzone(0, 0.5);
