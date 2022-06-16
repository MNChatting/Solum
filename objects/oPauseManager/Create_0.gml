menuOpen = false;

global.pause = 0;
global.unpause = false;
global.highy = 288;
global.textbox = false;
pressedpause = false;

	camX = camera_get_view_x(view_camera[0])
    camY = camera_get_view_y(view_camera[0])

ishigh = 1;

	if gamepad_is_connected(0) gamepad_set_axis_deadzone(0, 0.5);
