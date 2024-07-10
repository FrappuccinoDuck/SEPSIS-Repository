_xx = camera_get_view_x(view_camera[0]) 
_yy = camera_get_view_y(view_camera[0])

if global.settings_open == true
{
	
	layer_set_visible("settings_ui", true)
	layer_x("settings_ui", _xx)
	layer_y("settings_ui", _yy)
	
	draw_text(_xx+100, _yy+132, "Settings and Accessibility")
	
	draw_text_ext_transformed(_xx+100, _yy+196, "WASD Controls (Pickup hands changed to Q and E)", 20, 230, 0.9, 0.9, 0)
	draw_text_ext(_xx+100, _yy+294, "Hold to keep item in hand", 20, 200)
	draw_text_ext(_xx+100, _yy+390, "Open Debug with Ctrl", 20, 200)
	draw_text_ext(_xx+100, _yy+484, "Dynamic Lighting", 20, 200)
	draw_text_ext(_xx+100, _yy+580, "VSync", 20, 200)
	draw_text_ext(_xx+420, _yy+196, "Fullscreen", 20, 200)
	draw_text_ext(_xx+420, _yy+292, string($"Antialiasing ({antial_val})"), 20, 200)
	
	draw_sprite(spr_toggle, global.wasd_controls, _xx+320, _yy+192)
	draw_sprite(spr_toggle, global.hold_pickup, _xx+320, _yy+288)
	draw_sprite(spr_toggle, global.debug_toggle, _xx+320, _yy+384)
	draw_sprite(spr_toggle, global.dynamic_lighting, _xx+320, _yy+480)
	draw_sprite(spr_toggle, global.fullscreen, _xx+640, _yy+192)
	draw_sprite(spr_toggle, global.vsync, _xx+320, _yy+576)
	
	if mouse_x >= _xx+320 && mouse_x <= _xx+380 && mouse_check_button_pressed(mb_left)
	{
		if mouse_y >= _yy+192 && mouse_y <= _yy+255
		{
			global.wasd_controls = !global.wasd_controls
		}
		if mouse_y >= _yy+288 && mouse_y <= _yy+348
		{
			global.hold_pickup = !global.hold_pickup
		}
		if mouse_y >= _yy+384 && mouse_y <= _yy+445
		{
			global.debug_toggle = !global.debug_toggle
		}
		if mouse_y >= _yy+480 && mouse_y <= _yy+542
		{
			global.dynamic_lighting = !global.dynamic_lighting
		}
		if mouse_y >= _yy+576 && mouse_y <= _yy+635
		{
			global.vsync = !global.vsync
			display_reset(antial_val, global.vsync)
		}
	}
	if mouse_x >= _xx+640 && mouse_x <= _xx+704 && mouse_check_button_pressed(mb_left)
	{
		if mouse_y >= _yy+192 && mouse_y <= _yy+254
		{
			global.fullscreen = !global.fullscreen
		}
		if mouse_y >= _yy+286 && mouse_y <= _yy+354
		{
			if antial_val == 0
			{
				antial_val = 2
			} else
			{
				antial_val*=2
			}
			if antial_val > 8 
			{
				antial_val = 0
			}
			display_reset(antial_val, global.vsync)
		}
		
	}
	if global.wasd_controls == true
	{
		global.hold_pickup = false
		global.continuous_move = false
	} 
	if global.hold_pickup == true
	{
		global.wasd_controls = false
	}
	if global.continuous_move == true
	{
		global.wasd_controls = false
	}
	if global.fullscreen == true
	{
		window_set_fullscreen(true)
	} else
	{
		window_set_fullscreen(false)
	}
	
} else
{
	layer_set_visible("settings_ui", false)
}
