if keyboard_check(global.key_run)
{
	spd = 0.102
}
if x = obj_player.x && obj_player.y
{
	spd = 0.25
}
if instance_exists(obj_fade)
{
	spd= 1
}

x = lerp(x, obj_player.x, spd)
y = lerp(y, obj_player.y, spd)