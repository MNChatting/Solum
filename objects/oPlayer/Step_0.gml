//----------------------------------------------------------------
/// every frame this happens.
timer -= 1;

//escape will be moved later to pause
if(keyboard_check_pressed(ord("P")))
{
game_end()
}
//----------------------------------------------------------------
key_left = keyboard_check(vk_left) || (gamepad_axis_value(0,gp_axislh) < 0) ; //first function yellow text //vk = virtual keyboard
key_right = keyboard_check(vk_right) || (gamepad_axis_value(0,gp_axislh) > 0);
key_jump = keyboard_check_pressed(vk_space) || gamepad_button_check_pressed(0, gp_face1); //checking whether key is being pressed not held

var move = key_right - key_left; //this is so smart i am impressed as hell, excited to explain to lio
var onWall = place_meeting(x-5,y,ointeractController) - place_meeting(x+5,y,ointeractController);
var onWallExtra = place_meeting(x+5,y,ointeractController) - place_meeting(x-5,y,ointeractController);
var onGround = place_meeting(x,y+1,ointeractController);

var dash = keyboard_check_pressed(ord("Q")) ||  gamepad_button_check_pressed(0, gp_face2);

var InWater = place_meeting(x,y-16,oWater);
var onSlide = place_meeting(x,y+2,oSlide);

var Death = place_meeting(x,y+1,oDeath);
var Respawn = place_meeting(x,y,oRespawn);
//----------------------------------------------------------------
mvtlock = max(mvtlock - 1, 0);
dashduration = max(dashduration - 1, 0);

if (timer == 0)
{timer = room_speed; jacobstopper = true;}

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
 
 if(lastpressed = "left")
 {sprite_index = sPlayerDashL;}
 
  if(lastpressed = "right")
  {sprite_index = sPlayerDashR;}
}}
//----------------------------------------------------------------

if (onGround = 1 && move = 0 && sprite_index != sPlayerJumpR)
{ image_angle = 0;
	sprite_index = sPlayerIdle;}
	
if(onGround = 1 && move = 1)
{ image_angle = 0;
	sprite_index = sPlayerWalkinR;}
	
if(onGround = 1 && move = -1)
{ image_angle = 0;
	sprite_index = sPlayerWalkinL;}
	
if(onWall = 1 && onGround = 0 && lastpressed = "left" && sprite_index != sPlayerSlide)
{	image_angle = 0;
	sprite_index = sPlayerWallL;}

if(onWallExtra = 1 && onGround = 0 && lastpressed = "right" && sprite_index != sPlayerSlide)
{	image_angle = 0;
	sprite_index = sPlayerWallR;}

if(!onWall = 1 && !onGround = 1 && sprite_index = sPlayerWallL)
{sprite_index = sPlayerJumpL;}
if(!onWallExtra = 1 && !onGround = 1 && sprite_index = sPlayerWallR)
{sprite_index = sPlayerJumpR;}

if(InWater = 1 && swimunlocked == true)
{	image_angle = 0;
	sprite_index = sPlayerSwim;
	vsp = vsp - 1;
	vsp = min(vsp - 0.5, 2)
	jumps = 0;
}
//----------------------------------------------------------------
if(place_meeting(x,y+1,oUnlockSwim))
{ swimunlocked = true; }
//----------------------------------------------------------------
if(Respawn = 1)
{respawn_x = x; respawn_y = y;}

if (Death = 1)
{dying = true;
 sprite_index = sPlayerDeath;
 hsp = 0;
 vsp = 0;

	if(image_index > 8)
	{
	x = respawn_x;
	y = respawn_y;
	dying = false;
	}
}
//----------------------------------------------------------------
if (mvtlock <= 0 && dashduration <= 0 && global.pause == 0 && dying == false) // stop the player from jumping while moving
{
	if (onSlide = 1) // Need to change so theres two varients for left and right
		{
			image_angle = -45;
			sprite_index = sPlayerSlide;
			hsp = hsp + 5;
			vsp = vsp + 5;
		}
	else {
		hsp = move * walksp; //THIS IS THE MOVEMENT
		}
//----------------------------------------------------------------
	if (key_jump && jumps != jumpsmax) 
	{
		//audio_play_sound(jump,1,false);
		
		image_index = 0;
		//image_angle = 0;
		if(lastpressed = "left")
		{sprite_index = sPlayerJumpL;}
		if(lastpressed = "right")
		{sprite_index = sPlayerJumpR;}
		//----------------------------------------------------------------
		if (jumpsunlocked = true)
		{ if (jumps = 1)
		   {vsp = -8;
			jumps = 2;
			sprite_index = sPlayerDJump;
		    }
		}
		//----------------------------------------------------------------
		if (onGround = 1 && onSlide = 0)
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
//----------------------------------------------------------------
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
//----------------------------------------------------------------
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

