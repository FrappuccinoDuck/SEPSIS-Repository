_xx = camera_get_view_x(view_camera[0]) 
_yy = camera_get_view_y(view_camera[0])

if global.overlay != noone
{
	draw_sprite(global.overlay, 0, _xx, _yy)
}

