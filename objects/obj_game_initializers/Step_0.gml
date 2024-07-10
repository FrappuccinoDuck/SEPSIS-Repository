if obj_health_manager.health_open == true
{
	obj_item_manager.stats_open = false	
}

if obj_item_manager.stats_open == true
{
	obj_health_manager.health_open = false
}



if fps > baseline_fps
{
	baseline_fps = fps
}
//show_debug_message(baseline_fps)
if baseline_fps == 60
{
	//show_debug_message("Load Complete")
}

if keyboard_check_pressed(ord("0"))
{
	layer_set_visible("Effect_1", !layer_get_visible("Effect_1"))
}
if keyboard_check_pressed(ord("9"))
{
	global.ui_show = !global.ui_show
}

if keyboard_check_pressed(vk_backspace)
{
	max_fps = 0
}