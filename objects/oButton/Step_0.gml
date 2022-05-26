var highlight = point_in_rectangle(900, global.highy, x, y, x + width, y + height)
var buttonpress =  highlight && gamepad_button_check_pressed(0, gp_face3) || keyboard_check_pressed(vk_enter);

// Hover
hover = lerp(hover, highlight, 0.1); //lerp() is used to blend between two values
y = lerp(y, ystart -  highlight * 8, 0.1); //initial y position of the instance when it is first created in the room

// Click
if (buttonpress && script >= 0) {
	audio_play_sound(ButtonSelect2,1,false);
	script_execute(script);
}

//----------------------------------
