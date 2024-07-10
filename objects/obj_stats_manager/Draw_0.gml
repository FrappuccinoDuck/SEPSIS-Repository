_xx = camera_get_view_x(view_camera[0]) 
_yy = camera_get_view_y(view_camera[0])


/*if obj_item_manager.stats_open == true || obj_health_manager.health_open == true
{
	layer_set_visible("main_stats_ui", false)
} else if obj_item_manager.stats_open == false || obj_health_manager.health_open == false
{
	layer_set_visible("main_stats_ui", true)
	
	draw_text(_xx+1160, _yy+40, "Time")
	
	if global.left_hand_item == global.item_list.watch || global.right_hand_item == global.item_list.watch || global.left_wrist == global.item_list.watch || global.right_wrist == global.item_list.watch
	{
		draw_sprite_ext(spr_clock, 0, _xx+1232, _yy+160, 2, 2, 0, c_white, 1)
		draw_sprite_ext(spr_clock_hour, 0, _xx+1232, _yy+160, 1.5, 1.5, current_hour*-30, c_white, 1)
		draw_sprite_ext(spr_clock_minute, 0, _xx+1232, _yy+160, 1.5, 1.5, current_minute*-6, c_white, 1)
		draw_sprite_ext(spr_clock_second, 0, _xx+1232, _yy+160, 1.5, 1.5, current_second*-6, c_white, 1)
	}

	draw_text(_xx+1160, _yy+264, "-Temperature-")
	draw_text(_xx+1160, _yy+284, string($"{global.temperature} F"))

	draw_text(_xx+872, _yy+584, "Event Time")
	draw_text(_xx+1064, _yy+584, "Memory")
	
	for(var i = 0; i < array_length(global.memory); i++)
	{
		
		if _yy+638-20*i+20*array_length(global.times)+scroll_value-10 > _yy+ 650
		{
			
			draw_text_ext_transformed(_xx+872, _yy+628-20*i+20*array_length(global.times)+scroll_value-10, global.times[i], 20, 350, 0.8, 0.8, 0)
			draw_text_ext_transformed(_xx+1064, _yy+628-20*i+20*array_length(global.memory)+scroll_value-10, global.memory[i], 20, 350, 0.8, 0.8, 0)
		}
	}

}*/

if obj_item_manager.stats_open == false && obj_health_manager.health_open == false
{
	if global.left_hand_item == global.item_list.watch || global.right_hand_item == global.item_list.watch || global.left_wrist == global.item_list.watch || global.right_wrist == global.item_list.watch
	{
		draw_sprite_ext(spr_clock, 0, _xx+1232+68, _yy+160-96, 2, 2, 0, c_white, 1)
		draw_sprite_ext(spr_clock_hour, 0, _xx+1232+68, _yy+160-96, 1.5, 1.5, current_hour*-30, c_white, 1)
		draw_sprite_ext(spr_clock_minute, 0, _xx+1232+68, _yy+160-96, 1.5, 1.5, current_minute*-6, c_white, 1)
		draw_sprite_ext(spr_clock_second, 0, _xx+1232+68, _yy+160-96, 1.5, 1.5, current_second*-6, c_white, 1)
	}
}
