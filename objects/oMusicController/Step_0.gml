if !audio_is_playing(ApartmentTheme)
{
if(room == Apartment || room = Apartment2 || room = Apartment3)
{   audio_stop_all()
	audio_play_sound(ApartmentTheme, 5, true)}
else {audio_stop_sound(ApartmentTheme)}
}


if !audio_is_playing(MallTheme)
{
  if(room == Mall || room == Mall2)
{audio_stop_all()
	audio_play_sound(MallTheme, 5, true)}
else {audio_stop_sound(MallTheme)}
}

if !audio_is_playing(PowerTheme)
{
  if(room == PowerPlant)
{audio_stop_all()
	audio_play_sound(PowerTheme, 5, true)}
else {audio_stop_sound(PowerTheme)}
}