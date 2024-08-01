_xx = camera_get_view_x(view_camera[0]) 
_yy = camera_get_view_y(view_camera[0])

global.fnt_big = font_add_sprite_ext(spr_big_font, "ABCDEFGHIJKLMNOPQRSTUVWXYZ.!?1234567890", true, 2);
global.fnt_main = font_add_sprite_ext(spr_small_font, "AaBbCcDdEeFfGgHhIiJjKkLlMmNnOoPpQqRrSsTtUuVvWwXxYyZz!?.,:;#@$%^&*()-_+={}[]|\/'1234567890", true, 1);
draw_set_font(fnt_main)
//font_enable_sdf(fnt_main, true)

if prague == true
{
	if sound_start == false
	{
		audio_play_sound(snd_cries_of_prague, 1, 1)
		audio_play_sound(snd_screams_of_prague, 1, 1)
		audio_play_sound(snd_static_of_prague, 1, 1)
		show_message("Remove us from our flesh, reap the nomads, reconcile with the line")
		sound_start = true
	}
	video = video_open("cries.mp4")
	video_enable_loop(true)
	var _video_data = video_draw()
	var _video_status = _video_data[0]
	if (_video_status == 0)
	{
		draw_surface(_video_data[1], _xx, _yy)
	}
}

if (stats_open == true || obj_health_manager.health_open == true || player_stats == true) && global.settings_open == false
{
	throwing = false
	if sound_init == false
	{
		sound_init = true
		audio_play_sound(snd_menu2, 1, 0)
	}
	scoped = false
	
	if stats_open == true 
	{
		layer_x("inventory_ui", camera_get_view_x(view_camera[0]))
		layer_y("inventory_ui", camera_get_view_y(view_camera[0]))
	
		layer_set_visible(layer_get_id("inventory_ui"), true)
	} else
	{
		//layer_x("inventory_ui", camera_get_view_x(view_camera[0]))
		//layer_y("inventory_ui", camera_get_view_y(view_camera[0]))
		layer_set_visible(layer_get_id("inventory_ui"), false)
	}
	
	
	// 8 PIXEL OFFSET
	
	if stats_open == true
	{
		draw_sprite(spr_dot_counter, nutrition_page, _xx+1243, _yy+404)
	}
	
	
	if close_inspect == false
	{
		
	if stats_open == true
	{
		draw_text(_xx+36, _yy+68, string($"Inventory & Armor                         [{obj_player.present_weight}/{global.max_carry_weight} lbs.]"))
	} else
	{
		//draw_text(_xx+36, _yy+68, string($"Health Management"))
	}
	
	
	if player_stats == true
	{
		layer_set_visible("stats_ui", true)
		
		draw_text(_xx+38, _yy+72, "Player NUTRITION Stats")
	
		draw_text(_xx+40, _yy+136, "(k) Calories")
		draw_sprite_ext(spr_bar, 0, _xx+32, _yy+192, global.player_energy/global.energy_m*5, 1, 0, c_white, 1)
		draw_text(_xx+40, _yy+200, string($"{global.player_energy}/{global.energy_m} kcal."))
	
		draw_text(_xx+40, _yy+296, "Fat")
		draw_sprite_ext(spr_bar, 0, _xx+32, _yy+352, global.player_fat/global.fat_m*5, 1, 0, c_white, 1)
		draw_text(_xx+40, _yy+360, string($"{global.player_fat}/{global.fat_m} grams"))
	
		draw_text(_xx+40, _yy+456, "Om-3 Fatty Acids")
		draw_sprite_ext(spr_bar, 0, _xx+32, _yy+512, global.player_om3/global.om3_m*5, 1, 0, c_white, 1)
		draw_text(_xx+40, _yy+520, string($"{global.player_om3}/{global.om3_m} grams"))
	
		draw_text(_xx+40, _yy+616, "Carbohydrates")
		draw_sprite_ext(spr_bar, 0, _xx+32, _yy+672, global.player_carbohydrates/global.carbohydrate_m*5, 1, 0, c_white, 1)
		draw_text(_xx+40, _yy+680, string($"{global.player_carbohydrates}/{global.carbohydrate_m} grams"))
	
	
		draw_text(_xx+264, _yy+136, "Sugars")
		draw_sprite_ext(spr_bar, 0, _xx+256, _yy+192, global.player_free_sugars/global.free_sugars_m*5, 1, 0, c_white, 1)
		draw_text(_xx+264, _yy+200, string($"{global.player_free_sugars}/{global.free_sugars_m} grams"))
	
		draw_text(_xx+264, _yy+296, "Protein")
		draw_sprite_ext(spr_bar, 0, _xx+256, _yy+352, global.player_protein/global.protein_m*5, 1, 0, c_white, 1)
		draw_text(_xx+264, _yy+360, string($"{global.player_protein}/{global.protein_m} grams"))
	
		draw_text(_xx+264, _yy+456, "Fiber")
		draw_sprite_ext(spr_bar, 0, _xx+256, _yy+512, global.player_fiber/global.fiber_m*5, 1, 0, c_white, 1)
		draw_text(_xx+264, _yy+520, string($"{global.player_fiber}/{global.fiber_m} grams"))
	
		draw_text(_xx+264, _yy+616, "Salt")
		draw_sprite_ext(spr_bar, 0, _xx+256, _yy+672, global.player_salt/global.salt_m*5, 1, 0, c_white, 1)
		draw_text(_xx+264, _yy+680, string($"{global.player_salt}/{global.salt_m} grams"))



		draw_text(_xx+488, _yy+72, "Player VITAMIN & MINERAL Stats")
	
		draw_sprite_ext(spr_bar, 0, _xx+480, _yy+128, global.vit_a/global.vit_a_m*5, 1, 0, c_white, 1)
		draw_text(_xx+488, _yy+136, "Vitamin A")
		
		draw_sprite_ext(spr_bar, 0, _xx+480, _yy+192, global.thiamin/global.thiamin_m*5, 1, 0, c_white, 1)
		draw_text(_xx+488, _yy+200, "Thiamin")
	
		draw_sprite_ext(spr_bar, 0, _xx+480, _yy+288, global.rivoflavin/global.rivo_m*5, 1, 0, c_white, 1)
		draw_text(_xx+488, _yy+296, "Rivoflavin")
		
		draw_sprite_ext(spr_bar, 0, _xx+480, _yy+352, global.niacin/global.niacin_m*5, 1, 0, c_white, 1)
		draw_text(_xx+488, _yy+360, "Niacin")
	
		draw_sprite_ext(spr_bar, 0, _xx+480, _yy+448, global.vit_e/global.vit_e_m*5, 1, 0, c_white, 1)
		draw_text(_xx+488, _yy+456, "Vitamin E")
		
		draw_sprite_ext(spr_bar, 0, _xx+480, _yy+512, global.folate/global.folate_m*5, 1, 0, c_white, 1)
		draw_text(_xx+488, _yy+520, "Folate")
	
		draw_sprite_ext(spr_bar, 0, _xx+480, _yy+608, global.vit_k/global.vit_k_m*5, 1, 0, c_white, 1)
		draw_text(_xx+488, _yy+616, "Vitamin K")
		
		draw_sprite_ext(spr_bar, 0, _xx+480, _yy+672, global.vit_c/global.vit_c_m*5, 1, 0, c_white, 1)
		draw_text(_xx+488, _yy+680, "Vitamin C")
	
		// RIGHT SECTION 
		
		draw_sprite_ext(spr_bar, 0, _xx+704, _yy+128, global.vit_d/global.vit_d_m*5, 1, 0, c_white, 1)
		draw_text(_xx+712, _yy+136, "Vitamin D")
		
		draw_sprite_ext(spr_bar, 0, _xx+704, _yy+192, global.calcium/global.calc_m*5, 1, 0, c_white, 1)
		draw_text(_xx+712, _yy+200, "Calcium")
		
		draw_sprite_ext(spr_bar, 0, _xx+704, _yy+288, global.phosph/global.phosph_m*5, 1, 0, c_white, 1)
		draw_text(_xx+712, _yy+296, "Phosphorous")
		
		draw_sprite_ext(spr_bar, 0, _xx+704, _yy+352, global.magnesium/global.magnesium_m*5, 1, 0, c_white, 1)
		draw_text(_xx+712, _yy+360, "Magnesium")
	
		draw_sprite_ext(spr_bar, 0, _xx+704, _yy+448, global.potass/global.potass_m*5, 1, 0, c_white, 1)
		draw_text(_xx+712, _yy+456, "Potassium")
		
		draw_sprite_ext(spr_bar, 0, _xx+704, _yy+512, global.iron/global.iron_m*5, 1, 0, c_white, 1)
		draw_text(_xx+712, _yy+520, "Iron")
	
		draw_sprite_ext(spr_bar, 0, _xx+704, _yy+608, global.zinc/global.zinc_m*5, 1, 0, c_white, 1)
		draw_text(_xx+712, _yy+616, "Zinc")
		
		draw_sprite_ext(spr_bar, 0, _xx+704, _yy+672, global.copper/global.copper_m*5, 1, 0, c_white, 1)
		draw_text(_xx+712, _yy+680, "Copper")
	
	
	
		draw_text(_xx+936, _yy+72, "Player HEALTH Stats")
	
		draw_text(_xx+936, _yy+136, "Blood Levels")
		draw_sprite_ext(spr_bar, 0, _xx+928, _yy+192, global.blood_levels/global.blood_levels_m*5, 1, 0, c_white, 1)
		draw_text(_xx+936, _yy+200, string($"{global.blood_levels}/{global.blood_levels_m} mL"))
	
		draw_text(_xx+936, _yy+296, "Conciousness")
		draw_sprite_ext(spr_bar, 0, _xx+928, _yy+352, global.consioucness/global.consioucness_m*5, 1, 0, c_white, 1)
		draw_text(_xx+936, _yy+360, string($"{global.consioucness}/{global.consioucness_m}"))
	
		draw_text(_xx+936, _yy+456, "Adrenaline")
		draw_sprite_ext(spr_bar, 0, _xx+928, _yy+512, global.adrenaline/global.adrenaline_m*5, 1, 0, c_white, 1)
		draw_text(_xx+936, _yy+520, string($"{global.adrenaline}/{global.adrenaline_m} ng"))
	
		draw_text(_xx+936, _yy+616, "Oxygen (SpO2)")
		draw_sprite_ext(spr_bar, 0, _xx+928, _yy+672, global.oxy/global.oxy_m*5, 1, 0, c_white, 1)
		draw_text(_xx+936, _yy+680, string($"{global.oxy}/{global.oxy_m}%"))
	
	
		draw_text(_xx+1160, _yy+136, "Thirst (H20)")
		draw_sprite_ext(spr_bar, 0, _xx+1152, _yy+192, global.thirst/global.thirst_m*5, 1, 0, c_white, 1)
		draw_text(_xx+1160, _yy+200, string($"{global.thirst}/{global.thirst_m} L"))
	
		draw_text(_xx+1160, _yy+296, "Tiredness")
		draw_sprite_ext(spr_bar, 0, _xx+1152, _yy+352, global.tiredness/global.tiredness_m*5, 1, 0, c_white, 1)
		draw_text(_xx+1160, _yy+360, string($"{global.tiredness}/{global.tiredness_m}%"))
	
		draw_text(_xx+1160, _yy+456, "Hygiene")
		draw_sprite_ext(spr_bar, 0, _xx+1152, _yy+512, global.hygiene/global.hygiene_m*5, 1, 0, c_white, 1)
		draw_text(_xx+1160, _yy+520, string($"{global.hygiene}/{global.hygiene_m}%"))
	
		draw_text(_xx+1160, _yy+616, "Cal. Expenditure")
		draw_sprite_ext(spr_bar, 0, _xx+1152, _yy+672, global.metabolism/global.metabolism_m*5, 1, 0, c_white, 1)
		draw_text(_xx+1160, _yy+680, string($"{global.metabolism}/{global.metabolism_m} cal./min."))
	
	} else
	{
		layer_set_visible("stats_ui", false)
	}
	
	
	
	for(var i = 0; i < array_length(spr_arr); i++)
	{
		
		if rot_arr[i] == 0
		{
			draw_set_alpha(0.5)
			draw_rectangle_color(x_arr[i]+_xx, y_arr[i]+_yy, x_arr[i]+_xx+sizex_arr[i], y_arr[i]+_yy+sizey_arr[i], c_grey, c_grey, c_grey, c_grey, false)
			draw_set_alpha(1)
			draw_text_transformed(x_arr[i]+_xx, y_arr[i]+_yy, spr_arr[i].specs.amount, 1, 1, 1)
		} else
		{
			draw_set_alpha(0.5)
			draw_rectangle_color(x_arr[i]+_xx+sizey_arr[i], y_arr[i]+_yy, x_arr[i]+_xx-sizey_arr[i]+sizey_arr[i], y_arr[i]+_yy-sizex_arr[i], c_grey, c_grey, c_grey, c_grey, false)
			draw_set_alpha(1)
			draw_text_transformed(x_arr[i]+_xx, y_arr[i]+_yy-sizex_arr[i], spr_arr[i].specs.amount, 1, 1, 1)
		}
		draw_sprite_ext(spr_arr[i].spr, 1, x_arr[i]+_xx, y_arr[i]+_yy, 1, 1, rot_arr[i], c_white, 1)
	}
	}

	
	if inspection_item == noone
	{
		if stats_open == true
		{
			draw_sprite_ext(spr_main_character_model, model_index, _xx+140.25, _yy+128, 2.5, 2.5, 0, c_white, 1)
		} 
		if obj_health_manager.health_open == true
		{
			if obj_health_manager.health_tab == 2
			{
				draw_sprite_ext(spr_main_character_model, 9, _xx+140.25, _yy+128, 2.5, 2.5, 0, c_white, 1)
			} else
			{
				draw_sprite_ext(spr_main_character_model, model_index, _xx+140.25, _yy+128, 2.5, 2.5, 0, c_white, 1)
			}
		}
	}

	if global.mouse_item != noone && stats_open == true
	{
		if mouse_x >= _xx+320 && mouse_x <= _xx+384 && mouse_y >= _yy+256 && mouse_y <= _yy+320 && (global.mouse_item.specs.item_type == "Armor" || global.mouse_item.specs.item_type == "Firearm") && global.mouse_item.armor != noone && global.mouse_item.armor.location == "Shoulder" && global.lshoulder == noone
			{
				
				if mouse_check_button_pressed(mb_left)
				{
					
					array_push(global.clothing_arr, global.mouse_item)
					global.lshoulder  = global.mouse_item
					global.mouse_item = noone
					global.lshoulder_arr = selected_array[using_hand]
					global.lshoulder_ammo = selected_ammo[using_hand]
					global.shoulder_mod_arr = selected_mod[using_hand]
					selected_array[using_hand] = noone
					selected_ammo[using_hand] = noone
					selected_chamber[using_hand] = noone
					selected_mod[using_hand] = noone
					
					for(var i = 0; i < array_length(mouse_modifiers); i++)
					{
						global.shoulder_mods[i] = mouse_modifiers[i]
						mouse_modifiers[i] = noone
						
					}
					
					mouse_clear(mb_left)
					global.lshoulder_capacity = 0
						for(var k = 0; k < array_length(global.lshoulder_arr); k++)
						{	
							show_debug_message("test")
							global.lshoulder_capacity += global.lshoulder_arr[k].cont_size
						}
				}
			}

		if mouse_x >= _xx+318 && mouse_x <= _xx+384 && mouse_y >= _yy+351 && mouse_y <= _yy+413 && global.mouse_item.specs.item_type == "Armor" && global.mouse_item.armor.location == "Backpack" && global.backpack == noone
			{
				if mouse_check_button_pressed(mb_left)
				{
					array_push(global.clothing_arr, global.mouse_item)
					global.backpack  = global.mouse_item
					global.mouse_item = noone
					global.backpack_arr = selected_array[using_hand]
					global.backpack_ammo = selected_ammo[using_hand]
					global.backpack_mod_arr = selected_mod[using_hand]
					show_debug_message(string($"ARRAY ADD {global.backpack_arr}"))
					show_debug_message(string($"MOD ADD {global.backpack_mod_arr}"))
					selected_array[using_hand] = noone
					selected_ammo[using_hand] = noone
					selected_chamber[using_hand] = noone
					selected_mod[using_hand] = noone
					
					for(var i = 0; i < array_length(mouse_modifiers); i++)
					{
						global.backpack_mods[i] = mouse_modifiers[i]
						mouse_modifiers[i] = noone
						
					}
					
					mouse_clear(mb_left)
					global.backpack_capacity = 0
						for(var k = 0; k < array_length(global.backpack_arr); k++)
						{	
							show_debug_message("test")
							global.backpack_capacity += global.backpack_arr[k].cont_size
						}
					
				}
			}
		if mouse_x >= _xx+321 && mouse_x <= _xx+381 && mouse_y >= _yy+161 && mouse_y <= _yy+222 && global.mouse_item.specs.item_type == "Armor" && global.mouse_item.armor.location == "Vest" && global.vest == noone
			{
				if mouse_check_button_pressed(mb_left)
				{
					array_push(global.clothing_arr, global.mouse_item)
					global.vest  = global.mouse_item
					global.mouse_item = noone
					global.vest_arr = selected_array[using_hand]
					global.vest_ammo = selected_ammo[using_hand]
					global.vest_mod_arr = selected_mod[using_hand]
					selected_array[using_hand] = noone
					selected_ammo[using_hand] = noone
					selected_chamber[using_hand] = noone
					selected_mod[using_hand] = noone
					
					for(var i = 0; i < array_length(mouse_modifiers); i++)
					{
						global.vest_mods[i] = mouse_modifiers[i]
						mouse_modifiers[i] = noone
						
					}
					
					mouse_clear(mb_left)
					global.vest_capacity = 0
						for(var k = 0; k < array_length(global.vest_arr); k++)
						{	
							show_debug_message("test")
							global.vest_capacity += global.vest_arr[k].cont_size
						}
					
				}
			}
		if mouse_x >= _xx+226 && mouse_x <= _xx+285 && mouse_y >= _yy+447 && mouse_y <= _yy+477 && global.mouse_item.specs.item_type == "Armor" && global.mouse_item.armor.location == "Right Foot" && global.right_foot_wear == noone && mouse_modifiers[0] == "L"
			{
				if mouse_check_button_pressed(mb_left)
				{
					array_push(global.clothing_arr, global.mouse_item)
					global.right_foot_wear = global.mouse_item
					global.mouse_item = noone
					global.right_foot_arr = selected_array[using_hand]
					global.right_foot_ammo = selected_ammo[using_hand]
					global.right_foot_mod_arr = selected_mod[using_hand]
					selected_array[using_hand] = noone
					selected_ammo[using_hand] = noone
					selected_chamber[using_hand] = noone
					selected_mod[using_hand] = noone
					
					for(var i = 0; i < array_length(mouse_modifiers); i++)
					{
						global.right_foot_mods[i] = mouse_modifiers[i]
						mouse_modifiers[i] = noone
						
					}
					
					mouse_clear(mb_left)
					global.right_foot_capacity = 0
						for(var k = 0; k < array_length(global.right_foot_arr); k++)
						{	
							show_debug_message("test")
							global.right_foot_capacity += global.right_foot_arr[k].cont_size
						}
				}
			}
		if mouse_x >= _xx+159 && mouse_x <= _xx+221 && mouse_y >= _yy+447 && mouse_y <= _yy+477 && global.mouse_item.specs.item_type == "Armor" && global.mouse_item.armor.location == "Left Foot" && global.left_foot_wear == noone
			{
				if mouse_check_button_pressed(mb_left)
				{
					array_push(global.clothing_arr, global.mouse_item)
					global.left_foot_wear = global.mouse_item
					global.mouse_item = noone
					global.left_foot_arr = selected_array[using_hand]
					global.left_foot_ammo = selected_ammo[using_hand]
					global.left_foot_mod_arr = selected_mod[using_hand]
					selected_array[using_hand] = noone
					selected_ammo[using_hand] = noone
					selected_chamber[using_hand] = noone
					selected_mod[using_hand] = noone
					
					for(var i = 0; i < array_length(mouse_modifiers); i++)
					{
						global.left_foot_mods[i] = mouse_modifiers[i]
						mouse_modifiers[i] = noone
						
					}
					
					mouse_clear(mb_left)
					global.left_foot_capacity = 0
						for(var k = 0; k < array_length(global.left_foot_arr); k++)
						{	
							show_debug_message("test")
							global.left_foot_capacity += global.left_foot_arr[k].cont_size
						}
				}
			}
		if mouse_x >= _xx+169 && mouse_x <= _xx+276 && mouse_y >= _yy+211 && mouse_y <= _yy+320 && global.mouse_item.specs.item_type == "Armor" && global.mouse_item.armor.location == "Torso" && global.torso_wear == noone && mouse_modifiers[0] == obj_health_manager.shirt_size
			{
				if mouse_check_button_pressed(mb_left)
				{
					
					array_push(global.clothing_arr, global.mouse_item)
					global.torso_wear = global.mouse_item
					global.mouse_item = noone
					global.torso_arr = selected_array[using_hand]
					global.torso_ammo = selected_ammo[using_hand]
					global.torso_mod_arr = selected_mod[using_hand]
					selected_array[using_hand] = noone
					selected_ammo[using_hand] = noone
					selected_chamber[using_hand] = noone
					selected_mod[using_hand] = noone
					
					for(var i = 0; i < array_length(mouse_modifiers); i++)
					{
						global.torso_mods[i] = mouse_modifiers[i]
						mouse_modifiers[i] = noone
						
					}
					
					mouse_clear(mb_left)
					global.torso_capacity = 0
						for(var k = 0; k < array_length(global.torso_arr); k++)
						{	
							show_debug_message("test")
							global.torso_capacity += global.torso_arr[k].cont_size
						}
				}
			}
		if mouse_x >= _xx+64 && mouse_x <= _xx+124 && mouse_y >= _yy+165 && mouse_y <= _yy+222 && global.mouse_item.specs.item_type == "Armor" && (global.mouse_item.armor.location == "Left Wrist" || global.mouse_item.armor.location == "Either Wrist") && global.left_wrist == noone
			{
				if mouse_check_button_pressed(mb_left)
				{
					array_push(global.clothing_arr, global.mouse_item)
					global.left_wrist = global.mouse_item
					global.mouse_item = noone
					global.left_wrist_arr = selected_array[using_hand]
					global.left_wrist_ammo = selected_ammo[using_hand]
					global.left_wrist_mod_arr = selected_mod[using_hand]
					selected_array[using_hand] = noone
					selected_ammo[using_hand] = noone
					selected_chamber[using_hand] = noone
					selected_mod[using_hand] = noone
					
					for(var i = 0; i < array_length(mouse_modifiers); i++)
					{
						global.left_wrist_mods[i] = mouse_modifiers[i]
						mouse_modifiers[i] = noone
						
					}
					
					mouse_clear(mb_left)
					global.left_wrist_capacity = 0
						for(var k = 0; k < array_length(global.left_wrist_arr); k++)
						{	
							show_debug_message("test")
							global.left_wrist_capacity += global.left_wrist_arr[k].cont_size
						}
				}
			}
		if mouse_x >= _xx+64 && mouse_x <= _xx+124 && mouse_y >= _yy+259 && mouse_y <= _yy+318 &&  global.mouse_item.specs.item_type == "Armor" && (global.mouse_item.armor.location == "Right Wrist" || global.mouse_item.armor.location == "Either Wrist") && global.right_wrist == noone
			{
				if mouse_check_button_pressed(mb_left)
				{
					array_push(global.clothing_arr, global.mouse_item)
					global.right_wrist = global.mouse_item
					global.mouse_item = noone
					global.right_wrist_arr = selected_array[using_hand]
					global.right_wrist_ammo = selected_ammo[using_hand]
					global.right_wrist_mod_arr = selected_mod[using_hand]
					selected_array[using_hand] = noone
					selected_ammo[using_hand] = noone
					selected_chamber[using_hand] = noone
					selected_mod[using_hand] = noone
					
					for(var i = 0; i < array_length(mouse_modifiers); i++)
					{
						global.right_wrist_mods[i] = mouse_modifiers[i]
						mouse_modifiers[i] = noone
						
					}
					
					mouse_clear(mb_left)
					global.right_wrist_capacity = 0
						for(var k = 0; k < array_length(global.right_wrist_arr); k++)
						{	
							show_debug_message("test")
							global.right_wrist_capacity += global.right_wrist_arr[k].cont_size
						}
				}
			}
		if mouse_x >= _xx+158 && mouse_x <= _xx+221 && mouse_y >= _yy+351 && mouse_y <= _yy+444 &&  global.mouse_item.specs.item_type == "Armor" && (global.mouse_item.armor.location == "Legs" || global.mouse_item.armor.location == "Left Leg") && global.left_leg_wear == noone
			{
				if mouse_check_button_pressed(mb_left)
				{
					array_push(global.clothing_arr, global.mouse_item)
					if global.mouse_item.armor.location == "Legs"
					{
						global.left_leg_wear = global.mouse_item
						global.right_leg_wear = global.mouse_item
						global.left_leg_arr = selected_array[using_hand]
						global.right_leg_arr = selected_array[using_hand]
						global.left_leg_ammo = selected_ammo[using_hand]
						global.right_leg_ammo = selected_ammo[using_hand]
						selected_array[using_hand] = noone
						selected_ammo[using_hand] = noone
						
						selected_chamber[using_hand] = noone
					} else if global.mouse_item.armor.location = "Left Leg"
					{
						global.left_leg_wear = global.mouse_item
						global.left_leg_arr = selected_array[using_hand]
						global.left_leg_ammo = selected_ammo[using_hand]
						global.leg_mod_arr = selected_mod[using_hand]
						selected_array[using_hand] = noone
						selected_ammo[using_hand] = noone
						selected_chamber[using_hand] = noone
						selected_mod[using_hand] = noone
					}
					for(var i = 0; i < array_length(mouse_modifiers); i++)
					{
						global.leg_mods[i] = mouse_modifiers[i]
						mouse_modifiers[i] = noone
						
					}
					global.mouse_item = noone
					mouse_clear(mb_left)
					global.leg_capacity = 0
						for(var k = 0; k < array_length(global.left_leg_arr); k++)
						{	
							show_debug_message("test")
							global.leg_capacity += global.left_leg_arr[k].cont_size
						}
				}
			}
		if mouse_x >= _xx+226 && mouse_x <= _xx+282 && mouse_y >= _yy+354 && mouse_y <= _yy+442 && global.mouse_item.specs.item_type == "Armor" && (global.mouse_item.armor.location == "Legs" || global.mouse_item.armor.location == "Right Leg") && global.right_leg_wear == noone
			{
				if mouse_check_button_pressed(mb_left)
				{
					array_push(global.clothing_arr, global.mouse_item)
					if global.mouse_item.armor.location == "Legs"
					{
						global.left_leg_wear = global.mouse_item
						global.right_leg_wear = global.mouse_item
						global.left_leg_arr = selected_array[using_hand]
						global.right_leg_arr = selected_array[using_hand]
						global.left_leg_ammo = selected_ammo[using_hand]
						global.right_leg_ammo = selected_ammo[using_hand]
						selected_array[using_hand] = noone
						selected_ammo[using_hand] = noone
						selected_chamber[using_hand] = noone
					} else if global.mouse_item.armor.location = "Right Leg"
					{
						global.right_leg_wear = global.mouse_item
						global.right_leg_arr = selected_array[using_hand]
						global.right_leg_ammo = selected_ammo[using_hand]
						selected_array[using_hand] = noone
						selected_ammo[using_hand] = noone
						selected_chamber[using_hand] = noone
					}
					for(var i = 0; i < array_length(mouse_modifiers); i++)
					{
						global.leg_mods[i] = mouse_modifiers[i]
						mouse_modifiers[i] = noone
						
					}
					global.mouse_item = noone
					mouse_clear(mb_left)
					global.leg_capacity = 0
						for(var k = 0; k < array_length(global.left_leg_arr); k++)
						{	
							show_debug_message("test")
							global.leg_capacity += global.left_leg_arr[k].cont_size
						}
				}
			}
		if mouse_x >= _xx+160 && mouse_x <= _xx+189 && mouse_y >= _yy+320 && mouse_y <= _yy+349  && global.mouse_item.specs.item_type == "Armor" && (global.mouse_item.armor.location == "Left Hand") && global.left_hand_wear == noone
		{
			if mouse_check_button_pressed(mb_left)
				{
					array_push(global.clothing_arr, global.mouse_item)
					global.left_hand_wear = global.mouse_item
					global.left_hand_arr = selected_array[using_hand]
					global.left_hand_ammo = selected_ammo[using_hand]
					global.left_hand_mod_arr = selected_mod[using_hand]
					selected_array[using_hand] = noone
					selected_ammo[using_hand] = noone
					selected_chamber[using_hand] = noone
					selected_mod[using_hand] = noone
					
					for(var i = 0; i < array_length(mouse_modifiers); i++)
					{
						global.left_hand_mods[i] = mouse_modifiers[i]
						mouse_modifiers[i] = noone
						
					}
					
					global.mouse_item = noone
					mouse_clear(mb_left)
					global.left_hand_capacity = 0
						for(var k = 0; k < array_length(global.left_hand_arr); k++)
						{	
							show_debug_message("test")
							global.left_hand_capacity += global.left_hand_arr[k].cont_size
						}
				}
		}
		if mouse_x >= _xx+256 && mouse_x <= _xx+286 && mouse_y >= _yy+321 && mouse_y <= _yy+349  && global.mouse_item.specs.item_type == "Armor" && (global.mouse_item.armor.location == "Right Hand") && global.right_hand_wear == noone
		{
			if mouse_check_button_pressed(mb_left)
				{
					array_push(global.clothing_arr, global.mouse_item)
					global.right_hand_wear = global.mouse_item
					global.right_hand_arr = selected_array[using_hand]
					global.right_hand_ammo = selected_ammo[using_hand]
					global.right_hand_mod_arr = selected_mod[using_hand]
					selected_array[using_hand] = noone
					selected_ammo[using_hand] = noone
					selected_chamber[using_hand] = noone
					selected_mod[using_hand] = noone
					for(var i = 0; i < array_length(mouse_modifiers); i++)
					{
						global.right_hand_mods[i] = mouse_modifiers[i]
						mouse_modifiers[i] = noone
						
					}
					global.mouse_item = noone
					mouse_clear(mb_left)
					global.right_hand_capacity = 0
						for(var k = 0; k < array_length(global.right_hand_arr); k++)
						{	
							show_debug_message("test")
							global.right_hand_capacity += global.right_hand_arr[k].cont_size
						}
				}
		}
		if mouse_x >= _xx+64 && mouse_x <= _xx+128 && mouse_y >= _yy+352 && mouse_y <= _yy+416  && global.mouse_item.specs.item_type == "Armor" && (global.mouse_item.armor.location == "Face") && global.face_wear == noone
		{
			if mouse_check_button_pressed(mb_left)
				{
					array_push(global.clothing_arr, global.mouse_item)
					global.face_wear = global.mouse_item
					global.overlay = global.mouse_item.armor.overlay
					global.face_arr = selected_array[using_hand]
					global.face_ammo = selected_ammo[using_hand]
					global.face_mod_arr = selected_mod[using_hand]
					selected_array[using_hand] = noone
					selected_ammo[using_hand] = noone
					selected_chamber[using_hand] = noone
					selected_mod[using_hand] = noone
					for(var i = 0; i < array_length(mouse_modifiers); i++)
					{
						global.face_mods[i] = mouse_modifiers[i]
						mouse_modifiers[i] = noone
						
					}
					global.mouse_item = noone
					mouse_clear(mb_left)
					global.face_capacity = 0
						for(var k = 0; k < array_length(global.face_arr); k++)
						{	
							show_debug_message("test")
							global.face_capacity += global.face_arr[k].cont_size
						}
				}
		}
		if mouse_x >= _xx+192 && mouse_x <= _xx+254 && mouse_y >= _yy+162 && mouse_y <= _yy+210 && global.mouse_item.specs.item_type == "Armor" && (global.mouse_item.armor.location == "Head") && global.top_head_wear == noone
		{
			if mouse_check_button_pressed(mb_left)
				{
					array_push(global.clothing_arr, global.mouse_item)
					global.top_head_wear = global.mouse_item
					global.top_head_arr = selected_array[using_hand]
					global.top_head_ammo = selected_ammo[using_hand]
					global.head_mod_arr = selected_mod[using_hand]
					selected_array[using_hand] = noone
					selected_ammo[using_hand] = noone
					selected_chamber[using_hand] = noone
					selected_mod[using_hand] = noone
					for(var i = 0; i < array_length(mouse_modifiers); i++)
					{
						global.head_mods[i] = mouse_modifiers[i]
						mouse_modifiers[i] = noone
						
					}
					global.mouse_item = noone
					mouse_clear(mb_left)
					global.head_capacity = 0
						for(var k = 0; k < array_length(global.top_head_arr); k++)
						{	
							show_debug_message("test")
							global.head_capacity += global.top_head_arr[k].cont_size
						}
				}
		}
		if mouse_x >= _xx+416 && mouse_x <= _xx+479 && mouse_y >= _yy+576 && mouse_y <= _yy+639 && global.mouse_item.specs.item_type == "Armor" && (global.mouse_item.armor.location == "Belt") && global.belt == noone
		{
			if mouse_check_button_pressed(mb_left)
				{
					array_push(global.clothing_arr, global.mouse_item)
					global.belt = global.mouse_item
					global.belt_arr = selected_array[using_hand]
					global.belt_ammo = selected_ammo[using_hand]
					global.belt_mod_arr = selected_mod[using_hand]
					selected_array[using_hand] = noone
					selected_ammo[using_hand] = noone
					selected_chamber[using_hand] = noone
					selected_mod[using_hand] = noone
					for(var i = 0; i < array_length(mouse_modifiers); i++)
					{
						global.belt_mods[i] = mouse_modifiers[i]
						mouse_modifiers[i] = noone
						
					}
					global.mouse_item = noone
					mouse_clear(mb_left)
					global.belt_capacity = 0
						for(var k = 0; k < array_length(global.belt_arr); k++)
						{	
							show_debug_message("test")
							global.belt_capacity += 1
						}
				}
		}
	}
	
	
	
	// SELECTION SECTION
	if mouse_x >= _xx + 32 && mouse_x <= _xx + 189 && mouse_y >= _yy + 606 && mouse_y <= _yy + 734 && global.left_hand_item != global.item_list.two_hand_item
	{
		
		// LEFT HAND
		if mouse_check_button_pressed(mb_left) && global.left_hand_item != noone && global.mouse_item == noone
		{
			using_hand = 0
			global.mouse_item = global.left_hand_item
			global.mouse_ammo = hand_ammo[0]
			hand_ammo[0] = 0
			temp_ammo = selected_ammo[0]
			temp_arr = selected_array[0]
			temp_mod_arr = selected_mod[0]
			
			global.left_hand_amount -= 1
			if global.left_hand_amount == 0
			{
				global.left_hand_item = noone
			
			}
			for(var i = 0; i < array_length(left_modifiers); i++)
				{
					mouse_modifiers[i] = left_modifiers[i]
					left_modifiers[i] = 0
				}
			
		}
		else if mouse_check_button_pressed(mb_left) && (global.left_hand_item == noone || global.left_hand_item == global.mouse_item) && global.mouse_item != noone
		{
			global.left_hand_amount += 1
			if global.left_hand_item == global.mouse_item && global.mouse_item != noone
			{
				
				global.mouse_item = noone
				
			}
			if global.left_hand_item == noone
			{
			global.left_hand_item = global.mouse_item
			hand_ammo[0] = global.mouse_ammo
			
			global.mouse_item = noone
			global.mouse_ammo = noone
			if temp_arr != noone
			{
				selected_array[0] = temp_arr
				show_debug_message(string($"ARRAY INTO HAND {selected_array[0]}"))
				temp_arr = noone
			}else
			{
				selected_array[0] = noone
			}
			if temp_ammo != noone
			{
				selected_ammo[0] = temp_ammo
				temp_ammo = 0
			} else
			{
				selected_ammo[1] = noone
			}
			if temp_chamber != noone
			{
				selected_chamber[0] = temp_chamber
				temp_chamber = 0
			}
			if temp_mod_arr != noone
			{
				selected_mod[0] = temp_mod_arr
				show_debug_message(string($"MODS INTO HAND {temp_mod_arr}"))
				
				temp_mod_arr = noone
			}
			for(var i = 0; i < array_length(mouse_modifiers); i++)
				{	
						left_modifiers[i] = mouse_modifiers[i]
						show_debug_message(string($"LOOPED MODS {left_modifiers[i]}"))
						mouse_modifiers[i] = 0
				}
			
			
		}
		}
		
	}
	
	if mouse_x >= _xx + 224 && mouse_x <= _xx + 381 && mouse_y >= _yy + 606 && mouse_y <= _yy + 734 && global.right_hand_item != global.item_list.two_hand_item
	{
		// RIGHT HAND
		if mouse_check_button_pressed(mb_left) && global.right_hand_item != noone && global.mouse_item == noone
		{
			using_hand = 1
			global.mouse_item = global.right_hand_item
			global.mouse_ammo = hand_ammo[1]
			hand_ammo[1] = 0
			temp_ammo = selected_ammo[1]
			temp_arr = selected_array[1]
			temp_mod_arr = selected_mod[1]
			
			global.right_hand_amount -= 1
			if global.right_hand_amount == 0
			{
				global.right_hand_item = noone
				
			}
			for(var i = 0; i < array_length(right_modifiers); i++)
				{
					mouse_modifiers[i] = right_modifiers[i]
					right_modifiers[i] = 0
				}
			
		}
		else if mouse_check_button_pressed(mb_left) && (global.right_hand_item == noone || global.right_hand_item == global.mouse_item) && global.mouse_item != noone
		{
			global.right_hand_amount += 1
			if global.right_hand_item == global.mouse_item && global.mouse_item != noone
			{
				
				global.mouse_item = noone
				
			}
			if global.right_hand_item == noone
			{
			global.right_hand_item = global.mouse_item
			hand_ammo[1] = global.mouse_ammo
			global.mouse_ammo = noone
			global.mouse_item = noone
			if temp_arr != noone
			{
				selected_array[1] = temp_arr
				temp_arr = noone
			} 
			if temp_ammo != noone
			{
				selected_ammo[1] = temp_ammo
				temp_ammo = 0
			} 
			if temp_chamber != noone
			{
				selected_chamber[1] = temp_chamber
				temp_chamber = 0
			}
			if temp_mod_arr != noone
			{
				selected_mod[1] = temp_mod_arr
				temp_mod_arr = noone
				
			}
			for(var i = 0; i < array_length(mouse_modifiers); i++)
				{
					right_modifiers[i] = mouse_modifiers[i]
					mouse_modifiers[i] = 0
				}
			
		}
		}
		
	}
	
	
		inspection_item = global.selected_item
	
	
	if inspection_item != noone && obj_health_manager.health_open == false
	{
		_xx = camera_get_view_x(view_camera[0]) 
		_yy = camera_get_view_y(view_camera[0])

		//draw_sprite_ext(spr_ui_no_grid_opaque, 0, _xx, _yy, 21.5, 12, 0, c_white, 1)
		//layer_x("close_item_inspect_ui", _xx)
		//layer_y("close_item_inspect_ui", _yy)

		
		//layer_set_visible(layer_get_id("close_item_inspect_ui"), true)
		
		// 8 PIXEL FONT OFFSET
		draw_text(_xx+864+4, _yy+32+4, inspection_item.name)
		
		//draw_sprite_ext(inspection_item.spr, 1, _xx+128, _yy+128, inspection_item.hold_size*2.4, inspection_item.hold_size*2.4, 0, c_white, 1)
		
		//draw_text_ext(_xx+552, _yy+72, inspection_item.description, 20, 350)
		//draw_text(_xx+136, _yy+520, string($"Cost: {inspection_item.specs.cost}"))
		draw_text(_xx+1122, _yy+36, string($"{inspection_item.cont_size} CC | {inspection_item.specs.weight} Lbs."))
		
		if inspection_item.food != noone && nutrition_page == 0
		{
			draw_text(_xx+864+4, _yy+416+4, "Basic Nutrition Facts")
			
			draw_text(_xx+864+4, _yy+448+4, "Calories")
			draw_text(_xx+864+4, _yy+480+4, "Fat")
			draw_text(_xx+864+4, _yy+512+4, "Om-3 Fatty Acids")
			draw_text(_xx+864+4, _yy+544+4, "Carbohydrates")
			draw_text(_xx+864+4, _yy+576+4, "Sugars")
			draw_text(_xx+864+4, _yy+608+4, "Protein")
			draw_text(_xx+864+4, _yy+640+4, "Fiber")
			draw_text(_xx+864+4, _yy+672+4, "Salt")
			
			draw_text(_xx+1088+4, _yy+448+4, string($"{inspection_item.food.cal} kcal."))
			draw_text(_xx+1088+4, _yy+480+4, string($"{inspection_item.food.fat} grams"))
			draw_text(_xx+1088+4, _yy+512+4, string($"{inspection_item.food.om3fattyacids} mg"))
			draw_text(_xx+1088+4, _yy+544+4, string($"{inspection_item.food.carb} grams"))
			draw_text(_xx+1088+4, _yy+576+4, string($"{inspection_item.food.freesug} grams"))
			draw_text(_xx+1088+4, _yy+608+4, string($"{inspection_item.food.prot} grams"))
			draw_text(_xx+1088+4, _yy+640+4, string($"{inspection_item.food.fiber} grams"))
			draw_text(_xx+1088+4, _yy+672+4, string($"{inspection_item.food.salt} grams"))
		}
		if inspection_item.vit != noone && nutrition_page == 1
		{
			draw_text(_xx+864+4, _yy+416+4, "Vitamin Facts")
			
			draw_text(_xx+864+4, _yy+448+4, "Vitamin A")
			draw_text(_xx+864+4, _yy+480+4, "Thiamin")
			draw_text(_xx+864+4, _yy+512+4, "Riboflavin")
			draw_text(_xx+864+4, _yy+544+4, "Niacin")
			draw_text(_xx+864+4, _yy+576+4, "Vitamin E")
			draw_text(_xx+864+4, _yy+608+4, "Folate")
			draw_text(_xx+864+4, _yy+640+4, "Vitamin K")
			draw_text(_xx+864+4, _yy+672+4, "Vitamin C")
			draw_text(_xx+864+4, _yy+704+4, "Vitamin D")
			
			draw_text(_xx+1088+4, _yy+448+4, string($"{inspection_item.vit.vita} mcg"))
			draw_text(_xx+1088+4, _yy+480+4, string($"{inspection_item.vit.thiamin} mg"))
			draw_text(_xx+1088+4, _yy+512+4, string($"{inspection_item.vit.ribo} mg"))
			draw_text(_xx+1088+4, _yy+544+4, string($"{inspection_item.vit.niacin} mg"))
			draw_text(_xx+1088+4, _yy+576+4, string($"{inspection_item.vit.vite} mg"))
			draw_text(_xx+1088+4, _yy+608+4, string($"{inspection_item.vit.fol} mcg"))
			draw_text(_xx+1088+4, _yy+640+4, string($"{inspection_item.vit.vitk} mcg"))
			draw_text(_xx+1088+4, _yy+672+4, string($"{inspection_item.vit.vitc} mg"))
			draw_text(_xx+1088+4, _yy+704+4, string($"{inspection_item.vit.vitd} mcg"))
		}
		if inspection_item.minerals != noone && nutrition_page == 2
		{
			draw_text(_xx+864+4, _yy+416+4, "Mineral Facts")
			
			draw_text(_xx+864+4, _yy+448+4, "Calcium")
			draw_text(_xx+864+4, _yy+480+4, "Phosphorous")
			draw_text(_xx+864+4, _yy+512+4, "Magnesium")
			draw_text(_xx+864+4, _yy+544+4, "Potassium")
			draw_text(_xx+864+4, _yy+576+4, "Iron")
			draw_text(_xx+864+4, _yy+608+4, "Zinc")
			draw_text(_xx+864+4, _yy+640+4, "Copper")
			
			draw_text(_xx+1088+4, _yy+448+4, string($"{inspection_item.minerals.calc} mg"))
			draw_text(_xx+1088+4, _yy+480+4, string($"{inspection_item.minerals.phosph} mg"))
			draw_text(_xx+1088+4, _yy+512+4, string($"{inspection_item.minerals.mag} mg"))
			draw_text(_xx+1088+4, _yy+544+4, string($"{inspection_item.minerals.potass} mg"))
			draw_text(_xx+1088+4, _yy+576+4, string($"{inspection_item.minerals.iron} mg"))
			draw_text(_xx+1088+4, _yy+608+4, string($"{inspection_item.minerals.zinc} mg"))
			draw_text(_xx+1088+4, _yy+640+4, string($"{inspection_item.minerals.copper} mg"))
		}
		
		if inspection_item.weapon != noone && (nutrition_page == 0 || nutrition_page == 1 || nutrition_page == 2)
		{
			draw_text(_xx+864+4, _yy+416+4, "Weapon Facts")
			
			draw_text(_xx+864+4, _yy+448+4, "Damage")
			draw_text(_xx+864+4, _yy+480+4, "Ammo Capacity")
			
			
			draw_text(_xx+864+4, _yy+512+4, "Ammo Type")
			draw_text(_xx+864+4, _yy+544+4, "Fire Rate")
			
			
			//draw_text(_xx+1000, _yy+392, "Fire Rate")
			draw_text(_xx+864+4, _yy+576+4, "Underbarrel")
			draw_text(_xx+864+4, _yy+608+4, "Suppressor")
			draw_text(_xx+864+4, _yy+640+4, "Sights")
			draw_text(_xx+864+4, _yy+672+4, "Scopes")

			draw_text(_xx+1088+4, _yy+448+4, string($"{inspection_item.weapon.damage}"))
			/*if inspection_item.weapon.ranged == true
			{
				draw_text(_xx+1192, _yy+264, string($"Yes"))
			} else
			{
				draw_text(_xx+1192, _yy+264, string($"No"))
			}*/
			
			if inspection_item.weapon.ammo_count != noone
			{
				draw_text(_xx+1088+4, _yy+480+4, string($"{inspection_item.weapon.ammo_count}"))
			} else
			{
				draw_text(_xx+1088+4, _yy+480+4, string($"No Ammo"))	
			}
			
			if inspection_item.weapon.fire_rate != noone
			{
				draw_text(_xx+1088+4, _yy+544+4, string($"{inspection_item.weapon.fire_rate} round p/m"))
			} else
			{
				draw_text(_xx+1088+4, _yy+544+4, string($"1 per click"))
			}
			
			if inspection_item.ammo != noone
			{
				draw_text_transformed(_xx+1088+4, _yy+512+4, string($"{inspection_item.ammo.name}"), 0.7, 0.7, 0)
			} else
			{
				draw_text(_xx+1088+4, _yy+512+4, string($"No Ammo"))
			}
			draw_text(_xx+1088+4, _yy+576+4, string($"{true_false_converter(inspection_item.weapon.underbarrel)}"))
			if inspection_item.weapon.suppressor != false
			{
				draw_text(_xx+1088+4, _yy+608+4, string($"{inspection_item.weapon.suppressor.specs.short_name}"))
			}
			draw_text(_xx+1088+4, _yy+640+4, string($"{true_false_converter(inspection_item.weapon.sights)}"))
			draw_text(_xx+1088+4, _yy+672+4, string($"{true_false_converter(inspection_item.weapon.scopes)}"))
		}
		
	} else
	{
		layer_set_visible(layer_get_id("close_item_inspect_ui"), false)
	}
	
	if (global.mouse_item == noone || (global.mouse_item != noone && global.mouse_item.armor == noone)) && stats_open == true
	{
		model_index = 0
	}
	
	if global.mouse_item != noone && global.mouse_item.armor != noone && global.selected_item == noone && stats_open == true
	{
		if global.mouse_item.armor.location == "Torso"
		{
			if global.torso_wear == noone && mouse_modifiers[0] == obj_health_manager.shirt_size
			{
				draw_rectangle(_xx+169, _yy+211, _xx+279, _yy+320, 10)
				model_index = 3
				
			} else
			{
				draw_rectangle_color(_xx+169, _yy+211, _xx+279, _yy+320, c_red, c_red, c_red, c_red, 10)
				model_index = 1
			}
			
		}
		if global.mouse_item.armor.location == "Head"
		{
			if global.top_head_wear == noone
			{
				draw_rectangle(_xx+192, _yy+162, _xx+254, _yy+210, 10)
				model_index = 2
			} else
			{
				draw_rectangle_color(_xx+192, _yy+162, _xx+254, _yy+210, c_red, c_red, c_red, c_red, 10)
				model_index = 1
			}
		}
		if global.mouse_item.armor.location == "Shoulder"
		{
			if global.lshoulder == noone
			{
				draw_rectangle(_xx+320, _yy+256, _xx+383, _yy+319, 10)
				model_index = 0
			} else
			{
				draw_rectangle_color(_xx+320, _yy+256, _xx+383, _yy+319, c_red, c_red, c_red, c_red, 10)
				model_index = 1
			}
		}
		if global.mouse_item.armor.location == "Backpack"
		{
			if global.backpack == noone
			{
				draw_rectangle(_xx+320, _yy+352, _xx+383, _yy+415, 10)
				model_index = 0
			} else
			{
				draw_rectangle_color(_xx+320, _yy+352, _xx+383, _yy+415, c_red, c_red, c_red, c_red, 10)
				model_index = 1
			}
		}
		if global.mouse_item.armor.location == "Vest"
		{
			if global.vest == noone
			{
				draw_rectangle(_xx+320, _yy+160, _xx+383, _yy+223, 10)
				model_index = 0
			} else
			{
				draw_rectangle_color(_xx+320, _yy+160, _xx+383, _yy+223, c_red, c_red, c_red, c_red, 10)
				model_index = 1
			}
		}
		if global.mouse_item.armor.location == "Legs" && mouse_modifiers[0] == obj_health_manager.pant_size
		{
			if global.left_leg_wear == noone
			{
				draw_rectangle(_xx+158, _yy+351, _xx+282, _yy+444, 10)
				model_index = 4
			} else
			{
				draw_rectangle_color(_xx+158, _yy+351, _xx+282, _yy+444, c_red, c_red, c_red, c_red, 10)
				model_index = 1
			}
		}
		if global.mouse_item.armor.location == "Right Foot" && mouse_modifiers[0] == obj_health_manager.shoe_size
		{
			if global.right_foot_wear == noone
			{
				draw_rectangle(_xx+226, _yy+447, _xx+285, _yy+477, 10)
				model_index = 5
			} else
			{
				draw_rectangle_color(_xx+226, _yy+447, _xx+285, _yy+477, c_red, c_red, c_red, c_red, 10)
				model_index = 1
			}
		}
		if global.mouse_item.armor.location == "Left Foot" && mouse_modifiers[0] == obj_health_manager.shoe_size
		{
			if global.left_foot_wear == noone
			{
				draw_rectangle(_xx+159, _yy+447, _xx+221, _yy+477, 10)
				model_index = 6
			} else
			{
				draw_rectangle_color(_xx+159, _yy+447, _xx+221, _yy+477, c_red, c_red, c_red, c_red, 10)
				model_index = 1
			}
		}
		if global.mouse_item.armor.location == "Left Wrist" || global.mouse_item.armor.location == "Either Wrist"
		{
			if global.left_wrist == noone
			{
				draw_rectangle(_xx+64, _yy+160, _xx+127, _yy+223, 10)
				model_index = 0
			} else
			{
				draw_rectangle_color(_xx+64, _yy+160, _xx+127, _yy+223, c_red, c_red, c_red, c_red, 10)
				model_index = 1
			}
		}
		if global.mouse_item.armor.location == "Right Wrist" || global.mouse_item.armor.location == "Either Wrist"
		{
			if global.right_wrist == noone
			{
				draw_rectangle(_xx+64, _yy+256, _xx+127, _yy+319, 10)
				model_index = 0
			} else
			{
				draw_rectangle_color(_xx+64, _yy+256, _xx+127, _yy+319, c_red, c_red, c_red, c_red, 10)
				model_index = 1
			}
		}
		if global.mouse_item.armor.location == "Face"
		{
			if global.face_wear == noone
			{
				draw_rectangle(_xx+64, _yy+352, _xx+127, _yy+415, 10)
				model_index = 0
			} else
			{
				draw_rectangle_color(_xx+64, _yy+352, _xx+127, _yy+415, c_red, c_red, c_red, c_red, 10)
				model_index = 1
			}
		}
		if global.mouse_item.armor.location == "Left Hand"
		{
			if global.left_hand_wear == noone
			{
				draw_rectangle(_xx+160, _yy+320, _xx+189, _yy+349, 10)
				model_index = 8
			} else
			{
				draw_rectangle_color(_xx+160, _yy+320, _xx+189, _yy+349, c_red, c_red, c_red, c_red, 10)
				model_index = 1
			}
		}
		if global.mouse_item.armor.location == "Right Hand"
		{
			if global.right_hand_wear == noone
			{
				draw_rectangle(_xx+256, _yy+321, _xx+286, _yy+347, 10)
				model_index = 7
			} else
			{
				draw_rectangle_color(_xx+256, _yy+321, _xx+286, _yy+347, c_red, c_red, c_red, c_red, 10)
				model_index = 1
			}
		}
		if global.mouse_item.armor.location == "Belt"
		{
			if global.belt == noone
			{
				draw_rectangle(_xx+416, _yy+576, _xx+479, _yy+639, 10)
				model_index = 0
			} else
			{
				draw_rectangle_color(_xx+416, _yy+576, _xx+479, _yy+639, c_red, c_red, c_red, c_red, 10)
				model_index = 1
			}
		}
	}
	
	if global.selected_item == noone && global.mouse_item == noone && stats_open == true
	{
		
		if global.backpack != noone
		{
			draw_sprite(spr_ui_no_grid_blue, 0, _xx+320, _yy+352)
			draw_sprite_ext(global.backpack.spr, 4, _xx+176, _yy+276, 1.42, 1.42, 0, c_white, 1)
			draw_sprite_ext(global.backpack.spr, 1, _xx+329, _yy+349, 1, 1, 0, c_white, 1)
		
			if mouse_x >= _xx+318 && mouse_x <= _xx+384 && mouse_y >= _yy+351 && mouse_y <= _yy+413
			{
				draw_sprite_ext(spr_ui_no_grid_opaque, 0, mouse_x + 30, mouse_y + 30 - 100, 3, 1.5, 0, c_white, 1)
				draw_sprite_ext(spr_ui_no_grid_opaque, 0, mouse_x + 30, mouse_y - 100, 3, 0.5, 0, c_white, 1)
				draw_text(mouse_x + 34, mouse_y + 34 - 100, string($"Resistance: {global.backpack.armor.protection}"))
				draw_text(mouse_x + 34, mouse_y + 54 - 100, string($"Armor Type: {global.backpack.armor.type}"))
				draw_text(mouse_x + 34, mouse_y + 74 - 100, string($"Material: {global.backpack.armor.material}"))
				draw_text(mouse_x + 34, mouse_y + 94 - 100, string($"Capacity: {global.backpack.armor.capacity}"))
				draw_text(mouse_x + 34, mouse_y + 4 - 100, string($"{global.backpack.name}"))
			
				if mouse_check_button_pressed(mb_left)
				{
					global.mouse_item = global.backpack
					global.backpack = noone
					array_delete(global.clothing_arr, array_get_index(global.clothing_arr, global.mouse_item), 1)
					
					temp_arr = global.backpack_arr
					temp_ammo = global.backpack_ammo
					temp_mod_arr = global.backpack_mod_arr
					show_debug_message(string($"ARRAY DELETE {global.backpack_arr}"))
					show_debug_message(string($"MODS DELETE {temp_mod_arr}"))
					global.backpack_arr = noone
					global.backpack_mod_arr = noone
					for(var i = 0; i < array_length(global.backpack_mods); i++)
					{
						mouse_modifiers[i] = global.backpack_mods[i]
						global.backpack_mods[i] = noone
					}
				}
			}
		}
	
		if global.lshoulder != noone
		{
			draw_sprite(spr_ui_no_grid_blue, 0, _xx+320, _yy+256)
			if global.lshoulder.specs.item_type != "Firearm"
			{
				draw_sprite_ext(global.lshoulder.spr, 4, _xx+176, _yy+276, 1.5, 1.375, 0, c_white, 1)
				draw_sprite_ext(global.lshoulder.spr, 1, _xx+326, _yy+248, 1, 1, 0, c_white, 1)
			} else
			{
				draw_sprite_ext(spr_armor_labels, 8, _xx+320, _yy+256, 1, 1, 0, c_white, 1)
				draw_sprite_ext(global.lshoulder.spr, 6, _xx+176, _yy+276, 1.5, 1.375, 0, c_white, 1)
			}
		
			if mouse_x >= _xx+320 && mouse_x <= _xx+384 && mouse_y >= _yy+256 && mouse_y <= _yy+320
			{
				draw_sprite_ext(spr_ui_no_grid_opaque, 0, mouse_x + 30, mouse_y + 30 - 100, 3.7, 1.5, 0, c_white, 1)
				draw_sprite_ext(spr_ui_no_grid_opaque, 0, mouse_x + 30, mouse_y - 100, 3.7, 0.5, 0, c_white, 1)
				draw_text(mouse_x + 34, mouse_y + 34 - 100, string($"Resistance: {global.lshoulder.armor.protection}"))
				draw_text(mouse_x + 34, mouse_y + 54 - 100, string($"Armor Type: {global.lshoulder.armor.type}"))
				draw_text(mouse_x + 34, mouse_y + 74 - 100, string($"Material: {global.lshoulder.armor.material}"))
				draw_text(mouse_x + 34, mouse_y + 94 - 100, string($"Capacity: {global.lshoulder.armor.capacity}"))
				draw_text(mouse_x + 34, mouse_y + 4 - 100, string($"{global.lshoulder.name}"))
			
				if mouse_check_button_pressed(mb_left)
				{
					global.mouse_item = global.lshoulder
					global.lshoulder = noone
					array_delete(global.clothing_arr, array_get_index(global.clothing_arr, global.mouse_item), 1)
					temp_arr = global.lshoulder_arr
					temp_ammo = global.lshoulder_ammo
					temp_mod_arr = global.shoulder_mod_arr
					global.lshoulder_arr = noone
					global.shoulder_mod_arr = noone
					for(var i = 0; i < array_length(global.shoulder_mods); i++)
					{
						mouse_modifiers[i] = global.shoulder_mods[i]
						global.shoulder_mods[i] = noone
					}
				}
			}
		}
		if global.right_foot_wear != noone
		{
		
			draw_sprite_ext(global.right_foot_wear.spr, 4, _xx+176, _yy+276, 1.5, 1.375, 0, c_white, 1)
		
			if mouse_x >= _xx+226 && mouse_x <= _xx+285 && mouse_y >= _yy+447 && mouse_y <= _yy+477
			{
				draw_sprite_ext(spr_ui_no_grid_opaque, 0, mouse_x + 30, mouse_y + 30- 100, 3, 1.5, 0, c_white, 1)
				draw_sprite_ext(spr_ui_no_grid_opaque, 0, mouse_x + 30, mouse_y- 100, 3, 0.5, 0, c_white, 1)
				draw_text(mouse_x + 34, mouse_y + 34- 100, string($"Resistance: {global.right_foot_wear.armor.protection}"))
				draw_text(mouse_x + 34, mouse_y + 54- 100, string($"Armor Type: {global.right_foot_wear.armor.type}"))
				draw_text(mouse_x + 34, mouse_y + 74- 100, string($"Material: {global.right_foot_wear.armor.material}"))
				draw_text(mouse_x + 34, mouse_y + 94- 100, string($"Capacity: {global.right_foot_wear.armor.capacity}"))
				draw_text(mouse_x + 34, mouse_y + 4- 100, string($"{global.right_foot_wear.name}"))
			
				if mouse_check_button_pressed(mb_left)
				{
					global.mouse_item = global.right_foot_wear
					global.right_foot_wear = noone
					array_delete(global.clothing_arr, array_get_index(global.clothing_arr, global.mouse_item), 1)
					temp_arr = global.right_foot_arr
					temp_ammo = global.right_foot_ammo
					temp_mod_arr = global.right_foot_mod_arr
					global.right_foot_arr = noone
					global.right_foot_mod_arr = noone
					for(var i = 0; i < array_length(global.right_foot_mods); i++)
					{
						mouse_modifiers[i] = global.right_foot_mods[i]
						global.right_foot_mods[i] = noone
					}
				}
			}
		}
		if global.left_foot_wear != noone
		{
		
			draw_sprite_ext(global.left_foot_wear.spr, 4, _xx+176, _yy+276, 1.5, 1.375, 0, c_white, 1)
		
			if mouse_x >= _xx+159 && mouse_x <= _xx+221 && mouse_y >= _yy+447 && mouse_y <= _yy+477
			{
				draw_sprite_ext(spr_ui_no_grid_opaque, 0, mouse_x + 30, mouse_y + 30- 100, 3, 1.5, 0, c_white, 1)
				draw_sprite_ext(spr_ui_no_grid_opaque, 0, mouse_x + 30, mouse_y- 100, 3, 0.5, 0, c_white, 1)
				draw_text(mouse_x + 34, mouse_y + 34- 100, string($"Resistance: {global.left_foot_wear.armor.protection}"))
				draw_text(mouse_x + 34, mouse_y + 54- 100, string($"Armor Type: {global.left_foot_wear.armor.type}"))
				draw_text(mouse_x + 34, mouse_y + 74- 100, string($"Material: {global.left_foot_wear.armor.material}"))
				draw_text(mouse_x + 34, mouse_y + 94- 100, string($"Capacity: {global.left_foot_wear.armor.capacity}"))
				draw_text(mouse_x + 34, mouse_y + 4- 100, string($"{global.left_foot_wear.name}"))
			
				if mouse_check_button_pressed(mb_left)
				{
					global.mouse_item = global.left_foot_wear
					global.left_foot_wear = noone
					array_delete(global.clothing_arr, array_get_index(global.clothing_arr, global.mouse_item), 1)
					temp_arr = global.left_foot_arr
					temp_ammo = global.left_foot_ammo
					temp_mod_arr = global.left_foot_mod_arr
					global.left_foot_arr = noone
					global.left_foot_mod_arr = noone
					for(var i = 0; i < array_length(global.left_foot_mods); i++)
					{
						mouse_modifiers[i] = global.left_foot_mods[i]
						global.left_foot_mods[i] = noone
					}
				}
			}
		}
		
		if global.left_leg_wear == global.right_leg_wear && global.left_leg_wear != noone
		{
		
			draw_sprite_ext(global.left_leg_wear.spr, 4, _xx+176, _yy+276, 1.5, 1.375, 0, c_white, 1)
		
			if mouse_x >= _xx+163 && mouse_x <= _xx+258 && mouse_y >= _yy+369 && mouse_y <= _yy+444
			{
				draw_sprite_ext(spr_ui_no_grid_opaque, 0, mouse_x + 30, mouse_y + 30- 100, 3, 1.5, 0, c_white, 1)
				draw_sprite_ext(spr_ui_no_grid_opaque, 0, mouse_x + 30, mouse_y- 100, 3, 0.5, 0, c_white, 1)
				draw_text(mouse_x + 34, mouse_y + 34- 100, string($"Resistance: {global.left_leg_wear.armor.protection}"))
				draw_text(mouse_x + 34, mouse_y + 54- 100, string($"Armor Type: {global.left_leg_wear.armor.type}"))
				draw_text(mouse_x + 34, mouse_y + 74- 100, string($"Material: {global.left_leg_wear.armor.material}"))
				draw_text(mouse_x + 34, mouse_y + 94- 100, string($"Capacity: {global.left_leg_wear.armor.capacity}"))
				draw_text(mouse_x + 34, mouse_y + 4- 100, string($"{global.left_leg_wear.name}"))
			
				if mouse_check_button_pressed(mb_left)
				{
					global.mouse_item = global.left_leg_wear
					global.left_leg_wear = noone
					global.right_leg_wear = noone
					array_delete(global.clothing_arr, array_get_index(global.clothing_arr, global.mouse_item), 1)
					temp_arr = global.left_leg_arr
					temp_ammo = global.left_leg_ammo
					temp_mod_arr = global.leg_mod_arr
					global.left_leg_arr = noone
					global.right_leg_arr = noone
					global.leg_mod_arr = noone
					for(var i = 0; i < array_length(global.leg_mods); i++)
					{
						mouse_modifiers[i] = global.leg_mods[i]
						global.leg_mods[i] = noone
					}
				}
			}
		}
		if global.left_leg_wear != global.right_leg_wear && global.left_leg_wear != noone
		{
		
			draw_sprite_ext(global.left_leg_wear.spr, 4, _xx+176, _yy+276, 1.5, 1.375, 0, c_white, 1)
		
			if mouse_x >= _xx+158 && mouse_x <= _xx+221 && mouse_y >= _yy+351 && mouse_y <= _yy+444
			{
				draw_sprite_ext(spr_ui_no_grid_opaque, 0, mouse_x + 30, mouse_y + 30- 100, 3, 1.5, 0, c_white, 1)
				draw_sprite_ext(spr_ui_no_grid_opaque, 0, mouse_x + 30, mouse_y- 100, 3, 0.5, 0, c_white, 1)
				draw_text(mouse_x + 34, mouse_y + 34- 100, string($"Resistance: {global.left_leg_wear.armor.protection}"))
				draw_text(mouse_x + 34, mouse_y + 54- 100, string($"Armor Type: {global.left_leg_wear.armor.type}"))
				draw_text(mouse_x + 34, mouse_y + 74- 100, string($"Material: {global.left_leg_wear.armor.material}"))
				draw_text(mouse_x + 34, mouse_y + 94- 100, string($"Capacity: {global.left_leg_wear.armor.capacity}"))
				draw_text(mouse_x + 34, mouse_y + 4- 100, string($"{global.left_leg_wear.name}"))
			
				if mouse_check_button_pressed(mb_left)
				{
					global.mouse_item = global.left_leg_wear
					global.left_leg_wear = noone
					array_delete(global.clothing_arr, array_get_index(global.clothing_arr, global.mouse_item), 1)
					temp_arr = global.left_leg_arr
					temp_ammo = global.left_leg_ammo
					temp_mod_arr = global.leg_mod_arr
					global.left_leg_arr = noone
					global.leg_mod_arr = noone
					for(var i = 0; i < array_length(global.leg_mods); i++)
					{
						mouse_modifiers[i] = global.leg_mods[i]
						global.leg_mods[i] = noone
					}
				}
			}
		}
		
		if global.right_hand_wear != noone
		{
		
			draw_sprite_ext(global.right_hand_wear.spr, 4, _xx+176, _yy+276, 1.5, 1.375, 0, c_white, 1)
		
			if mouse_x >= _xx+256 && mouse_x <= _xx+286 && mouse_y >= _yy+321 && mouse_y <= _yy+349
			{
				draw_sprite_ext(spr_ui_no_grid_opaque, 0, mouse_x + 30, mouse_y + 30, 3, 1.5, 0, c_white, 1)
				draw_sprite_ext(spr_ui_no_grid_opaque, 0, mouse_x + 30, mouse_y, 3, 0.5, 0, c_white, 1)
				draw_text(mouse_x + 34, mouse_y + 34, string($"Resistance: {global.right_hand_wear.armor.protection}"))
				draw_text(mouse_x + 34, mouse_y + 54, string($"Armor Type: {global.right_hand_wear.armor.type}"))
				draw_text(mouse_x + 34, mouse_y + 74, string($"Material: {global.right_hand_wear.armor.material}"))
				draw_text(mouse_x + 34, mouse_y + 94, string($"Capacity: {global.right_hand_wear.armor.capacity}"))
				draw_text(mouse_x + 34, mouse_y + 4, string($"{global.right_hand_wear.name}"))
			
				if mouse_check_button_pressed(mb_left)
				{
					global.mouse_item = global.right_hand_wear
					global.right_hand_wear = noone
					array_delete(global.clothing_arr, array_get_index(global.clothing_arr, global.mouse_item), 1)
					temp_arr = global.right_hand_arr
					temp_ammo = global.right_hand_ammo
					temp_mod_arr = global.right_hand_mod_arr
					global.right_hand_arr = noone
					global.right_hand_mod_arr = noone
					for(var i = 0; i < array_length(global.right_hand_mods); i++)
					{
						mouse_modifiers[i] = global.right_hand_mods[i]
						global.right_hand_mods[i] = noone
					}
				}
			}
		}
		if global.left_leg_wear != global.right_leg_wear && global.right_leg_wear != noone
		{
		
			draw_sprite_ext(global.right_leg_wear.spr, 4, _xx+176, _yy+276, 1.5, 1.375, 0, c_white, 1)
		
			if mouse_x >= _xx+226 && mouse_x <= _xx+282 && mouse_y >= _yy+354 && mouse_y <= _yy+442
			{
				draw_sprite_ext(spr_ui_no_grid_opaque, 0, mouse_x + 30, mouse_y + 30- 100, 3, 1.5, 0, c_white, 1)
				draw_sprite_ext(spr_ui_no_grid_opaque, 0, mouse_x + 30, mouse_y- 100, 3, 0.5, 0, c_white, 1)
				draw_text(mouse_x + 34, mouse_y + 34- 100, string($"Resistance: {global.right_leg_wear.armor.protection}"))
				draw_text(mouse_x + 34, mouse_y + 54- 100, string($"Armor Type: {global.right_leg_wear.armor.type}"))
				draw_text(mouse_x + 34, mouse_y + 74- 100, string($"Material: {global.right_leg_wear.armor.material}"))
				draw_text(mouse_x + 34, mouse_y + 94- 100, string($"Capacity: {global.right_leg_wear.armor.capacity}"))
				draw_text(mouse_x + 34, mouse_y + 4- 100, string($"{global.right_leg_wear.name}"))
			
				if mouse_check_button_pressed(mb_left)
				{
					global.mouse_item = global.right_leg_wear
					global.right_leg_wear = noone
					array_delete(global.clothing_arr, array_get_index(global.clothing_arr, global.mouse_item), 1)
					temp_arr = global.right_leg_arr
					temp_ammo = global.right_leg_ammo
					temp_mod_arr = global.leg_mod_arr
					global.right_leg_arr = noone
					global.leg_mod_arr = noone
					for(var i = 0; i < array_length(global.leg_mods); i++)
					{
						mouse_modifiers[i] = global.leg_mods[i]
						global.leg_mods[i] = noone
					}
				}
			}
		}
		if global.torso_wear != noone
		{
			draw_sprite_ext(global.torso_wear.spr, 4, _xx+176, _yy+276, 1.5, 1.375, 0, c_white, 1)
		}
		if global.vest != noone
		{
		
			draw_sprite(spr_ui_no_grid_blue, 0, _xx+320, _yy+160)
			draw_sprite_ext(global.vest.spr, 4, _xx+176, _yy+276, 1.5, 1.375, 0, c_white, 1)
			draw_sprite_ext(global.vest.spr, 1, _xx+320, _yy+160, 1, 1, 0, c_white, 1)
		
			if mouse_x >= _xx+ 320 && mouse_x <= _xx+381 && mouse_y >= _yy+161 && mouse_y <= _yy+222
			{
				draw_sprite_ext(spr_ui_no_grid_opaque, 0, mouse_x + 30, mouse_y + 30, 3, 1.5, 0, c_white, 1)
				draw_sprite_ext(spr_ui_no_grid_opaque, 0, mouse_x + 30, mouse_y, 3, 0.5, 0, c_white, 1)
				draw_text(mouse_x + 34, mouse_y + 34, string($"Resistance: {global.vest.armor.protection}"))
				draw_text(mouse_x + 34, mouse_y + 54, string($"Armor Type: {global.vest.armor.type}"))
				draw_text(mouse_x + 34, mouse_y + 74, string($"Material: {global.vest.armor.material}"))
				draw_text(mouse_x + 34, mouse_y + 94, string($"Capacity: {global.vest.armor.capacity}"))
				draw_text(mouse_x + 34, mouse_y + 4, string($"{global.vest.name}"))
			
				if mouse_check_button_pressed(mb_left)
				{
					global.mouse_item = global.vest
					global.vest = noone
					array_delete(global.clothing_arr, array_get_index(global.clothing_arr, global.mouse_item), 1)
					temp_arr = global.vest_arr
					temp_ammo = global.vest_ammo
					temp_mod_arr = global.vest_mod_arr
					global.vest_arr = noone
					global.vest_mod_arr = noone
					for(var i = 0; i < array_length(global.vest_mods); i++)
					{
						mouse_modifiers[i] = global.vest_mods[i]
						global.vest_mods[i] = noone
					}
				}
			}
		}
		
		if global.torso_wear != noone
		{
		
			if mouse_x >= _xx+169 && mouse_x <= _xx+276 && mouse_y >= _yy+211 && mouse_y <= _yy+320
			{
				draw_sprite_ext(spr_ui_no_grid_opaque, 0, mouse_x + 30, mouse_y + 30, 3, 1.5, 0, c_white, 1)
				draw_sprite_ext(spr_ui_no_grid_opaque, 0, mouse_x + 30, mouse_y, 3, 0.5, 0, c_white, 1)
				draw_text(mouse_x + 34, mouse_y + 34, string($"Resistance: {global.torso_wear.armor.protection}"))
				draw_text(mouse_x + 34, mouse_y + 54, string($"Armor Type: {global.torso_wear.armor.type}"))
				draw_text(mouse_x + 34, mouse_y + 74, string($"Material: {global.torso_wear.armor.material}"))
				draw_text(mouse_x + 34, mouse_y + 94, string($"Capacity: {global.torso_wear.armor.capacity}"))
				draw_text(mouse_x + 34, mouse_y + 4, string($"{global.torso_wear.name}"))
			
				if mouse_check_button_pressed(mb_left)
				{
					global.mouse_item = global.torso_wear
					global.torso_wear = noone
					array_delete(global.clothing_arr, array_get_index(global.clothing_arr, global.mouse_item), 1)
					temp_arr = global.torso_arr
					temp_ammo = global.torso_ammo
					temp_mod_arr = global.torso_mod_arr
					global.torso_arr = noone
					global.torso_mod_arr = noone
					for(var i = 0; i < array_length(global.torso_mods); i++)
					{
						mouse_modifiers[i] = global.torso_mods[i]
						global.torso_mods[i] = noone
					}
				}
			}
		}

		if global.left_hand_wear != noone
		{
		
			draw_sprite_ext(global.left_hand_wear.spr, 4, _xx+176, _yy+276, 1.5, 1.375, 0, c_white, 1)
		
			if mouse_x >= _xx+160 && mouse_x <= _xx+189 && mouse_y >= _yy+320 && mouse_y <= _yy+349
			{
				draw_sprite_ext(spr_ui_no_grid_opaque, 0, mouse_x + 30, mouse_y + 30, 3, 1.5, 0, c_white, 1)
				draw_sprite_ext(spr_ui_no_grid_opaque, 0, mouse_x + 30, mouse_y, 3, 0.5, 0, c_white, 1)
				draw_text(mouse_x + 34, mouse_y + 34, string($"Resistance: {global.left_hand_wear.armor.protection}"))
				draw_text(mouse_x + 34, mouse_y + 54, string($"Armor Type: {global.left_hand_wear.armor.type}"))
				draw_text(mouse_x + 34, mouse_y + 74, string($"Material: {global.left_hand_wear.armor.material}"))
				draw_text(mouse_x + 34, mouse_y + 94, string($"Capacity: {global.left_hand_wear.armor.capacity}"))
				draw_text(mouse_x + 34, mouse_y + 4, string($"{global.left_hand_wear.name}"))
			
				if mouse_check_button_pressed(mb_left)
				{
					global.mouse_item = global.left_hand_wear
					global.left_hand_wear = noone
					array_delete(global.clothing_arr, array_get_index(global.clothing_arr, global.mouse_item), 1)
					temp_arr = global.left_hand_arr
					temp_ammo = global.left_hand_ammo
					temp_mod_arr = global.left_hand_mod_arr
					global.left_hand_arr = noone
					global.left_hand_mod_arr = noone
					for(var i = 0; i < array_length(global.left_hand_mods); i++)
					{
						mouse_modifiers[i] = global.left_hand_mods[i]
						global.left_hand_mods[i] = noone
					}
				}
			}
		}
		if global.face_wear != noone
		{
			draw_sprite(spr_ui_no_grid_blue, 0, _xx+64, _yy+352)
			draw_sprite_ext(global.face_wear.spr, 4, _xx+176, _yy+276, 1.5, 1.375, 0, c_white, 1)
			draw_sprite_ext(global.face_wear.spr, 1, _xx+72, _yy+346, 1, 1, 0, c_white, 1)
		
			if mouse_x >= _xx+64 && mouse_x <= _xx+128 && mouse_y >= _yy+352 && mouse_y <= _yy+416
			{
				draw_sprite_ext(spr_ui_no_grid_opaque, 0, mouse_x + 30, mouse_y + 30, 3, 1.5, 0, c_white, 1)
				draw_sprite_ext(spr_ui_no_grid_opaque, 0, mouse_x + 30, mouse_y, 3, 0.5, 0, c_white, 1)
				draw_text(mouse_x + 34, mouse_y + 34, string($"Resistance: {global.face_wear.armor.protection}"))
				draw_text(mouse_x + 34, mouse_y + 54, string($"Armor Type: {global.face_wear.armor.type}"))
				draw_text(mouse_x + 34, mouse_y + 74, string($"Material: {global.face_wear.armor.material}"))
				draw_text(mouse_x + 34, mouse_y + 94, string($"Capacity: {global.face_wear.armor.capacity}"))
				draw_text(mouse_x + 34, mouse_y + 4, string($"{global.face_wear.name}"))
			
				if mouse_check_button_pressed(mb_left)
				{
					global.mouse_item = global.face_wear
					global.face_wear = noone
					global.overlay = noone
					array_delete(global.clothing_arr, array_get_index(global.clothing_arr, global.mouse_item), 1)
					temp_arr = global.face_arr
					temp_ammo = global.face_ammo
					temp_mod_arr = global.face_mod_arr
					global.face_arr = noone
					global.face_mod_arr = noone
					for(var i = 0; i < array_length(global.face_mods); i++)
					{
						mouse_modifiers[i] = global.face_mods[i]
						global.face_mods[i] = noone
					}
				}
			}
		}
		if global.left_wrist != noone
		{
		
			draw_sprite(spr_ui_no_grid_blue, 0, _xx+64, _yy+160)
			draw_sprite_ext(global.left_wrist.spr, 4, _xx+176, _yy+276, 1.5, 1.375, 0, c_white, 1)
			draw_sprite_ext(global.left_wrist.spr, 1, _xx+64, _yy+160+16, 1, 1, 0, c_white, 1)
		
			if mouse_x >= _xx+64 && mouse_x <= _xx+124 && mouse_y >= _yy+165 && mouse_y <= _yy+222
			{
				draw_sprite_ext(spr_ui_no_grid_opaque, 0, mouse_x + 30, mouse_y + 30, 3, 1.5, 0, c_white, 1)
				draw_sprite_ext(spr_ui_no_grid_opaque, 0, mouse_x + 30, mouse_y, 3, 0.5, 0, c_white, 1)
				draw_text(mouse_x + 34, mouse_y + 34, string($"Resistance: {global.left_wrist.armor.protection}"))
				draw_text(mouse_x + 34, mouse_y + 54, string($"Armor Type: {global.left_wrist.armor.type}"))
				draw_text(mouse_x + 34, mouse_y + 74, string($"Material: {global.left_wrist.armor.material}"))
				draw_text(mouse_x + 34, mouse_y + 94, string($"Capacity: {global.left_wrist.armor.capacity}"))
				draw_text(mouse_x + 34, mouse_y + 4, string($"{global.left_wrist.name}"))
			
				if mouse_check_button_pressed(mb_left)
				{
					global.mouse_item = global.left_wrist
					global.left_wrist = noone
					array_delete(global.clothing_arr, array_get_index(global.clothing_arr, global.mouse_item), 1) 
					temp_arr = global.left_wrist_arr
					temp_ammo = global.left_wrist_ammo
					temp_mod_arr = global.left_wrist_mod_arr
					global.left_wrist_arr = noone
					global.left_wrist_mod_arr = noone
					for(var i = 0; i < array_length(global.left_wrist_mods); i++)
					{
						mouse_modifiers[i] = global.left_wrist_mods[i]
						global.left_wrist_mods[i] = noone
					}
				}
			}
		}
		if global.right_wrist != noone
		{
			draw_sprite(spr_ui_no_grid_blue, 0, _xx+64, _yy+256)
			draw_sprite_ext(global.right_wrist.spr, 5, _xx+176, _yy+276, 1.5, 1.375, 0, c_white, 1)
			draw_sprite_ext(global.right_wrist.spr, 1, _xx+64, _yy+256+16, 1, 1, 0, c_white, 1)
		
			if mouse_x >= _xx+64 && mouse_x <= _xx+124 && mouse_y >= _yy+259 && mouse_y <= _yy+318
			{
				draw_sprite_ext(spr_ui_no_grid_opaque, 0, mouse_x + 30, mouse_y + 30, 3, 1.5, 0, c_white, 1)
				draw_sprite_ext(spr_ui_no_grid_opaque, 0, mouse_x + 30, mouse_y, 3, 0.5, 0, c_white, 1)
				draw_text(mouse_x + 34, mouse_y + 34, string($"Resistance: {global.right_wrist.armor.protection}"))
				draw_text(mouse_x + 34, mouse_y + 54, string($"Armor Type: {global.right_wrist.armor.type}"))
				draw_text(mouse_x + 34, mouse_y + 74, string($"Material: {global.right_wrist.armor.material}"))
				draw_text(mouse_x + 34, mouse_y + 94, string($"Capacity: {global.right_wrist.armor.capacity}"))
				draw_text(mouse_x + 34, mouse_y + 4, string($"{global.right_wrist.name}"))
			
				if mouse_check_button_pressed(mb_left)
				{
					global.mouse_item = global.right_wrist
					global.right_wrist = noone
					array_delete(global.clothing_arr, array_get_index(global.clothing_arr, global.mouse_item), 1)
					temp_arr = global.right_wrist_arr
					temp_ammo = global.right_wrist_ammo
					temp_mod_arr = global.right_wrist_mod_arr
					global.right_wrist_arr = noone
					global.right_wrist_mod_arr = noone
					for(var i = 0; i < array_length(global.right_wrist_mods); i++)
					{
						mouse_modifiers[i] = global.right_wrist_mods[i]
						global.right_wrist_mods[i] = noone
					}
				}
			}
		}
		if global.top_head_wear != noone
		{
			draw_sprite_ext(global.top_head_wear.spr, 4, _xx+176, _yy+276, 1.5, 1.375, 0, c_white, 1)
		
			if mouse_x >= _xx+192 && mouse_x <= _xx+254 && mouse_y >= _yy+162 && mouse_y <= _yy+210
			{
				draw_sprite_ext(spr_ui_no_grid_opaque, 0, mouse_x + 30, mouse_y + 30, 3, 1.5, 0, c_white, 1)
				draw_sprite_ext(spr_ui_no_grid_opaque, 0, mouse_x + 30, mouse_y, 3, 0.5, 0, c_white, 1)
				draw_text(mouse_x + 34, mouse_y + 34, string($"Resistance: {global.top_head_wear.armor.protection}"))
				draw_text(mouse_x + 34, mouse_y + 54, string($"Armor Type: {global.top_head_wear.armor.type}"))
				draw_text(mouse_x + 34, mouse_y + 74, string($"Material: {global.top_head_wear.armor.material}"))
				draw_text(mouse_x + 34, mouse_y + 94, string($"Capacity: {global.top_head_wear.armor.capacity}"))
				draw_text(mouse_x + 34, mouse_y + 4, string($"{global.top_head_wear.name}"))
			
				if mouse_check_button_pressed(mb_left)
				{
					global.mouse_item = global.top_head_wear
					global.top_head_wear = noone
					array_delete(global.clothing_arr, array_get_index(global.clothing_arr, global.mouse_item), 1)
					temp_arr = global.top_head_arr
					temp_ammo = global.top_head_ammo
					temp_mod_arr = global.head_mod_arr
					global.top_head_arr = noone
					global.head_mod_arr = noone
					for(var i = 0; i < array_length(global.head_mods); i++)
					{
						mouse_modifiers[i] = global.head_mods[i]
						global.head_mods[i] = noone
					}
				}
			}
		}
		if global.belt != noone
		{
			draw_sprite_ext(global.belt.spr, 1, _xx+416, _yy+576, 1, 1, 0, c_white, 1)
		
			if mouse_x >= _xx+416 && mouse_x <= _xx+479 && mouse_y >= _yy+576 && mouse_y <= _yy+639
			{
				draw_sprite_ext(spr_ui_no_grid_opaque, 0, mouse_x + 30, mouse_y + 30 - 100, 3, 1.5, 0, c_white, 1)
				draw_sprite_ext(spr_ui_no_grid_opaque, 0, mouse_x + 30, mouse_y - 100, 3, 0.5, 0, c_white, 1)
				draw_text(mouse_x + 34, mouse_y + 34 - 100, string($"Resistance: {global.belt.armor.protection}"))
				draw_text(mouse_x + 34, mouse_y + 54 - 100, string($"Armor Type: {global.belt.armor.type}"))
				draw_text(mouse_x + 34, mouse_y + 74 - 100, string($"Material: {global.belt.armor.material}"))
				draw_text(mouse_x + 34, mouse_y + 94 - 100, string($"Capacity: {global.belt.armor.capacity}"))
				draw_text(mouse_x + 34, mouse_y + 4 - 100, string($"{global.belt.name}"))
			
				if mouse_check_button_pressed(mb_left)
				{
					global.mouse_item = global.belt
					global.belt = noone
					array_delete(global.clothing_arr, array_get_index(global.clothing_arr, global.mouse_item), 1)
					temp_arr = global.belt_arr
					temp_ammo = global.belt_ammo
					temp_mod_arr = global.belt_mod_arr
					global.belt_arr = noone
					global.belt_mod_arr = noone
					for(var i = 0; i < array_length(global.belt_mods); i++)
					{
						mouse_modifiers[i] = global.belt_mods[i]
						global.belt_mods[i] = noone
					}
				}
			}
		}
		
		
		
	}
	
	
	
	
	
} else
{
	sound_init = false
	layer_set_visible(layer_get_id("close_item_inspect_ui"), false)
	layer_set_visible(layer_get_id("inventory_ui"), false)
	
	if keyboard_check_pressed(obj_game_initializers.alt_function_key) && stats_open == false && function_wheel_strip == false && function_wheel_health == false 
	{
		function_wheel = !function_wheel
	} 

if function_wheel == true && global.left_hand_item != noone && using_hand == false && global.left_hand_item != global.item_list.two_hand_item
	{
		instance_create_depth(_xx+320, _yy+32, -9, obj_function_wheel)
		if !place_meeting(x, y, obj_mouse)
		{
			draw_sprite_ext(spr_function_wheel, 0, _xx+320, _yy+32, 5.5, 5.5, 0, c_white, 1)
		}
		
		if mouse_x > _xx+544 && mouse_x < _xx+642 && mouse_y >  _yy+161 && mouse_y <  _yy+252
		{
			draw_sprite_ext(spr_function_wheel, 1, _xx+320, _yy+32, 5.5, 5.5, 0, c_white, 1)
			draw_text_color(_xx+544, _yy+161, "Throw (Z)", c_black, c_black, c_black, c_black, 1)
			if mouse_check_button_pressed(mb_left)
			{
				throw_item(global.left_hand_item)
			}
		}
		if mouse_x > _xx+674 && mouse_x < _xx+767 && mouse_y > _yy+158 && mouse_y <  _yy+254
		{
			draw_sprite_ext(spr_function_wheel, 2, _xx+320, _yy+32, 5.5, 5.5, 0, c_white, 1)
			draw_text_color(_xx+720, _yy+158, "Combine", c_black, c_black, c_black, c_black, 1)
			if mouse_check_button_pressed(mb_left) && global.right_hand_item != noone
			{
				combine(global.left_hand_item, global.right_hand_item)
			}
		}
		if mouse_x > _xx+796 && mouse_x < _xx+896 && mouse_y > _yy+258 && mouse_y < _yy+349
		{
			draw_sprite_ext(spr_function_wheel, 3, _xx+320, _yy+32, 5.5, 5.5, 0, c_white, 1)
			draw_text_color(_xx+820, _yy+300, "Two-hand", c_black, c_black, c_black, c_black, 1)
			if mouse_check_button_pressed(mb_left) && global.right_hand_item == noone
			{
				//global.left_hand_item.effect.w3()
				if global.right_hand_item != global.item_list.two_hand_item
				{
					global.right_hand_item = global.item_list.two_hand_item
				}
				else if global.right_hand_item == global.item_list.two_hand_item
				{
					global.right_hand_item = noone
				}
			}
		}
		if mouse_x > _xx+798 && mouse_x < _xx+893 && mouse_y > _yy+388 && mouse_y < _yy+504
		{
			draw_sprite_ext(spr_function_wheel, 4, _xx+320, _yy+32, 5.5, 5.5, 0, c_white, 1)
			draw_text_color(_xx+798, _yy+428, global.left_hand_item.effect.w4n, c_black, c_black, c_black, c_black, 1)
			if mouse_check_button_pressed(mb_left)
			{
				global.left_hand_item.effect.w4()
			}
		}
		if mouse_x > _xx+673 && mouse_x < _xx+768 && mouse_y > _yy+478 && mouse_y < _yy+599
		{
			draw_sprite_ext(spr_function_wheel, 5, _xx+320, _yy+32, 5.5, 5.5, 0, c_white, 1)
			draw_text_color(_xx+693, _yy+568, global.left_hand_item.effect.w5n, c_black, c_black, c_black, c_black, 1)
			if mouse_check_button_pressed(mb_left)
			{
				global.left_hand_item.effect.w5()
			}
		}
		if mouse_x > _xx+544 && mouse_x < _xx+642 && mouse_y > _yy+480 && mouse_y < _yy+609
		{
			draw_sprite_ext(spr_function_wheel, 6, _xx+320, _yy+32, 5.5, 5.5, 0, c_white, 1)
			draw_text_color(_xx+524, _yy+560, global.left_hand_item.effect.w6n, c_black, c_black, c_black, c_black, 1)
			if mouse_check_button_pressed(mb_left)
			{
				global.left_hand_item.effect.w6()
			}
		}
		if mouse_x > _xx+447 && mouse_x < _xx+548 && mouse_y > _yy+388 && mouse_y < _yy+478
		{
			draw_sprite_ext(spr_function_wheel, 7, _xx+320, _yy+32, 5.5, 5.5, 0, c_white, 1)
			draw_text_color(_xx+407, _yy+438, global.left_hand_item.effect.w7n, c_black, c_black, c_black, c_black, 1)
			if mouse_check_button_pressed(mb_left)
			{
				global.left_hand_item.effect.w7()
			}
		}
		if mouse_x > _xx+447 && mouse_x < _xx+549 && mouse_y > _yy+259 && mouse_y < _yy+346
		{
			draw_sprite_ext(spr_function_wheel, 8, _xx+320, _yy+32, 5.5, 5.5, 0, c_white, 1)
			draw_text_color(_xx+367, _yy+269, global.left_hand_item.effect.w8n, c_black, c_black, c_black, c_black, 1)
		if mouse_check_button_pressed(mb_left)
			{
				global.left_hand_item.effect.w8()
			}
		}
	} else
	{
		instance_destroy(obj_function_wheel)
	}
	if function_wheel == true && global.right_hand_item != noone && using_hand == true && global.right_hand_item != global.item_list.two_hand_item
	{
		instance_create_depth(_xx+320, _yy+32, -9, obj_function_wheel)
		if !place_meeting(x, y, obj_mouse)
		{
			draw_sprite_ext(spr_function_wheel, 0, _xx+320, _yy+32, 5.5, 5.5, 0, c_white, 1)
		}
		
		if mouse_x > _xx+544 && mouse_x < _xx+642 && mouse_y >  _yy+161 && mouse_y <  _yy+252
		{
			draw_sprite_ext(spr_function_wheel, 1, _xx+320, _yy+32, 5.5, 5.5, 0, c_white, 1)
			draw_text_color(_xx+544, _yy+161, "Throw (Z)", c_black, c_black, c_black, c_black, 1)
			if mouse_check_button_pressed(mb_left)
			{
				throw_item(global.right_hand_item)
			}
		}
		if mouse_x > _xx+674 && mouse_x < _xx+767 && mouse_y > _yy+158 && mouse_y <  _yy+254
		{
			draw_sprite_ext(spr_function_wheel, 2, _xx+320, _yy+32, 5.5, 5.5, 0, c_white, 1)
			draw_text_color(_xx+720, _yy+158, "Combine", c_black, c_black, c_black, c_black, 1)
			if mouse_check_button_pressed(mb_left) && global.left_hand_item != noone
			{
				combine(global.left_hand_item, global.right_hand_item)
			}
		}
		if mouse_x > _xx+796 && mouse_x < _xx+896 && mouse_y > _yy+258 && mouse_y < _yy+349
		{
			draw_sprite_ext(spr_function_wheel, 3, _xx+320, _yy+32, 5.5, 5.5, 0, c_white, 1)
			draw_text_color(_xx+820, _yy+300, "Two-hand", c_black, c_black, c_black, c_black, 1)
			if mouse_check_button_pressed(mb_left) && global.left_hand_item == noone
			{
				//global.left_hand_item.effect.w3()
				if 	global.left_hand_item != global.item_list.two_hand_item
				{
					global.left_hand_item = global.item_list.two_hand_item
				}
				else if global.left_hand_item == global.item_list.two_hand_item
				{
					global.left_hand_item = noone
				}
			}
		}
		if mouse_x > _xx+798 && mouse_x < _xx+893 && mouse_y > _yy+388 && mouse_y < _yy+504
		{
			draw_sprite_ext(spr_function_wheel, 4, _xx+320, _yy+32, 5.5, 5.5, 0, c_white, 1)
			draw_text_color(_xx+798, _yy+428, global.right_hand_item.effect.w4n, c_black, c_black, c_black, c_black, 1)
			if mouse_check_button_pressed(mb_left)
			{
				global.right_hand_item.effect.w4()
			}
		}
		if mouse_x > _xx+673 && mouse_x < _xx+768 && mouse_y > _yy+478 && mouse_y < _yy+599
		{
			draw_sprite_ext(spr_function_wheel, 5, _xx+320, _yy+32, 5.5, 5.5, 0, c_white, 1)
			draw_text_color(_xx+693, _yy+568, global.right_hand_item.effect.w5n, c_black, c_black, c_black, c_black, 1)
			if mouse_check_button_pressed(mb_left)
			{
				global.right_hand_item.effect.w5()
			}
		}
		if mouse_x > _xx+544 && mouse_x < _xx+642 && mouse_y > _yy+480 && mouse_y < _yy+609
		{
			draw_sprite_ext(spr_function_wheel, 6, _xx+320, _yy+32, 5.5, 5.5, 0, c_white, 1)
			draw_text_color(_xx+524, _yy+560, global.right_hand_item.effect.w6n, c_black, c_black, c_black, c_black, 1)
			if mouse_check_button_pressed(mb_left)
			{
				global.right_hand_item.effect.w6()
			}
		}
		if mouse_x > _xx+447 && mouse_x < _xx+548 && mouse_y > _yy+388 && mouse_y < _yy+478
		{
			draw_sprite_ext(spr_function_wheel, 7, _xx+320, _yy+32, 5.5, 5.5, 0, c_white, 1)
			draw_text_color(_xx+407, _yy+438, global.right_hand_item.effect.w7n, c_black, c_black, c_black, c_black, 1)
			if mouse_check_button_pressed(mb_left)
			{
				global.right_hand_item.effect.w7()
			}
		}
		if mouse_x > _xx+447 && mouse_x < _xx+549 && mouse_y > _yy+259 && mouse_y < _yy+346
		{
			draw_sprite_ext(spr_function_wheel, 8, _xx+320, _yy+32, 5.5, 5.5, 0, c_white, 1)
			draw_text_color(_xx+367, _yy+269, global.right_hand_item.effect.w8n, c_black, c_black, c_black, c_black, 1)
		if mouse_check_button_pressed(mb_left)
			{
				global.right_hand_item.effect.w8()
			}
		}
	} else
	{
		instance_destroy(obj_function_wheel)
	}
}

