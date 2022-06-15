if((keyboard_check_pressed(vk_up) || gamepad_button_check_pressed(0, gp_face3)))
{
	global.currentroom = "apartment";
	room_goto(Apartment);
	
}