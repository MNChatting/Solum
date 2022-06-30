if(global.dashunlocked == true)
{
 object_set_visible(oPressDash, true);
} else
{
object_set_visible(oPressDash, false);
}

if(place_meeting(x,y,oPlayer))
{sprite_index = sPressDash}
else
{sprite_index = sBlank}