show_debug_message(using_hand)

if keyboard_check_pressed(ord("F")) && stats_open == false && function_wheel == false && function_wheel_health == false 
	{
		if (using_hand == 0 && global.left_hand_item != noone && global.left_hand_item.specs.item_type == "Firearm") || (using_hand == 1 && global.right_hand_item != noone && global.right_hand_item.specs.item_type == "Firearm") 
		{
			function_wheel_strip = !function_wheel_strip
		}
	} 
if (using_hand == 0 && global.left_hand_item == noone)
{
	function_wheel_strip = false
}
if (using_hand == 1 && global.right_hand_item == noone)
{
	function_wheel_strip = false
}
	
if function_wheel_strip	
	{
		instance_create_depth(_xx+320, _yy+32, -9, obj_function_wheel)
		if !place_meeting(x, y, obj_mouse)
		{
			draw_sprite_ext(spr_function_wheel_strip, 0, _xx+320, _yy+32, 5.5, 5.5, 0, c_white, 1)
		}
		
		if mouse_x > _xx+544 && mouse_x < _xx+642 && mouse_y >  _yy+161 && mouse_y <  _yy+252
		{
			draw_sprite_ext(spr_function_wheel_strip, 1, _xx+320, _yy+32, 5.5, 5.5, 0, c_white, 1)
			draw_text_color(_xx+544, _yy+161, "Trigger", c_black, c_black, c_black, c_black, 1)
			if mouse_check_button_pressed(mb_left)
			{
				if using_hand == 0
				{
					field_strip(global.left_hand_item, left_modifiers[1], 1, 5)
				} else
				{
					field_strip(global.right_hand_item, right_modifiers[1], 1, 5)
				}
			}
		}
		if mouse_x > _xx+674 && mouse_x < _xx+767 && mouse_y > _yy+158 && mouse_y <  _yy+254
		{
			draw_sprite_ext(spr_function_wheel_strip, 2, _xx+320, _yy+32, 5.5, 5.5, 0, c_white, 1)
			draw_text_color(_xx+720, _yy+158, "Hammer", c_black, c_black, c_black, c_black, 1)
			if mouse_check_button_pressed(mb_left)
			{
				if using_hand == 0
				{
					field_strip(global.left_hand_item, left_modifiers[2], 2, 6)
				} else
				{
					field_strip(global.right_hand_item, right_modifiers[2], 2, 6)
				}
			}
		}
		if mouse_x > _xx+796 && mouse_x < _xx+896 && mouse_y > _yy+258 && mouse_y < _yy+349
		{
			draw_sprite_ext(spr_function_wheel_strip, 3, _xx+320, _yy+32, 5.5, 5.5, 0, c_white, 1)
			draw_text_color(_xx+820, _yy+300, "Barrel", c_black, c_black, c_black, c_black, 1)
			if mouse_check_button_pressed(mb_left)
			{
				if using_hand == 0
				{
					field_strip(global.left_hand_item, left_modifiers[3], 3, 7)
				} else
				{
					field_strip(global.right_hand_item, right_modifiers[3], 3, 7)
				}
			}
		}
		if mouse_x > _xx+798 && mouse_x < _xx+893 && mouse_y > _yy+388 && mouse_y < _yy+504
		{
			draw_sprite_ext(spr_function_wheel_strip, 4, _xx+320, _yy+32, 5.5, 5.5, 0, c_white, 1)
			draw_text_color(_xx+798, _yy+428, "Recoil Spring", c_black, c_black, c_black, c_black, 1)
			if mouse_check_button_pressed(mb_left)
			{
				if using_hand == 0
				{
					field_strip(global.left_hand_item, left_modifiers[4], 4, 8)
				} else
				{
					field_strip(global.right_hand_item, right_modifiers[4], 4, 8)
				}
			}
		}
		if mouse_x > _xx+673 && mouse_x < _xx+768 && mouse_y > _yy+478 && mouse_y < _yy+599
		{
			draw_sprite_ext(spr_function_wheel_strip, 5, _xx+320, _yy+32, 5.5, 5.5, 0, c_white, 1)
			draw_text_color(_xx+693, _yy+568, "Bolt/Slide", c_black, c_black, c_black, c_black, 1)
			if mouse_check_button_pressed(mb_left)
			{
				if using_hand == 0
				{
					field_strip(global.left_hand_item, left_modifiers[14], 14, 20)
				} else
				{
					field_strip(global.right_hand_item, right_modifiers[14], 14, 20)
				}
			}
		}
		if mouse_x > _xx+544 && mouse_x < _xx+642 && mouse_y > _yy+480 && mouse_y < _yy+609
		{
			draw_sprite_ext(spr_function_wheel_strip, 6, _xx+320, _yy+32, 5.5, 5.5, 0, c_white, 1)
			draw_text_color(_xx+524, _yy+560, "Firing Pin", c_black, c_black, c_black, c_black, 1)
			if mouse_check_button_pressed(mb_left)
			{
				if using_hand == 0
				{
					field_strip(global.left_hand_item, left_modifiers[12], 12, 18)
				} else
				{
					field_strip(global.right_hand_item, right_modifiers[12], 12, 18)
				}
			}
		}
		if mouse_x > _xx+447 && mouse_x < _xx+548 && mouse_y > _yy+388 && mouse_y < _yy+478
		{
			draw_sprite_ext(spr_function_wheel_strip, 7, _xx+320, _yy+32, 5.5, 5.5, 0, c_white, 1)
			draw_text_color(_xx+407, _yy+438, "Extractor", c_black, c_black, c_black, c_black, 1)
			if mouse_check_button_pressed(mb_left)
			{
				if using_hand == 0
				{
					field_strip(global.left_hand_item, left_modifiers[13], 13, 19)
				} else
				{
					field_strip(global.right_hand_item, right_modifiers[13], 13, 19)
				}
			}
		}
		if mouse_x > _xx+447 && mouse_x < _xx+549 && mouse_y > _yy+259 && mouse_y < _yy+346
		{
			draw_sprite_ext(spr_function_wheel_strip, 8, _xx+320, _yy+32, 5.5, 5.5, 0, c_white, 1)
			draw_text_color(_xx+367, _yy+269, "", c_black, c_black, c_black, c_black, 1)
		if mouse_check_button_pressed(mb_left)
			{
				
			}
		}
	} else
	{
		instance_destroy(obj_function_wheel)
	}

