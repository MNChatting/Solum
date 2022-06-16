scribble_font_set_default("fCozette");
element = scribble("[fa_centre][fa_middle][delay,500]I am Alone and I'm better off for it.").typewriter_in(0.1,1).typewriter_sound_per_char(Typing,1,0.80,1);

element.draw(room_width / 2, room_height / 2);

element2 = scribble("[delay,7000][fa_centre][fa_middle][delay,500]Thanks for playing our game").typewriter_in(0.1,1).typewriter_sound_per_char(Typing,1,0.80,1);

element2.draw(room_width / 2, (room_height / 2) + 50);
