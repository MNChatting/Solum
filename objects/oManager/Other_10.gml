/// @description Create UI
var _width = 600;
var _height = 200;

addthis = 20;

create_button(640, 180 + addthis, _width, _height, "Play", on_click); // <- Do not include ()

create_button(640, 450 + addthis, _width, _height, "Options", on_click);

create_button(640, 720 + addthis, _width, _height, "Quit", on_click);