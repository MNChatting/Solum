/// every frame this happens.
timer -= 1;

//escape will be moved later to pause
if(keyboard_check_pressed(vk_escape))
{
game_end()
}

key_left = keyboard_check(vk_left) || (gamepad_axis_value(0,gp_axislh) < 0) ; //first function yellow text //vk = virtual keyboard
key_right = keyboard_check(vk_right) || (gamepad_axis_value(0,gp_axislh) > 0);
key_jump = keyboard_check_pressed(vk_space) || gamepad_button_check_pressed(0, gp_face1); //checking whether key is being pressed not held

var move = key_right - key_left; //this is so smart i am impressed as hell, excited to explain to lio
var onWall = place_meeting(x-5,y,ointeractController) - place_meeting(x+5,y,ointeractController);
var onGround = place_meeting(x,y+1,ointeractController);

var dash = keyboard_check_pressed(ord("Q")) ||  gamepad_button_check_pressed(0, gp_face2);

var InWater = place_meeting(x,y-16,oWater);
var onSlide = place_meeting(x,y+1,oSlide);

mvtlock = max(mvtlock - 1, 0);
dashduration = max(dashduration - 1, 0);

if (timer == 0)
{
	timer = room_speed;
	jacobstopper = true;
}


if (dashduration > 0) {vsp = 0;}
else if (onWall != 0) {vsp = min(vsp + 0.2, 3);}
else if (InWater != 0) {vsp = min(vsp + 0.2, 5);}
else {vsp = vsp + grv;}

if (dashunlocked == true)
{if (dash && mollystopper = true && jacobstopper = true && move != 0)
{dashduration = 10;
 hsp = move * dashspd;
 jacobstopper = false;
 mollystopper = false;
 sprite_index = sPlayerDash;
}}

if (onGround = 1)
{ sprite_index = sPlayerIdle;}

if(InWater = 1 && swimunlocked == true)
{
	image_angle = 0;
	sprite_index = sPlayerSwim;
	//vsp = vsp - 1;
	vsp = min(vsp - 0.5, 2)
	jumps = 0;
}

if(place_meeting(x,y+1,oUnlockSwim))
{ swimunlocked = true; }

if (mvtlock <= 0 && dashduration <= 0 && global.pause == 0) // stop the player from jumping while moving
{
	if (onSlide = 1) // Need to change so theres two varients for left and right
		{
			image_angle = -45;
			sprite_index = sPlayerSlide;
			hsp = hsp + 5;
			vsp = vsp + 5;
		}
	else {
		hsp = move * walksp;
		}
	
	
	if (key_jump && jumps != jumpsmax) 
	{
		image_angle = 0;
		sprite_index = sPlayerJump;
		
		if (jumpsunlocked = true)
		{
		if (jumps = 1)
		{vsp = -8;
		 jumps = 2;
		 sprite_index = sPlayerDJump;
		}
		}
		
		if (onGround = 1)
		{vsp = -12;
		 jumps = 1;
		}
		
		if (InWater = 1)
		{vsp = -12;
		 jumps = 2;
		}
		
		if (onWall != 0)
		{ vsp = -12
		   jumps = 1;
		  hsp = onWall * walksp;
		  mvtlock = 10;
		}
	}
} else if(global.pause == 1) {hsp = 0; vsp = 0}

//horizontal collision section
if (place_meeting(x+hsp,y,ointeractController)) //checks 4 collison between object the step is in & specificed one
{
	while (!place_meeting(x+sign(hsp),y,ointeractController))//moving as close as you can
	{
	x = x + sign(hsp);	
	}
	
	hsp = 0;
	jumps = 0;
	mollystopper = true;
	
}
x = x + hsp;

//vetial collision section
if (place_meeting(x,y+vsp,ointeractController))
{
	while (!place_meeting(x,y+sign(vsp),ointeractController)) //this little bit of code fucked me and took 30 mins to fix
	{
	y = y + sign(vsp);
	}
	vsp = 0;
	jumps = 0;
	mollystopper = true;
}
y = y + vsp;

