_xx = camera_get_view_x(view_camera[0]) 
_yy = camera_get_view_y(view_camera[0])

if global.overlay != noone
{
	draw_sprite_ext(global.overlay, 0, _xx, _yy, 1.8, 1.8, 0, c_white, 1)
}

