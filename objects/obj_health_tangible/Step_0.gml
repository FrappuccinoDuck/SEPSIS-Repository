if place_meeting(x, y, obj_mouse) && obj_health_manager.health_open == true && index <= 9 && obj_health_manager.health_tab == 0
{
	global.selected_part = index
	background_color = c_white
}

/*if place_meeting(x, y, obj_mouse) && obj_health_manager.health_open == true && 
{
	global.selected_part = index

}

*/
if place_meeting(x, y, obj_mouse) && obj_health_manager.health_open == true && index > 9 && index <= 19 && obj_health_manager.health_tab == 2
{
	global.selected_part = index
	
}

heart_val += heartbeat/100