if keyboard_check_pressed(obj_game_initializers.health_wheel_key)  && stats_open == false && function_wheel == false && function_wheel_strip == false 
	{
		function_wheel_health = !function_wheel_health
	} 
	
	

if function_wheel_health == true 
	{
		instance_create_depth(_xx+320, _yy+32, -9, obj_function_wheel)
		if !place_meeting(x, y, obj_mouse)
		{
			draw_sprite_ext(spr_function_wheel_health, 0, _xx+320, _yy+32, 5.5, 5.5, 0, c_white, 1)
		}
		
		if mouse_x > _xx+544 && mouse_x < _xx+642 && mouse_y >  _yy+161 && mouse_y <  _yy+252
		{
			draw_sprite_ext(spr_function_wheel_health, 1, _xx+320, _yy+32, 5.5, 5.5, 0, c_white, 1)
			draw_text_color(_xx+544, _yy+161, "Urinate", c_black, c_black, c_black, c_black, 1)
			if mouse_check_button_pressed(mb_left)
			{
			
			}
		}
		if mouse_x > _xx+674 && mouse_x < _xx+767 && mouse_y > _yy+158 && mouse_y <  _yy+254
		{
			draw_sprite_ext(spr_function_wheel_health, 2, _xx+320, _yy+32, 5.5, 5.5, 0, c_white, 1)
			draw_text_color(_xx+720, _yy+158, "Check Pulse", c_black, c_black, c_black, c_black, 1)
			if mouse_check_button_pressed(mb_left)
			{
			
			}
		}
		if mouse_x > _xx+796 && mouse_x < _xx+896 && mouse_y > _yy+258 && mouse_y < _yy+349
		{
			draw_sprite_ext(spr_function_wheel_health, 3, _xx+320, _yy+32, 5.5, 5.5, 0, c_white, 1)
			draw_text_color(_xx+820, _yy+300, "Force Vomit", c_black, c_black, c_black, c_black, 1)
			if mouse_check_button_pressed(mb_left)
			{
		
			}
		}
		if mouse_x > _xx+798 && mouse_x < _xx+893 && mouse_y > _yy+388 && mouse_y < _yy+504
		{
			draw_sprite_ext(spr_function_wheel_health, 4, _xx+320, _yy+32, 5.5, 5.5, 0, c_white, 1)
			draw_text_color(_xx+798, _yy+428, "Other Func. 1", c_black, c_black, c_black, c_black, 1)
			if mouse_check_button_pressed(mb_left)
			{
			
			}
		}
		if mouse_x > _xx+673 && mouse_x < _xx+768 && mouse_y > _yy+478 && mouse_y < _yy+599
		{
			draw_sprite_ext(spr_function_wheel_health, 5, _xx+320, _yy+32, 5.5, 5.5, 0, c_white, 1)
			draw_text_color(_xx+693, _yy+568, "Other Func. 2", c_black, c_black, c_black, c_black, 1)
			if mouse_check_button_pressed(mb_left)
			{
			
			}
		}
		if mouse_x > _xx+544 && mouse_x < _xx+642 && mouse_y > _yy+480 && mouse_y < _yy+609
		{
			draw_sprite_ext(spr_function_wheel_health, 6, _xx+320, _yy+32, 5.5, 5.5, 0, c_white, 1)
			draw_text_color(_xx+524, _yy+560, "Other Func. 3", c_black, c_black, c_black, c_black, 1)
			if mouse_check_button_pressed(mb_left)
			{
				
			}
		}
		if mouse_x > _xx+447 && mouse_x < _xx+548 && mouse_y > _yy+388 && mouse_y < _yy+478
		{
			draw_sprite_ext(spr_function_wheel_health, 7, _xx+320, _yy+32, 5.5, 5.5, 0, c_white, 1)
			draw_text_color(_xx+407, _yy+438, "Other Func. 4", c_black, c_black, c_black, c_black, 1)
			if mouse_check_button_pressed(mb_left)
			{
				
			}
		}
		if mouse_x > _xx+447 && mouse_x < _xx+549 && mouse_y > _yy+259 && mouse_y < _yy+346
		{
			draw_sprite_ext(spr_function_wheel_health, 8, _xx+320, _yy+32, 5.5, 5.5, 0, c_white, 1)
			draw_text_color(_xx+367, _yy+269, "Other Func. 5", c_black, c_black, c_black, c_black, 1)
		if mouse_check_button_pressed(mb_left)
			{
				
			}
		}
	} else
	{
		instance_destroy(obj_function_wheel_health)
	}




