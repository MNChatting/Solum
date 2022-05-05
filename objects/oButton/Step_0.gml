var mouseX = device_mouse_x_to_gui(0);
var mouseY = device_mouse_y_to_gui(0);

var ishover = point_in_rectangle(mouseX, mouseY, x, y, x + width, y + height);
var clicked = ishover && mouse_check_button_pressed(mb_left);

// Hover
hover = lerp(hover, ishover, 0.1); //lerp() is used to blend between two values
y = lerp(y, ystart - ishover * 8, 0.1); //initial y position of the instance when it is first created in the room

// Click
if (clicked && script >= 0) {
	script_execute(script);
}