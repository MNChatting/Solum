var mouseX = device_mouse_x_to_gui(0);
var mouseY = device_mouse_y_to_gui(0);

var ishover = point_in_rectangle(mouseX, mouseY, x, y, x + width, y + height);
var clicked = ishover && mouse_check_button_pressed(mb_left);

var highlight = point_in_rectangle(900, global.highy, x, y, x + width, y + height)
var buttonpress =  highlight && gamepad_button_check_pressed(0, gp_face3) || keyboard_check_pressed(vk_enter);

// Hover
hover = lerp(hover, ishover || highlight, 0.1); //lerp() is used to blend between two values
y = lerp(y, ystart - (ishover || highlight) * 8, 0.1); //initial y position of the instance when it is first created in the room

// Click
if (clicked || buttonpress && script >= 0) {
	script_execute(script);
}

//----------------------------------
