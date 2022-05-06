var mouseX = device_mouse_x_to_gui(0);
var mouseY = device_mouse_y_to_gui(0);

var ishover = point_in_rectangle(mouseX, mouseY, x, y, x + width, y + height);
var clicked = ishover && mouse_check_button_pressed(mb_left);

var highlight = point_in_rectangle(900, highy, x, y, x + width, y + height)
var buttonpress =  highlight && gamepad_button_check_pressed(0, gp_face3);

// Hover
hover = lerp(hover, ishover || highlight, 0.1); //lerp() is used to blend between two values
y = lerp(y, ystart - (ishover || highlight) * 8, 0.1); //initial y position of the instance when it is first created in the room

// Click
if (clicked || buttonpress && script >= 0) {
	script_execute(script);
}


if gamepad_is_connected(0) gamepad_set_axis_deadzone(0, 0.5)

//controller up, everything should be NEGATIVE
if (gamepad_axis_value(0, gp_axislv) < 0)
{
	if(!(ishigh == 1))
	{
		ishigh = ishigh - 1;
		show_debug_message(ishigh)
		highy = highy - 150
	}
}

//controller down, everything should be POSITIVE
if (gamepad_axis_value(0, gp_axislv) > 0)
{
	if(!(ishigh == 3))
	{
		ishigh = ishigh + 1;
		show_debug_message(ishigh)
		highy = highy + 150
	}
}

//----------------------------------
