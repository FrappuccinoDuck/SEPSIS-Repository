_xx = 0
_yy = 0


if timer >= timer_max
{
	instance_destroy()
} else
{
	timer += 1
	draw_sprite_ext(spr_ui_no_grid_opaque, 0, _xx, _yy, 5, 0.5, 0, c_white, 1)
	draw_text(_xx+4, _yy+4, notification)
}



