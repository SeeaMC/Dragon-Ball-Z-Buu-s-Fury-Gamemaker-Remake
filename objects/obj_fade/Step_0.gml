look = ds_list_find_value(obj_player.directions, dir)

if running = 1
{
	wspd = "run"
}
else
{
	runspd = 1
	wspd = "walk"
}
if (state == 0)
{
	timer ++
	
	if dir = 0
	{
		obj_player.y += spd*runspd
	}
	if dir = 1
	{
		obj_player.y -= spd*runspd
	}
	if dir = 2
	{
		obj_player.x -= spd*runspd
	}
	if dir = 3
	{
		obj_player.x += spd*runspd
	}
	
	obj_player.dir = dir
	obj_player.sprite_index = (asset_get_index("spr_"+sprite+"_"+wspd+"_"+look))
	
	if (timer >= duration)
	{
		room_goto(targetroom)
		state = 1
	}
}
else if (state == 1) 
{
	timer --
	
	if (timer <= 0)
	{
		obj_player.move = 1
		instance_destroy()
	}
}

alpha = timer / duration