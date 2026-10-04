if place_meeting(x,y,obj_player) && !instance_exists(obj_fade)
{
	if keyboard_check(global.key_run)
	{
		running = 1 
	}
	else
	{
		running = 0
	}
	obj_game.nroom = nroom
	obj_game.X = X
	obj_game.Y = Y
	Fade_to_room(nroom, 27, c_black, dir, running)
}