text = "..."
profile = "..."

textment = false;
textstart = false;
destroyme = false;
readonce = false;

scribble_font_set_default("fCozette");

textboxsprite = scribble("[scale,2][sTextBox][/scale]");
textprofilesprite = scribble("[sTextProfile]");

element4 = scribble(text).typewriter_in(0.3,1)