if obj_health_manager.health_open == true
{
	if init_prev == false
	{
		prev_x = obj_player.x
		prev_y = obj_player.y
	
		obj_player.x = 0
		obj_player.y = 0
		
		init_prev = true
	}
} else if obj_health_manager.health_open == false && stats_open == false && player_stats == false
{
	if init_prev == true
	{
	obj_player.x = prev_x
	obj_player.y = prev_y
	init_prev = false
	}
}

if stats_open == false && obj_health_manager.health_open == false && close_inspect == false && player_stats == false
{
	if global.belt != noone
	{
		draw_sprite_ext(spr_ui_no_grid_blue, 0, _xx+416, _yy+544, 4, 0.5, 0, c_white, 1)
		draw_text_transformed(_xx+420, _yy+548, string($"1-{current_belt_size}: change item"), 1, 1, 0)
		
		draw_sprite_ext(spr_ui_no_grid_blue, 0, _xx+416, _yy+608, 4, 0.5, 0, c_white, 1)
		draw_text_transformed(_xx+420, _yy+612, "Shift Q/E: belt to hand", 1, 1, 0)
		
		draw_sprite_ext(spr_ui_no_grid_blue, 0, _xx+416, _yy+576, 4, 0.5, 0, c_white, 1)
		draw_text_transformed(_xx+420, _yy+580, "Control Q/E: hand to belt", 1, 1, 0)
	}
}
if close_inspect == false
{
		if using_hand == false && global.left_hand_item != noone &&  obj_health_manager.health_open == false && stats_open == false && global.left_hand_item != global.item_list.two_hand_item && global.ui_show == true && player_stats == false
		{
			draw_sprite_ext(spr_ui_no_grid_blue, 0, _xx + 32 + 960, _yy + 374 + 224, 5, 0.5, 0, c_white, 1)
			draw_sprite_ext(spr_ui_no_grid_blue, 0, _xx + 32 + 960, _yy + 416 + 224, 5, 0.5, 0, c_white, 1)
			draw_sprite_ext(spr_ui_no_grid_blue, 0, _xx + 32 + 960, _yy + 448 + 224, 5, 0.5, 0, c_white, 1)
			draw_sprite_ext(spr_ui_no_grid_blue, 0, _xx + 32 + 960, _yy + 480 + 224, 5, 0.5, 0, c_white, 1)
			draw_text(_xx+40 + 960, _yy+382 + 224, string($"Press X for more functions"))
			draw_text(_xx+40 + 960, _yy+424 + 224, string($"Left Click: {global.left_hand_item.effect.lfunc_name}"))
			draw_text(_xx+40 + 960, _yy+456 + 224, string($"Right Click: {global.left_hand_item.effect.rfunc_name}"))
			draw_text(_xx+40 + 960, _yy+488 + 224, string($"Mid-Mouse Click: {global.left_hand_item.effect.mfunc_name}"))
			
			if global.left_hand_item.specs.item_type == "Firearm"
			{
				draw_sprite_ext(spr_ui_no_grid_blue, 0, _xx + 32 + 960, _yy + 342 + 224, 5, 0.5, 0, c_white, 1)
				draw_text(_xx+40 + 960, _yy+350 + 224, string($"F to field strip"))
				draw_sprite_ext(spr_ui_no_grid_blue, 0, _xx + 32 + 960, _yy + 310 + 224, 5, 0.5, 0, c_white, 1)
				draw_text(_xx+40 + 960, _yy+318 + 224, string($"Shift to Aim"))
				draw_sprite_ext(spr_ui_no_grid_blue, 0, _xx + 32 + 960, _yy + 278 + 224, 5, 0.5, 0, c_white, 1)
				draw_text(_xx+40 + 960, _yy+286 + 224, string($"R to Switch Modes ({firing_mode_name(left_modifiers[24])})"))
			}
			
		}
		if using_hand == true && global.right_hand_item != noone &&  obj_health_manager.health_open == false && stats_open == false && global.right_hand_item != global.item_list.two_hand_item && global.ui_show == true && player_stats == false
		{
			draw_sprite_ext(spr_ui_no_grid_blue, 0, _xx + 32 + 960, _yy + 374 + 224, 5, 0.5, 0, c_white, 1)
			draw_sprite_ext(spr_ui_no_grid_blue, 0, _xx + 32 + 960, _yy + 416 + 224, 5, 0.5, 0, c_white, 1)
			draw_sprite_ext(spr_ui_no_grid_blue, 0, _xx + 32 + 960, _yy + 448 + 224, 5, 0.5, 0, c_white, 1)
			draw_sprite_ext(spr_ui_no_grid_blue, 0, _xx + 32 + 960, _yy + 480 + 224, 5, 0.5, 0, c_white, 1)
			draw_text(_xx+40 + 960, _yy+382 + 224, string($"Press X for more functions"))
			draw_text(_xx+40 + 960, _yy+424 + 224, string($"Left Click: {global.right_hand_item.effect.lfunc_name}"))
			draw_text(_xx+40 + 960, _yy+456 + 224, string($"Right Click: {global.right_hand_item.effect.rfunc_name}"))
			draw_text(_xx+40 + 960, _yy+488 + 224, string($"Mid-Mouse Click: {global.right_hand_item.effect.mfunc_name}"))
			
			if global.right_hand_item.specs.item_type == "Firearm"
			{
				draw_sprite_ext(spr_ui_no_grid_blue, 0, _xx + 32 + 960, _yy + 342 + 224, 5, 0.5, 0, c_white, 1)
				draw_text(_xx+40 + 960, _yy+350 + 224, string($"F to field strip"))
				draw_sprite_ext(spr_ui_no_grid_blue, 0, _xx + 32 + 960, _yy + 310 + 224, 5, 0.5, 0, c_white, 1)
				draw_text(_xx+40 + 960, _yy+318 + 224, string($"Shift to Aim"))
				draw_sprite_ext(spr_ui_no_grid_blue, 0, _xx + 32 + 960, _yy + 278 + 224, 5, 0.5, 0, c_white, 1)
				draw_text(_xx+40 + 960, _yy+286 + 224, string($"R to Switch Modes ({firing_mode_name(right_modifiers[24])})"))
			}
		}

if player_stats == false
{
	draw_sprite_ext(spr_ui_no_grid_blue, 0, _xx + 32, _yy + 544, 2.5, 0.5, 0, c_white, 1)
	draw_sprite_ext(spr_ui_no_grid_blue, 0, _xx + 224, _yy + 544, 2.5, 0.5, 0, c_white, 1)

	draw_sprite_ext(spr_ui_no_grid_blue, 0, _xx + 32, _yy + 608, 2.5, 2, 0, c_white, 1)
	draw_sprite_ext(spr_ui_no_grid_blue, 0, _xx + 224, _yy + 608, 2.5, 2, 0, c_white, 1)

	draw_sprite_ext(spr_ui_no_grid, 0, _xx + 160, _yy+ 608, 0.5, 0.5, 0, c_white, 1)
	draw_sprite_ext(spr_ui_no_grid, 0, _xx + 352, _yy+ 608, 0.5, 0.5, 0, c_white, 1)

	draw_sprite_ext(spr_ui_no_grid, 0, _xx + 32, _yy+ 608, 0.5, 0.5, 0, c_white, 1)
	draw_sprite_ext(spr_ui_no_grid, 0, _xx + 224, _yy+ 608, 0.5, 0.5, 0, c_white, 1)


	if using_hand == true
	{
		draw_text(_xx+40, _yy+552, "Left Hand")
		draw_text(_xx+232, _yy+552, "Right Hand (*)")
		draw_text(_xx+166, _yy+610, global.left_hand_amount)
		draw_text(_xx+358, _yy+610, global.right_hand_amount)
		draw_text(_xx+38, _yy+610, hand_ammo[0])
		draw_text(_xx+230, _yy+610, hand_ammo[1])
	
	} else
	{
		draw_text(_xx+40, _yy+552, "Left Hand (*)")
		draw_text(_xx+232, _yy+552, "Right Hand")
		draw_text(_xx+166, _yy+610, global.left_hand_amount)
		draw_text(_xx+358, _yy+610, global.right_hand_amount)
		draw_text(_xx+38, _yy+610, hand_ammo[0])
		draw_text(_xx+230, _yy+610, hand_ammo[1])
	
	}
}


if global.left_hand_item != noone
{
	if left_modifiers[9] != 0
	{
		draw_sprite_ext(global.left_hand_item.spr, 2+condition_sprite(left_modifiers[9]), _xx+50, _yy+628+global.left_hand_item.rotation*1.5, global.left_hand_item.hold_size, global.left_hand_item.hold_size, global.left_hand_item.rotation, c_white, 1)
	} else
	{
		draw_sprite_ext(global.left_hand_item.spr, 2, _xx+50, _yy+628+global.left_hand_item.rotation*1.5, global.left_hand_item.hold_size, global.left_hand_item.hold_size, global.left_hand_item.rotation, c_white, 1)
	}
	
	if left_modifiers[35] == false && global.left_hand_item.specs.item_type == "Grenade"
	{
		draw_text(_xx+80, _yy+670, "ARMED")
	}
	if global.left_hand_item.specs.item_type == "Magazine" && left_modifiers[38] != 0 && array_length(left_modifiers[38]) > 0
	{
		var ext = left_modifiers[38]
		draw_text(_xx+80, _yy+670, ext[array_length(ext)-1].specs.bullet)
	}
	
}

if global.right_hand_item != noone
{
	if right_modifiers[9] != 0
	{
		draw_sprite_ext(global.right_hand_item.spr, 2+condition_sprite(right_modifiers[9]), _xx+242, _yy+628+global.right_hand_item.rotation*1.5, global.right_hand_item.hold_size, global.right_hand_item.hold_size, global.right_hand_item.rotation, c_white, 1)
	}
	else
	{
		draw_sprite_ext(global.right_hand_item.spr, 2, _xx+242, _yy+628+global.right_hand_item.rotation*1.5, global.right_hand_item.hold_size, global.right_hand_item.hold_size, global.right_hand_item.rotation, c_white, 1)
	}
	
	if right_modifiers[35] == false && global.right_hand_item.specs.item_type == "Grenade"
	{
		draw_text(_xx+272, _yy+670, "ARMED")
	}
	if global.right_hand_item.specs.item_type == "Magazine" && right_modifiers[38] != 0 && array_length(right_modifiers[38]) > 0
	{
		var ext = right_modifiers[38]
		draw_text(_xx+272, _yy+670, ext[array_length(ext)-1].specs.bullet)
	}
	
}
}

