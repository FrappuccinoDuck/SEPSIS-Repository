_xx = camera_get_view_x(view_camera[0]) 
_yy = camera_get_view_y(view_camera[0])



if place_meeting(x, y, obj_mouse) && obj_item_manager.stats_open == false && obj_health_manager.health_open == false && obj_item_manager.function_wheel == false && obj_item_manager.player_stats == false
{
	//show_debug_message(item)
	//outline_start(2, c_black)
	draw_self()
	if type == "Object" 
	{
		//outline_end()
		//depth = -infinity
		//show_debug_message(item)
		//draw_sprite_ext(spr_ui_no_grid_opaque, 0, _xx+16, _yy+16, 3, 0.5, 0, c_white, 1)
		//draw_text_transformed(_xx+24, _yy+24, object.name, 1, 1, 0)
		global.hover_obj_timer = 0
		global.hover_obj = object
		
		global.selected_obj = object
		//show_debug_message(global.selected_obj)
		/*if keyboard_check_pressed(obj_game_initializers.surface_inspect_key)
		{
			//show_debug_message(global.selected_surface.name)
			//show_debug_message(object.name)
			layer_set_visible("close_inspect_inworld_ui", true)
			layer_x("close_inspect_inworld_ui", _xx)
			layer_y("close_inspect_inworld_ui", _yy)
		} 
		if keyboard_check_released(obj_game_initializers.surface_inspect_key)
		{
			layer_set_visible("close_inspect_inworld_ui", false)
		}*/
		
		
	} else if type == "Surface"
	{
		global.selected_surface = surface
	} else if type == "Item"
	{
		//depth = -infinity
		
		//show_debug_message(item)
		global.hover_timer = 0
		global.hover_item = item
		for(var i = 0; i < array_length(modifier); i++)
		{
			global.hover_modifiers[i] = modifier[i]
		}
		//draw_sprite_ext(spr_ui_no_grid_opaque, 0, _xx+16, _yy+16, string_length(item.name)/4.5, 0.5, 0, c_white, 1)
		
		//draw_text_transformed(_xx+24, _yy+24, item.name, 1, 1, 0)
	}
} else
{
	//outline_end()
	if place_meeting(x, y, obj_view_collider) && obj_item_manager.stats_open == false && obj_item_manager.player_stats == false && obj_health_manager.health_open == false
	{
		draw_self()
	}
	if type == "Surface"
	{
		depth = layer_get_depth("ground_objects")
	} else
	{
		depth = layer_get_depth("Instances")
	}


}

if global.selected_obj != noone && type == "Object"
{
	//show_debug_message(selected_obj)
}

if global.selected_obj == global.obj_list.crate
{
	global.effect_list.apple_effect.w4n = "Apple-Crate Func1"
	global.effect_list.pipe_effect.w4n = "Pipe-Crate Func1"
	global.effect_list.apple_effect.w4 = function(){show_debug_message("apple to crate")}
	global.effect_list.pipe_effect.w4 = function(){show_debug_message("pipe to crate")}
} else
{
	global.effect_list.apple_effect.w4n = "NA"
	global.effect_list.pipe_effect.w4n = "NA"
	global.effect_list.apple_effect.w4 = function(){show_debug_message("w4")}
	global.effect_list.pipe_effect.w4 = function(){show_debug_message("w5")}
}

/*
if !place_meeting(x, y, obj_mouse)
{
	global.hover_item = noone
}*/


if obj_item_manager.using_hand == 0 && global.left_hand_item != noone && obj_item_manager.left_modifiers[29] == global.item_list.laser && obj_item_manager.left_modifiers[34] == true
{
	//draw_line_width_color(obj_player.x, obj_player.y, mouse_x, mouse_y, 1, c_red, c_red)
	draw_sprite_ext(spr_laser_line, 0, obj_player.x, obj_player.y, 1000, 1, obj_player.image_angle, c_white, 1)
}
if obj_item_manager.using_hand == 1 && global.right_hand_item != noone && obj_item_manager.right_modifiers[29] == global.item_list.laser && obj_item_manager.right_modifiers[34] == true
{
	//draw_line_width_color(obj_player.x, obj_player.y, mouse_x, mouse_y, 1, c_red, c_red)
	draw_sprite_ext(spr_laser_line, 0, obj_player.x, obj_player.y, 1000, 1, obj_player.image_angle, c_white, 1)
}