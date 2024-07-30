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
depth = obj_mouse.depth+100

if place_meeting(x, y, obj_mouse) && obj_health_manager.health_open == true && index > 9 && index <= 20 && obj_health_manager.health_tab == 2
{
	global.selected_part = index
	
}


heart_val += heartbeat/100