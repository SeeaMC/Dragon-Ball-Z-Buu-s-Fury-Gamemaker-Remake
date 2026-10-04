sprite = form+char

if keyboard_check_pressed(vk_f3)
{
	if debug = 1
	{
		debug = 0
	}
	else
	{
		debug = 1
	}
}

if keyboard_check_released(global.movement) && move = 1
{
	look = ds_list_find_value(directions, dir)
	sprite_index = asset_get_index("spr_"+sprite+"_idle_"+look)
}

var _left = keyboard_check(global.key_left)
var _right = keyboard_check(global.key_right)
var _up = keyboard_check(global.key_up)
var _down = keyboard_check(global.key_down)
var _hspd = _right - _left;
var _vspd = _down - _up;

if (_hspd != 0 || _vspd != 0) && move = 1
{
	var _spd = spd
	wspd = "walk"
	if keyboard_check(global.key_run) && keyboard_check(global.movement)
	{
		var _spd = spd*runspd
		wspd = "run"
	}
    var _dir = point_direction(0, 0, _hspd, _vspd)
    xadd = lengthdir_x(_spd, _dir)
    yadd = lengthdir_y(_spd, _dir)
    x = x + xadd
    y = y + yadd
	
	look = ds_list_find_value(directions, dir)	
	if sign(yadd) > 0
	{
		dir = 0
	}
	else if sign(yadd) < 0
	{
		dir = 1
	}
	if sign(xadd) > 0
	{
		dir = 3
	}
	else if sign(xadd) < 0
	{
		dir = 2
	}
	sprite_index = asset_get_index("spr_"+sprite+"_"+wspd+"_"+look)
	yadd = 0
	xadd = 0
}

if dir = 2
{
	image_xscale = -1
}
else
{
	image_xscale = 1
}