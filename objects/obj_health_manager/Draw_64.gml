_xx = camera_get_view_x(view_camera[0])
_yy = camera_get_view_y(view_camera[0])

if health_open == true
{

		
			if health_tab == 2
			{
				draw_sprite_ext(spr_main_character_model, 9, _xx+140.25, _yy+128, 2.5, 2.5, 0, c_white, 1)
			} 
			if health_tab == 0
			{
				draw_sprite_ext(spr_main_character_model, obj_item_manager.model_index, _xx+140.25, _yy+128, 2.5, 2.5, 0, c_white, 1)
			}
			if health_tab == 1
			{
				draw_sprite_ext(spr_main_character_model, 10, _xx+140.25, _yy+128, 2.5, 2.5, 0, c_white, 1)
				//draw_sprite_ext(spr_skeleton, 0, _xx+140.25, _yy+128, 2.5, 2.5, 0, c_white, 1)
			}
			
		
	
	layer_set_visible("health_ui", true)
	
	
	if health_tab == 2
	{
		layer_set_visible("health_tangibles_organs", true)
	} else
	{
		layer_set_visible("health_tangibles_organs", false)
		layer_set_visible("health_tangibles_dermal", true)
	}
	
	if health_tab == 1
	{
		instance_activate_layer("bone_tangibles")
	} else
	{
		instance_deactivate_layer("bone_tangibles")
	}
	
	
	layer_x("health_ui", _xx)
	layer_y("health_ui", _yy)
	layer_x("health_tangibles_dermal", _xx)
	layer_y("health_tangibles_dermal", _yy)
	layer_x("health_tangibles_organs", _xx)
	layer_y("health_tangibles_organs", _yy)
	
	// PIXEL OFFSET: 8 PIXELS
	draw_text(_xx+36, _yy+68, string($"Health: {health_sections[health_tab]}"))
	//draw_text(_xx+392, _yy+134, string($"Body Temp.           {global.body_temp} F"))
	if global.selected_part != noone
	{
		if health_tab != 1
		{
			//show_message(global.selected_part)
			draw_text(_xx+872, _yy+36, string($"{global.parts[global.selected_part]}"))
			//draw_text_ext(_xx+872, _yy+420, string($"Condition"), 20, 350)
			draw_text_ext(_xx+880, _yy+428, string($"{global.parts_desc[global.selected_part]}"), 22, 400)
		} 
	}
	if global.selected_bone != noone
	{
		if health_tab == 1
		{
			//show_message(global.selected_part)
			draw_text(_xx+872, _yy+36, string($"{global.skel_parts[global.selected_bone]}"))
			//draw_text_ext(_xx+872, _yy+420, string($"Condition"), 20, 350)
			draw_text_ext(_xx+880, _yy+428, string($"{global.skel_parts_desc[global.selected_bone]}"), 22, 400)
		} 
	}
	draw_sprite(spr_dot_counter, health_tab, _xx+320, _yy+48)
	
} else
{
	layer_set_visible("health_ui", false)
	layer_set_visible("health_tangibles_organs", false)
}

if timer <= fps
{
	timer += 1
} else
{
	timer = 0
	
	
	
	global.oxy = random_range(95, 100)
	
	if obj_player.xspd != 0 || obj_player.yspd != 0
	{
		global.player_energy -= ((player_weight*0.0005) + (obj_player.present_weight * random_range(0.3, 0.5))) + (global.arms_weight*0.00347)
		// sweat
		global.thirst -= random_range(0.278, 0.417)
		global.tiredness += 0.00058
		global.vit_a -= random_range(0.0125, 0.0156)
		global.thirst -=  random_range(0.02, 0.03)
		
	} else
	{
		global.player_energy -= (player_weight*0.00009) + (global.arms_weight*0.00347)
		// sweat
		global.thirst -= random_range(0.023, 0.032)
		global.vit_a -= 0.0104
		global.thirst -=  random_range(0.01, 0.015)
	}
	global.urine_volume +=  random_range(0.008, 0.01)
	// respiration
	global.thirst -= random_range(0.009, 0.014)
	
	global.tiredness += 0.00116
	
	if global.blood_levels >= 5000
	{
		global.blood_levels = 5000
		regenerating = false
	}
	if global.blood_levels < 5000
	{
		regenerating = true
		//if global.blood_levels_m-global.blood_levels
		global.blood_levels += random_range(75, 100)
		
		if global.blood_levels_m-global.blood_levels <= 100
		{
			global.iron -= 50 * ((global.blood_levels_m-global.blood_levels)/5000)
			global.folate -= 0.0004 * ((global.blood_levels_m-global.blood_levels)/5000)
			global.vit_c -= 0.1 * ((global.blood_levels_m-global.blood_levels)/5000)
			global.copper -= 0.01 * ((global.blood_levels_m-global.blood_levels)/5000)
			global.vit_a -= 0.8 * ((global.blood_levels_m-global.blood_levels)/5000)
			global.zinc -= 0.01 * ((global.blood_levels_m-global.blood_levels)/5000)
		} else
		{
			global.iron -= 50
			global.folate -= 0.0004
			global.vit_c -= 0.1
			global.copper -= 0.01
			global.vit_a -= 0.8
			global.zinc -= 0.01
		}
	}
	
	
}

if global.urine_volume >= 500
{
	global.urine_volume = 500
}

if global.face_wear != noone && global.face_wear.specs.short_name == "Gas Mask"
{
	layer_set_visible("Effect_2_1", true)
	layer_depth("Effect_2_1", layer_get_depth("gas_mask_overlay_ui")+1)
	if shader_timer < 1.5 && switch_over = false
	{
		shader_timer += 0.02
		fx_set_parameter(layer_get_fx("Effect_2_1"), "g_VignetteEdges", [2-shader_timer, 2])
		if shader_timer == 1.5
		{
			switch_over = true
		}
	}
	if shader_timer > 0 && switch_over = true
	{
		shader_timer -= 0.02
		fx_set_parameter(layer_get_fx("Effect_2_1"), "g_VignetteEdges", [2-shader_timer, 2])
		if shader_timer == 0
		{
			switch_over = false
		}
	}
} else
{
	layer_set_visible("Effect_2_1", false)
}

layer_set_visible("heartbeat_ui", true)
	layer_depth("heartbeat_ui", layer_get_depth("gas_mask_overlay_ui")-1)
	if hshader_timer < 1+((global.blood_levels_m-global.blood_levels)/global.blood_levels_m) && hswitch_over = false
	{
		hshader_timer += 0.05
		fx_set_parameter(layer_get_fx("heartbeat_ui"), "g_VignetteEdges", [2-hshader_timer, 2])
		if hshader_timer >= 1+((global.blood_levels_m-global.blood_levels)/global.blood_levels_m)
		{
			hswitch_over = true
		}
	}
	if hshader_timer > 0 && hswitch_over = true
	{
		hshader_timer -= 0.05
		fx_set_parameter(layer_get_fx("heartbeat_ui"), "g_VignetteEdges", [2-hshader_timer, 2])
		if hshader_timer <= 0
		{
			hswitch_over = false
		}
	}