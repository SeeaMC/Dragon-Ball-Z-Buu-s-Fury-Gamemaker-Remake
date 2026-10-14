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

if instance_exists(obj_fade) && obj_fade.state = 1
{
	obj_camera.x = obj_player.x
	obj_camera.y = obj_player.y
}

lar = window_get_width()
alt = window_get_height()
proporcao = lar/alt
altura = 180
largura = round(altura*proporcao)
camera_set_view_size(view_camera[0], largura, altura)
display_set_gui_size(largura, altura)
display_set_gui_maximize()