scribble_font_set_default("fCozette");
element = scribble("[fa_centre][fa_middle][delay,500]i am alone").typewriter_in(0.1,1).typewriter_sound_per_char(Typing,1,0.80,1);
element.draw(room_width / 2, room_height / 2);



element = scribble("[fa_centre][fa_middle][delay,2200]press[sPressDown]to start").typewriter_in(0.1,1).typewriter_sound_per_char(Typing,1,0.80,1);
element.draw(room_width / 2, (room_height / 4) * 3);

//scribble("please work").draw(room_width / 2, room_height / 2, typist);
