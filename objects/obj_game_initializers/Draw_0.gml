_xx = camera_get_view_x(view_camera[0]) + 50
_yy = camera_get_view_y(view_camera[0]) 
draw_set_font(fnt_main)
if baseline_fps < max_fps
{
	draw_sprite_ext(spr_ui_no_grid_opaque, 0, _xx - 50, _yy, 100, 100, 0, c_white, 1)
	draw_sprite_ext(spr_ui_no_grid_opaque, 0, _xx - 50, _yy, 15, 0.5, 0, c_white, 1)
	draw_text(_xx+4- 50, _yy+4, "Developer: Frappuccino Duck || Studio: Neckbyrd Games || Team: Team Titanium || (2024)")
}

if timer <= 75
{
	draw_sprite_ext(spr_ui_no_grid_opaque, 0, _xx+320, _yy+260, 10, 1, 0, c_white, 1)
	draw_text(_xx+326, _yy+265, "Loading SEPSIS BETA - November Build 3 (Backspace to Skip)")
	
	draw_sprite_ext(spr_ui_no_grid_opaque, 0, _xx+320, _yy+300, 10, 1, 0, c_white, 1)
	draw_sprite_ext(spr_bar_load, spin_timer, _xx+320, _yy+300, baseline_fps/3*(32/33), 1, 0, c_white, 1)
	draw_sprite_ext(spr_load, spin_timer, _xx+630, _yy+460, 4, 4, 0, c_white, 1)
	draw_text(_xx+324, _yy+336, string($"FPS: {fps} - BASELINE: {baseline_fps}/{max_fps}"))
	
	line_change_timer += 1
	if line_change_timer >= 50
	{
		randomize()
		line_change_timer = 0
		chosen_line = irandom(array_length(load_lines)-1)
	}
	draw_set_halign(fa_center)
	draw_sprite_ext(spr_ui_no_grid_blue, 0, _xx+320, _yy+363, 10, 0.5, 0, c_white, 1)
	draw_text(_xx+630, _yy+370, load_lines[chosen_line])
	draw_set_halign(fa_left)
	
	if baseline_fps >= max_fps
	{
		draw_text(_xx+324, _yy+302, "Load Complete")
		timer += 1
	} 
	
}

spin_timer += 0.25


