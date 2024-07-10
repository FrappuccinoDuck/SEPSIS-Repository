_xx = camera_get_view_x(view_camera[0]) 
_yy = camera_get_view_y(view_camera[0])


if timer >= timer_max
{
	instance_destroy()
} else
{
	timer += 1
	draw_sprite_ext(spr_ui_no_grid_opaque, 0, _xx+x, _yy+y, 5, 0.5, 0, c_white, 1)
	draw_text(_xx+x+4, _yy+y+4, notification)
}



