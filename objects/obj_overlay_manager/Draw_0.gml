_xx = camera_get_view_x(view_camera[0]) 
_yy = camera_get_view_y(view_camera[0])

if global.overlay != noone
{
	draw_sprite_ext(global.overlay, condition_to_val(global.face_mods[9]), _xx, _yy, 1.8, 1.8, 0, c_white, 1)
}

/*
if global.face_mods != noone
{
	if keyboard_check_pressed(vk_left)
	{
		global.face_mods[9] -= 25
	}
	if keyboard_check_pressed(vk_right)
	{
		global.face_mods[9] += 25
	}
}*/