if global.mouse_item != noone
{
	draw_sprite(global.mouse_item.spr, 0, mouse_x, mouse_y)
}



if global.left_hand_item == noone && using_hand == false
{
	function_wheel = false
}
if global.right_hand_item == noone && using_hand == true
{
	function_wheel = false
}

if global.hover_item != noone
{
	if global.hover_timer < 1
	{
		draw_sprite_ext(spr_ui_no_grid_opaque, 0, mouse_x, mouse_y, string_length(global.hover_item.name)/4.5, 0.5, 0, c_white, 1)	
		draw_text_transformed(mouse_x+8, mouse_y+8, global.hover_item.name, 1, 1, 0)
		
		if global.hover_modifiers[0] != 0
		{
			draw_sprite_ext(spr_ui_no_grid_opaque, 0, mouse_x+8+string_length(global.hover_item.name)*15, mouse_y, 0.5, 0.5, 0, c_white, 1)	
			draw_text_transformed(mouse_x+16+string_length(global.hover_item.name)*15, mouse_y+8, global.hover_modifiers[0], 1, 1, 0)
		}
		if global.hover_modifiers[38] != 0 
		{
			if array_length(global.hover_modifiers[38]) > 0
			{
				draw_sprite_ext(spr_ui_no_grid_opaque, 0, mouse_x+8+string_length(global.hover_item.name)*15, mouse_y, 1.1, 0.5, 0, c_white, 1)	
				var extracted = global.hover_modifiers[38]
				draw_text(mouse_x+16+string_length(global.hover_item.name)*15, mouse_y+8, extracted[array_length(extracted)-1].specs.bullet)
			}
		}
		
		global.hover_timer += 1
	} else
	{
		global.hover_item = noone
		for(var i = 0; i < array_length(global.hover_modifiers); i++)
		{
			global.hover_modifiers[i] = noone
		}
	}
	
}
/*if global.hover_obj != noone
{
	if global.hover_obj_timer < 1
	{
		draw_sprite_ext(spr_ui_no_grid_opaque, 0, mouse_x, mouse_y, string_length(global.hover_obj.name)/4.5, 0.5, 0, c_white, 1)	
		draw_text_transformed(mouse_x+8, mouse_y+8, global.hover_obj.name, 1, 1, 0)
		global.hover_obj_timer += 1
	}
}*/

