camX = camera_get_view_x(view_camera[0])
camY = camera_get_view_y(view_camera[0])

if(layer_exists("Powerplant4"))
{
layer_x("Powerplant4",camX/20);
}

if(layer_exists("Powerplant3"))
{
layer_x("Powerplant3",camX/15);
}

if(layer_exists("Powerplant2"))
{
layer_x("Powerplant2",camX/10);
}

if(layer_exists("Powerplant1"))
{
layer_x("Powerplant1",camX/5);
}