char = "goku"
form = "b"
run = 0
dir = 0
look = "down"
spd = 1
runspd = 2.5
debug = 0
wspd = "walk"
move = 1

global.key_left = vk_left
global.key_right = vk_right
global.key_up = vk_up
global.key_down = vk_down
global.key_run = vk_shift

global.movement = global.key_left && global.key_down && global.key_right && global.key_up

directions = ds_list_create()

ds_list_add(directions, "down")
ds_list_add(directions, "up")
ds_list_add(directions, "side")
ds_list_add(directions, "side")

characters = ds_list_create()

ds_list_add(characters, "goku")
ds_list_add(characters, "vegeta")
ds_list_add(characters, "gohan")

forms = ds_list_create()

ds_list_add(forms, "b")
ds_list_add(forms, "s")
ds_list_add(forms, "s2")
ds_list_add(forms, "s3")
ds_list_add(forms, "g")
ds_list_add(forms, "bl")

instance_create_depth(x,y,0,obj_camera)