if layer_get_visible("close_inspect_inworld_ui") == true
		{
			draw_sprite_ext(global.selected_surface.sprite, 1, _xx+544, _yy+256, 4, 4, 0, c_white, 1)
			draw_sprite_ext(global.selected_obj.spr, 0, _xx+600, _yy+320, 2, 2, 0, c_white, 1)
			//draw_sprite_ext(item.spr, 3, 544, 256, 3, 3, 0, c_white, 1)
		}

if debug_menu == true
{
	draw_sprite_ext(spr_ui_no_grid_opaque, 0, _xx+16, _yy+16, 15, 0.5, 0, c_white, 1)
	draw_text(_xx+20, _yy + 20, "BASIC DEBUG ('$enable.debug' to enter advanced debug)")
	draw_sprite_ext(spr_ui_no_grid_opaque, 0, _xx+16, _yy+48, 15, 0.5, 0, c_white, 1)
	draw_text(_xx+16, _yy + 52, string($" >>> {keyboard_string}"))
}
if global.belt	!= noone
	{
		for(var i = 0; i < global.belt.armor.capacity; i++)
		{
			if global.current_hotbar_item == i+1
			{
				draw_sprite(spr_ui_no_grid_blue_opaque, 0, _xx+416+64*i, _yy+672)
				if keyboard_check_pressed(ord("Q")) && keyboard_check_direct(vk_shift) && array_length(global.belt_arr) > i && global.belt_arr[i] != noone && global.left_hand_item == noone 
				{
					//global.selected_clothing.armor.capacity += global.lshoulder_arr[k].cont_size
							global.left_hand_item = global.belt_arr[i]
							left_modifiers = global.belt_mod_arr[i]
							global.left_hand_amount = 1
							hand_ammo[0] = global.belt_ammo[i]
							array_delete(global.belt_arr, array_get_index(global.belt_arr, global.belt_arr[i]), 1)
							array_delete(global.belt_ammo, array_get_index(global.belt_ammo, global.belt_ammo[i]), 1)
							array_delete(global.belt_mod_arr, array_get_index(global.belt_mod_arr, global.belt_mod_arr[i]), 1)
							//---------------------------------------------------------
							global.belt_capacity = 0
							for(var k = 0; k < array_length(global.belt_arr); k++)
							{	
								global.belt_capacity += 1
							}
				}
				else if keyboard_check_pressed(ord("E")) && keyboard_check_direct(vk_shift) && array_length(global.belt_arr) > i && global.belt_arr[i] != noone && global.right_hand_item == noone
				{
					//global.selected_clothing.armor.capacity += global.lshoulder_arr[k].cont_size
							global.right_hand_item = global.belt_arr[i]
							right_modifiers = global.belt_mod_arr[i]
							global.right_hand_amount = 1
							hand_ammo[1] = global.belt_ammo[i]
							array_delete(global.belt_arr, array_get_index(global.belt_arr, global.belt_arr[i]), 1)
							array_delete(global.belt_ammo, array_get_index(global.belt_ammo, global.belt_ammo[i]), 1)
							array_delete(global.belt_mod_arr, array_get_index(global.belt_mod_arr, global.belt_mod_arr[i]), 1)
							//---------------------------------------------------------
							global.belt_capacity = 0
							for(var k = 0; k < array_length(global.belt_arr); k++)
							{	
								global.belt_capacity += 1
							}
				}
				else if keyboard_check_pressed(ord("E")) && keyboard_check_direct(vk_control) && array_length(global.belt_arr) < current_belt_size && global.right_hand_item != noone && global.right_hand_item.specs.beltable == true
				{
					array_push(global.belt_arr, global.right_hand_item)
						array_push(global.belt_ammo, hand_ammo[1])
						array_push(global.belt_mod_arr, right_modifiers)
						global.right_hand_item = noone
						right_modifiers = array_create(obj_item_manager.modifier_amount, 0)
						hand_ammo[1] = 0
						//---------------------------------------------------------
						global.belt_capacity = 0
						for(var k = 0; k < array_length(global.belt_arr); k++)
						{	
							global.belt_capacity += 1
						}
				}
				else if keyboard_check_pressed(ord("Q")) && keyboard_check_direct(vk_control) && array_length(global.belt_arr) < current_belt_size && global.left_hand_item != noone && global.left_hand_item.specs.beltable == true
				{
					array_push(global.belt_arr, global.left_hand_item)
						array_push(global.belt_ammo, hand_ammo[0])
						array_push(global.belt_mod_arr, left_modifiers)
						global.left_hand_item = noone
						left_modifiers = array_create(obj_item_manager.modifier_amount, 0)
						hand_ammo[0] = 0
						//---------------------------------------------------------
						global.belt_capacity = 0
						for(var k = 0; k < array_length(global.belt_arr); k++)
						{	
							global.belt_capacity += 1
						}
				}
			} else
			{
				draw_sprite(spr_ui_no_grid_blue, 0, _xx+416+64*i, _yy+672)
			}
			draw_text(_xx+416+64*i+2, _yy+672, i+1)
		}
		for(var k = 0; k < array_length(global.belt_arr); k++)
		{
			//draw_sprite_ext(global.belt_arr[k].spr, 0, _xx+416+64*k, _yy+672, 1, 1, 0, c_white, 1)
			if global.belt_arr[k].specs.item_type == "Magazine"
			{
				draw_text_ext_transformed(_xx+420+64*k, _yy+690, string($"({global.belt_ammo[k]}) {global.belt_arr[k].name}"), 15, 75, 0.75, 0.75, 0)
			} else
			{
				draw_text_ext_transformed(_xx+420+64*k, _yy+702, global.belt_arr[k].name, 15, 75, 0.75, 0.75, 0)
			}
		}
	}

