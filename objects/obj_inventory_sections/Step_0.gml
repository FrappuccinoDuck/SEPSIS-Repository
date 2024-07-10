x = camera_get_view_x(view_camera[0])+416
y = camera_get_view_y(view_camera[0])+64

if mouse_wheel_up()
{
	scroll_modifier += 1
} 
if mouse_wheel_down() && scroll_modifier > 0
{
	scroll_modifier -= 1
}

depth = -100