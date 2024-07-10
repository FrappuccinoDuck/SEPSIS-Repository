_xx = camera_get_view_x(view_camera[0]) 
_yy = camera_get_view_y(view_camera[0])

if mouse_wheel_down()
{
	scroll_value -= 10
} 
if mouse_wheel_up() && scroll_value < 10
{
	scroll_value += 10
}

layer_x("main_stats_ui", _xx)
layer_y("main_stats_ui", _yy)

if keyboard_check_pressed(vk_escape)
{
	global.settings_open = !global.settings_open
}