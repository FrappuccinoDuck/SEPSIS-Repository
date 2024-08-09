
if obj_item_manager.stats_open == false && obj_player.dead == false && global.settings_open == false && obj_health_manager.health_open == false && obj_item_manager.player_stats == false && obj_item_manager.function_wheel == false && obj_item_manager.function_wheel_health == false && obj_item_manager.function_wheel_strip == false
{
	var S_smooth
	S_smooth = round(point_distance(window_get_width()/2, window_get_height()/2, window_mouse_get_x(), window_mouse_get_y()))
	if (S_smooth > L_discap/L_mratio) && (L_discapc = 1) {S_smooth = L_discap/L_mratio}
	L_disout = S_smooth*L_mratio

	var S_air = degtorad(point_direction(obj_player.x, obj_player.y, mouse_x, mouse_y))
	x = obj_player.x + (L_disout*cos(S_air))
	y = obj_player.y - (L_disout*sin(S_air))
}


