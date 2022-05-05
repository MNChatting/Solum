//at games intitainal
hsp = 0; //horistal speed //both set as 0 so character isnt moving at start //these are variables
vsp = 0; //vertial speed
grv = 0.5; //gravity
walksp = 4; //walk speed

mvtlock = 0; //stops the player from bugging wall jump

dashspd = 15;
dashduration = 0;

jumps = 0;
jumpsmax = 2;
mollystopper = true;
jacobstopper = true;

respawn_x = x;
respawn_y = y;
dying = false;

jumpsunlocked = true;
dashunlocked = true;
swimunlocked = false;

room_speed = 60;
timer = room_speed;