if global.belt != noone && ((global.left_hand_item != noone && global.left_hand_item.specs.beltable == false && keyboard_check_direct(vk_control) && keyboard_check_pressed(ord("Q"))) || (global.right_hand_item != noone && global.right_hand_item.specs.beltable == false && keyboard_check_direct(vk_control) && keyboard_check_pressed(ord("E"))))
{
	with(instance_create_depth(0, 0, -9, obj_temporary_notification))
	{
		notification = "This item is not belt-able"
	}
}

if mouse_x >= _xx + 32 && mouse_x <= _xx + 189 && mouse_y >= _yy + 606 && mouse_y <= _yy + 734 && global.left_hand_item != global.item_list.two_hand_item && global.left_hand_item != noone
{
	
	if global.left_hand_item.specs.item_type == "Trigger" || global.left_hand_item.specs.item_type == "Hammer" || global.left_hand_item.specs.item_type == "Barrel" || global.left_hand_item.specs.item_type == "Spring" || global.left_hand_item.specs.item_type == "Extractor" || global.left_hand_item.specs.item_type == "Bolt/Slide" || global.left_hand_item.specs.item_type == "Firing Pin" || global.left_hand_item.specs.item_type == "Scope" || global.left_hand_item.specs.item_type == "Sight" || global.left_hand_item.specs.item_type == "Underbarrel"
	{
		draw_sprite_ext(spr_ui_no_grid_opaque, 0, mouse_x, mouse_y, 4, -0.5, 0, c_white, 1.2)
		draw_text_transformed_color(mouse_x + 8, mouse_y - 30, string($"Overall Condition - {left_modifiers[9]}%"), 0.8, 0.8, 0, find_color(left_modifiers[9]), find_color(left_modifiers[9]), find_color(left_modifiers[9]),find_color(left_modifiers[9]), 1)
	}
	if left_modifiers[0] != 0 && left_modifiers[9] != 0
	{
		draw_sprite_ext(spr_ui_no_grid_opaque, 0, mouse_x, mouse_y, 4, -1, 0, c_white, 1.2)
		//draw_sprite_ext(spr_ui_no_grid_opaque, 0, mouse_x, mouse_y-124, 4, 2, 0, c_white, 1)
		
		draw_text_transformed(mouse_x + 8, mouse_y - 62, string($"Size - {left_modifiers[0]}"), 0.8, 0.8, 0)
		draw_text_transformed_color(mouse_x + 8, mouse_y - 30, string($"Overall Condition - {left_modifiers[9]}%"), 0.8, 0.8, 0, find_color(left_modifiers[9]), find_color(left_modifiers[9]), find_color(left_modifiers[9]),find_color(left_modifiers[9]), 1)
	}

	

	if global.left_hand_item.specs.item_type == "Firearm"
	{	
		draw_sprite_ext(spr_ui_no_grid_opaque, 0, mouse_x, mouse_y, 4, -3.4, 0, c_white, 1)
		draw_text_transformed_color(mouse_x + 8, mouse_y - 30, string($"Overall Condition - {left_modifiers[9]}%"), 0.8, 0.8, 0, find_color(left_modifiers[9]), find_color(left_modifiers[9]), find_color(left_modifiers[9]),find_color(left_modifiers[9]), 1)
		if left_modifiers[32] != 0
		{
		
			draw_text_transformed_color(mouse_x + 8, mouse_y - 208, string($"Suppressor: - {left_modifiers[32].specs.short_name} ({left_modifiers[33]}%)"), 0.8, 0.8, 0, find_color(left_modifiers[33]), find_color(left_modifiers[33]), find_color(left_modifiers[33]),find_color(left_modifiers[33]), 1)
		} 
		else
		{
			draw_text_transformed_color(mouse_x + 8, mouse_y - 208, string($"Suppressor: - NONE"), 0.8, 0.8, 0, c_white, c_white, c_white, c_white, 1)	
		}
		if left_modifiers[29] != 0
		{
		
			draw_text_transformed_color(mouse_x + 8, mouse_y - 192, string($"Underbarrel: - {left_modifiers[29].specs.short_name} [{bool_to_on_off(left_modifiers[34])}] ({left_modifiers[30]}%)"), 0.8, 0.8, 0, find_color(left_modifiers[30]), find_color(left_modifiers[30]), find_color(left_modifiers[30]),find_color(left_modifiers[30]), 1)
		} 
		else
		{
			draw_text_transformed_color(mouse_x + 8, mouse_y - 192, string($"Underbarrel: - NONE"), 0.8, 0.8, 0, c_white, c_white, c_white, c_white, 1)	
		}
		
		if left_modifiers[15] != 0
		{
		
			draw_text_transformed_color(mouse_x + 8, mouse_y - 176, string($"Optic: - {left_modifiers[15].name} ({left_modifiers[21]}%)"), 0.8, 0.8, 0, find_color(left_modifiers[21]), find_color(left_modifiers[21]), find_color(left_modifiers[21]),find_color(left_modifiers[21]), 1)
		} 
		else
		{
			draw_text_transformed_color(mouse_x + 8, mouse_y - 176, string($"Optic: - NONE"), 0.8, 0.8, 0, c_white, c_white, c_white, c_white, 1)	
		}
		if left_modifiers[14] != 0
		{
		
			draw_text_transformed_color(mouse_x + 8, mouse_y - 158, string($"Slide/Bolt - {left_modifiers[14].specs.short_name} ({left_modifiers[20]}%)"), 0.8, 0.8, 0, find_color(left_modifiers[20]), find_color(left_modifiers[20]), find_color(left_modifiers[20]),find_color(left_modifiers[20]), 1)
		} 
		else
		{
			if global.left_hand_item.weapon.parts.bolt_slide != noone
			{
				draw_text_transformed_color(mouse_x + 8, mouse_y - 158, string($"Slide/Bolt - EMPTY"), 0.8, 0.8, 0, c_red, c_red, c_red, c_red, 1)
			}
		}
		if left_modifiers[12] != 0
		{
		
			draw_text_transformed_color(mouse_x + 8, mouse_y - 142, string($"Firing Pin - {left_modifiers[12].specs.short_name} ({left_modifiers[18]}%)"), 0.8, 0.8, 0, find_color(left_modifiers[18]), find_color(left_modifiers[18]), find_color(left_modifiers[18]),find_color(left_modifiers[18]), 1)
		} 
		else
		{
			if global.left_hand_item.weapon.parts.firing_pin != noone
			{
				draw_text_transformed_color(mouse_x + 8, mouse_y - 142, string($"Firing Pin - EMPTY"), 0.8, 0.8, 0, c_red, c_red, c_red, c_red, 1)
			}
		}
		
		if left_modifiers[13] != 0
		{
		
			draw_text_transformed_color(mouse_x + 8, mouse_y - 126, string($"Extractor - {left_modifiers[13].specs.short_name} ({left_modifiers[19]}%)"), 0.8, 0.8, 0, find_color(left_modifiers[19]), find_color(left_modifiers[19]), find_color(left_modifiers[19]),find_color(left_modifiers[19]), 1)
		} 
		else
		{
			if global.left_hand_item.weapon.parts.extractor != noone
			{
				draw_text_transformed_color(mouse_x + 8, mouse_y - 126, string($"Extractor - EMPTY"), 0.8, 0.8, 0, c_red, c_red, c_red, c_red, 1)
			}
		}
		
		if left_modifiers[1] != 0
		{
		
			draw_text_transformed_color(mouse_x + 8, mouse_y - 110, string($"Trigger - {left_modifiers[1].specs.short_name} ({left_modifiers[5]}%)"), 0.8, 0.8, 0, find_color(left_modifiers[5]), find_color(left_modifiers[5]), find_color(left_modifiers[5]),find_color(left_modifiers[5]), 1)
		} 
		else
		{
			
				draw_text_transformed_color(mouse_x + 8, mouse_y - 110, string($"Trigger - EMPTY"), 0.8, 0.8, 0, c_red, c_red, c_red, c_red, 1)
			
		}
		
		if left_modifiers[2] != 0
		{
			draw_text_transformed_color(mouse_x + 8, mouse_y - 94, string($"Hammer - {left_modifiers[2].specs.short_name} ({left_modifiers[6]}%)"), 0.8, 0.8, 0, find_color(left_modifiers[6]), find_color(left_modifiers[6]), find_color(left_modifiers[6]),find_color(left_modifiers[6]), 1)
		}
		else
		{
			if global.left_hand_item.weapon.parts.hammer != noone
			{
				draw_text_transformed_color(mouse_x + 8, mouse_y - 94, string($"Hammer - EMPTY"), 0.8, 0.8, 0, c_red, c_red, c_red, c_red, 1)
			}
		}
		
		if left_modifiers[3] != 0
		{
			draw_text_transformed_color(mouse_x + 8, mouse_y - 78, string($"Barrel - {left_modifiers[3].specs.short_name} ({left_modifiers[7]}%)"), 0.8, 0.8, 0,  find_color(left_modifiers[7]), find_color(left_modifiers[7]), find_color(left_modifiers[7]),find_color(left_modifiers[7]), 1)
		}
		else
		{
			
				draw_text_transformed_color(mouse_x + 8, mouse_y - 78, string($"Barrel - EMPTY"), 0.8, 0.8, 0, c_red, c_red, c_red, c_red, 1)
			
		}
		
		if left_modifiers[4] != 0
		{
			draw_text_transformed_color(mouse_x + 8, mouse_y - 62, string($"Recoil Spring - {left_modifiers[4].specs.short_name} ({left_modifiers[8]}%)"), 0.8, 0.8, 0, find_color(left_modifiers[8]), find_color(left_modifiers[8]), find_color(left_modifiers[8]),find_color(left_modifiers[8]), 1)
		} 
		else
		{
			if global.left_hand_item.weapon.parts.recoil_spring != noone
			{
				draw_text_transformed_color(mouse_x + 8, mouse_y - 62, string($"Recoil Spring - EMPTY"), 0.8, 0.8, 0, c_red, c_red, c_red, c_red, 1)
			}
		}
		
		
	}
	

	
}
if mouse_x >= _xx + 224 && mouse_x <= _xx + 381 && mouse_y >= _yy + 606 && mouse_y <= _yy + 734 && global.right_hand_item != global.item_list.two_hand_item && global.right_hand_item != noone
{
	if global.right_hand_item.specs.item_type == "Trigger" || global.right_hand_item.specs.item_type == "Hammer" || global.right_hand_item.specs.item_type == "Barrel" || global.right_hand_item.specs.item_type == "Spring" || global.right_hand_item.specs.item_type == "Extractor" || global.right_hand_item.specs.item_type == "Bolt/Slide" || global.right_hand_item.specs.item_type == "Firing Pin"  || global.right_hand_item.specs.item_type == "Scope" || global.right_hand_item.specs.item_type == "Sight" || global.right_hand_item.specs.item_type == "Underbarrel"
	{
		draw_sprite_ext(spr_ui_no_grid_opaque, 0, mouse_x, mouse_y, 4, -0.5, 0, c_white, 1.2)
		draw_text_transformed_color(mouse_x + 8, mouse_y - 30, string($"Overall Condition - {right_modifiers[9]}%"), 0.8, 0.8, 0, find_color(right_modifiers[9]), find_color(right_modifiers[9]), find_color(right_modifiers[9]),find_color(right_modifiers[9]), 1)
	}
	if right_modifiers[0] != 0 && right_modifiers[9] != 0
	{
		draw_sprite_ext(spr_ui_no_grid_opaque, 0, mouse_x, mouse_y, 4, -1, 0, c_white, 1.2)
		//draw_sprite_ext(spr_ui_no_grid_opaque, 0, mouse_x, mouse_y-124, 4, 2, 0, c_white, 1)
		
		draw_text_transformed(mouse_x + 8, mouse_y - 62, string($"Size - {right_modifiers[0]}"), 0.8, 0.8, 0)
		draw_text_transformed_color(mouse_x + 8, mouse_y - 30, string($"Overall Condition - {right_modifiers[9]}%"), 0.8, 0.8, 0, find_color(right_modifiers[9]), find_color(right_modifiers[9]), find_color(right_modifiers[9]),find_color(right_modifiers[9]), 1)
	}

	if global.right_hand_item.specs.item_type == "Firearm"
	{	
		draw_sprite_ext(spr_ui_no_grid_opaque, 0, mouse_x, mouse_y, 4, -3.4, 0, c_white, 1)
		draw_text_transformed_color(mouse_x + 8, mouse_y - 30, string($"Overall Condition - {right_modifiers[9]}%"), 0.8, 0.8, 0, find_color(right_modifiers[9]), find_color(right_modifiers[9]), find_color(right_modifiers[9]),find_color(right_modifiers[9]), 1)
		
		
		if right_modifiers[32] != 0
		{
		
			draw_text_transformed_color(mouse_x + 8, mouse_y - 208, string($"Suppressor: - {right_modifiers[32].specs.short_name} ({right_modifiers[33]}%)"), 0.8, 0.8, 0, find_color(right_modifiers[33]), find_color(right_modifiers[33]), find_color(right_modifiers[33]),find_color(right_modifiers[33]), 1)
		} 
		else
		{
			draw_text_transformed_color(mouse_x + 8, mouse_y - 208, string($"Suppressor: - NONE"), 0.8, 0.8, 0, c_white, c_white, c_white, c_white, 1)	
		}
		if right_modifiers[29] != 0
		{
		
			draw_text_transformed_color(mouse_x + 8, mouse_y - 192, string($"Underbarrel: - {right_modifiers[29].specs.short_name} [{bool_to_on_off(right_modifiers[34])}] ({right_modifiers[30]}%)"), 0.8, 0.8, 0, find_color(right_modifiers[30]), find_color(right_modifiers[30]), find_color(right_modifiers[30]),find_color(right_modifiers[30]), 1)
		} 
		else
		{
			draw_text_transformed_color(mouse_x + 8, mouse_y - 192, string($"Undbarrel: - NONE"), 0.8, 0.8, 0, c_white, c_white, c_white, c_white, 1)	
		}
		if right_modifiers[15] != 0
		{
		
			draw_text_transformed_color(mouse_x + 8, mouse_y - 176, string($"Optic: - {right_modifiers[15].name} ({right_modifiers[21]}%)"), 0.8, 0.8, 0, find_color(right_modifiers[21]), find_color(right_modifiers[21]), find_color(right_modifiers[21]),find_color(right_modifiers[21]), 1)
		} 
		else
		{
			draw_text_transformed_color(mouse_x + 8, mouse_y - 176, string($"Optic: - NONE"), 0.8, 0.8, 0, c_white, c_white, c_white, c_white, 1)	
		}
		if right_modifiers[14] != 0
		{
		
			draw_text_transformed_color(mouse_x + 8, mouse_y - 158, string($"Slide/Bolt - {right_modifiers[14].specs.short_name} ({right_modifiers[20]}%)"), 0.8, 0.8, 0, find_color(right_modifiers[20]), find_color(right_modifiers[20]), find_color(right_modifiers[20]),find_color(right_modifiers[20]), 1)
		} 
		else
		{
			if global.right_hand_item.weapon.parts.bolt_slide != noone
			{
				draw_text_transformed_color(mouse_x + 8, mouse_y - 158, string($"Slide/Bolt - EMPTY"), 0.8, 0.8, 0, c_red, c_red, c_red, c_red, 1)
			}
		}
		if right_modifiers[12] != 0
		{
		
			draw_text_transformed_color(mouse_x + 8, mouse_y - 142, string($"Firing Pin - {right_modifiers[12].specs.short_name} ({right_modifiers[18]}%)"), 0.8, 0.8, 0, find_color(right_modifiers[18]), find_color(right_modifiers[18]), find_color(right_modifiers[18]),find_color(right_modifiers[18]), 1)
		} 
		else
		{
			if global.right_hand_item.weapon.parts.firing_pin != noone
			{
				draw_text_transformed_color(mouse_x + 8, mouse_y - 142, string($"Firing Pin - EMPTY"), 0.8, 0.8, 0, c_red, c_red, c_red, c_red, 1)
			}
		}
		
		if right_modifiers[13] != 0
		{
		
			draw_text_transformed_color(mouse_x + 8, mouse_y - 126, string($"Extractor - {right_modifiers[13].specs.short_name} ({right_modifiers[19]}%)"), 0.8, 0.8, 0, find_color(right_modifiers[19]), find_color(right_modifiers[19]), find_color(right_modifiers[19]),find_color(right_modifiers[19]), 1)
		} 
		else
		{
			if global.right_hand_item.weapon.parts.extractor != noone
			{
				draw_text_transformed_color(mouse_x + 8, mouse_y - 126, string($"Extractor - EMPTY"), 0.8, 0.8, 0, c_red, c_red, c_red, c_red, 1)
			}
		}
		
		if right_modifiers[1] != 0
		{
		
			draw_text_transformed_color(mouse_x + 8, mouse_y - 110, string($"Trigger - {right_modifiers[1].specs.short_name} ({right_modifiers[5]}%)"), 0.8, 0.8, 0, find_color(right_modifiers[5]), find_color(right_modifiers[5]), find_color(right_modifiers[5]),find_color(right_modifiers[5]), 1)
		} 
		else
		{
			
				draw_text_transformed_color(mouse_x + 8, mouse_y - 110, string($"Trigger - EMPTY"), 0.8, 0.8, 0, c_red, c_red, c_red, c_red, 1)
			
		}
		
		if right_modifiers[2] != 0
		{
			draw_text_transformed_color(mouse_x + 8, mouse_y - 94, string($"Hammer - {right_modifiers[2].specs.short_name} ({right_modifiers[6]}%)"), 0.8, 0.8, 0, find_color(right_modifiers[6]), find_color(right_modifiers[6]), find_color(right_modifiers[6]),find_color(right_modifiers[6]), 1)
		}
		else
		{
			if global.right_hand_item.weapon.parts.hammer != noone
			{
				draw_text_transformed_color(mouse_x + 8, mouse_y - 94, string($"Hammer - EMPTY"), 0.8, 0.8, 0, c_red, c_red, c_red, c_red, 1)
			}
		}
		
		if right_modifiers[3] != 0
		{
			draw_text_transformed_color(mouse_x + 8, mouse_y - 78, string($"Barrel - {right_modifiers[3].specs.short_name} ({right_modifiers[7]}%)"), 0.8, 0.8, 0,  find_color(right_modifiers[7]), find_color(right_modifiers[7]), find_color(right_modifiers[7]),find_color(right_modifiers[7]), 1)
		}
		else
		{
			
				draw_text_transformed_color(mouse_x + 8, mouse_y - 78, string($"Barrel - EMPTY"), 0.8, 0.8, 0, c_red, c_red, c_red, c_red, 1)
			
		}
		
		if right_modifiers[4] != 0
		{
			draw_text_transformed_color(mouse_x + 8, mouse_y - 62, string($"Recoil Spring - {right_modifiers[4].specs.short_name} ({right_modifiers[8]}%)"), 0.8, 0.8, 0, find_color(right_modifiers[8]), find_color(right_modifiers[8]), find_color(right_modifiers[8]),find_color(right_modifiers[8]), 1)
		} 
		else
		{
			if global.right_hand_item.weapon.parts.recoil_spring != noone
			{
				draw_text_transformed_color(mouse_x + 8, mouse_y - 62, string($"Recoil Spring - EMPTY"), 0.8, 0.8, 0, c_red, c_red, c_red, c_red, 1)
			}
		}
		
		
	}
	
	
	
}
