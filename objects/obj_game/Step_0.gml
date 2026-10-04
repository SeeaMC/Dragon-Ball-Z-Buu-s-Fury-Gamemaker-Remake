if !audio_is_playing(obj_room_info.music)
{
	audio_stop_all()
	audio_play_sound(obj_room_info.music,0,1)
}

if nroom = room
{
	obj_player.x = X
	obj_player.y = Y
	nroom = "null"
}
