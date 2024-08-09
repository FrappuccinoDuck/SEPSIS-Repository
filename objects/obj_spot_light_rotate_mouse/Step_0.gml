/// @desc Rotate

x = obj_player.x
y = obj_player.y

if obj_item_manager.function_wheel == false && obj_item_manager.function_wheel_health == false && obj_item_manager.function_wheel_strip == false
{
	light[| eLight.Direction] = point_direction(x, y, mouse_x, mouse_y)
}

if keyboard_check_pressed(vk_tab) 
{
light[| eLight.X] = x
light[| eLight.Y] = y

move_towards_point(mouse_x, mouse_y, 5)
} else
{
	speed = 0
	light[| eLight.X] = x
	light[| eLight.Y] = y
}