

if keyboard_check_pressed(obj_game_initializers.page_navigation_l) && health_tab > 0
{
	health_tab -= 1
}

if keyboard_check_pressed(obj_game_initializers.page_navigation_r) && health_tab < 2
{
	health_tab += 1	
}

