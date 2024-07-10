function draw_modifiers(_mod_arr, _item)
{
	show_debug_message(_mod_arr)
	var extracted_arr = _mod_arr
	show_debug_message(extracted_arr[0])
	if extracted_arr[0] != 0
	{
		draw_text(_xx+36, _yy+166, "Clothing Size")
		draw_text(_xx+230, _yy+166, extracted_arr[0])
		
	}
	
	if _item.specs.item_type == "Firearm"
	{
		if extracted_arr[1] != 0
		{
			draw_text(_xx+36, _yy+166, "Trigger Assembly")
			draw_text_color(_xx+230, _yy+166, string($"{extracted_arr[1].specs.short_name} ({extracted_arr[5]}%)"), find_color(extracted_arr[5]), find_color(extracted_arr[5]), find_color(extracted_arr[5]),find_color(extracted_arr[5]), 1)
		} else
		{
			draw_text(_xx+36, _yy+166, "Trigger Assembly")
			draw_text_color(_xx+230, _yy+166, string($"EMPTY"), c_red, c_red, c_red, c_red, 1)
		}
		
		
		if extracted_arr[2] != 0
		{
			draw_text(_xx+36, _yy+198, "Hammer")
			draw_text_color(_xx+230, _yy+198, string($"{extracted_arr[2].specs.short_name} ({extracted_arr[6]}%)"), find_color(extracted_arr[6]), find_color(extracted_arr[6]), find_color(extracted_arr[6]),find_color(extracted_arr[6]), 1)
		}else
		{
			if _item.weapon.parts.hammer != noone
			{
				draw_text(_xx+36, _yy+198, "Hammer")
				draw_text_color(_xx+230, _yy+198, string($"EMPTY"), c_red, c_red, c_red, c_red, 1)
			}
		}
		
		if extracted_arr[3] != 0
		{
			draw_text(_xx+36, _yy+230, "Barrel")
			draw_text_color(_xx+230, _yy+230, string($"{extracted_arr[3].specs.short_name} ({extracted_arr[7]}%)"), find_color(extracted_arr[7]), find_color(extracted_arr[7]), find_color(extracted_arr[7]),find_color(extracted_arr[7]), 1)
		}else
		{
			draw_text(_xx+36, _yy+230, "Barrel")
			draw_text_color(_xx+230, _yy+230, string($"EMPTY"), c_red, c_red, c_red, c_red, 1)
		}
		
		if extracted_arr[4] != 0
		{
			draw_text(_xx+36, _yy+262, "Recoil Spring")
			draw_text_color(_xx+230, _yy+262, string($"{extracted_arr[4].specs.short_name} ({extracted_arr[8]}%)"), find_color(extracted_arr[8]), find_color(extracted_arr[8]), find_color(extracted_arr[8]),find_color(extracted_arr[8]), 1)
		} else
		{
			if _item.weapon.parts.recoil_spring != noone
			{
				draw_text(_xx+36, _yy+262, "Recoil Spring")
				draw_text_color(_xx+230, _yy+262, string($"EMPTY"), c_red, c_red, c_red, c_red, 1)
			}
		}
		
		if extracted_arr[12] != 0
		{
			draw_text(_xx+36, _yy+294, "Firing Pin")
			draw_text_color(_xx+230, _yy+294, string($"{extracted_arr[12].specs.short_name} ({extracted_arr[18]}%)"), find_color(extracted_arr[18]), find_color(extracted_arr[18]), find_color(extracted_arr[18]),find_color(extracted_arr[18]), 1)
		} else
		{
			if _item.weapon.parts.firing_pin != noone
			{
				draw_text(_xx+36, _yy+294, "Firing Pin")
				draw_text_color(_xx+230, _yy+294, string($"EMPTY"), c_red, c_red, c_red, c_red, 1)
			}
		}
		
		if extracted_arr[13] != 0
		{
			draw_text(_xx+36, _yy+326, "Extractor")
			draw_text_color(_xx+230, _yy+326, string($"{extracted_arr[13].specs.short_name} ({extracted_arr[19]}%)"), find_color(extracted_arr[19]), find_color(extracted_arr[19]), find_color(extracted_arr[19]),find_color(extracted_arr[19]), 1)
		} else
		{
			if _item.weapon.parts.extractor != noone
			{
				draw_text(_xx+36, _yy+326, "Extractor")
				draw_text_color(_xx+230, _yy+326, string($"EMPTY"), c_red, c_red, c_red, c_red, 1)
			}
		}
		
		if extracted_arr[14] != 0
		{
			draw_text(_xx+36, _yy+358, "Bolt/Slide")
			draw_text_color(_xx+230, _yy+358, string($"{extracted_arr[14].specs.short_name} ({extracted_arr[20]}%)"), find_color(extracted_arr[20]), find_color(extracted_arr[20]), find_color(extracted_arr[20]),find_color(extracted_arr[20]), 1)
		} else
		{
			if _item.weapon.parts.bolt_slide != noone
			{
				draw_text(_xx+36, _yy+358, "Bolt/Slide")
				draw_text_color(_xx+230, _yy+358, string($"EMPTY"), c_red, c_red, c_red, c_red, 1)
			}
		}
	}		
	
		if extracted_arr[9] != 0
		{
			draw_text(_xx+36, _yy+133, "Overall Condition")
			draw_text_color(_xx+230, _yy+133, string($"{extracted_arr[9]}%"), find_color(extracted_arr[9]), find_color(extracted_arr[9]), find_color(extracted_arr[9]),find_color(extracted_arr[9]), 1)
		}	
	
	if obj_item_manager.nutrition_page == 0
	{
		draw_sprite_ext(_item.spr, 0, _xx+909, _yy+112+_item.rotation*4.2, _item.hold_size*3, _item.hold_size*3, _item.rotation, c_white, 1)
	} else
	{
		
		draw_text_ext_transformed(_xx+909, _yy+112, _item.description, 20, 350, 1, 1, 0)
	}

}

_xx = camera_get_view_x(view_camera[0])
_yy = camera_get_view_y(view_camera[0])
if obj_item_manager.stats_open == true && obj_item_manager.close_inspect == false
{
	if global.selected_item != noone
		{
			
			
			draw_sprite_ext(spr_ui_no_grid_opaque_noline, 0, x-416+32, y-32+128-32, 5.5, 6.5, 0, c_white, 1)
			//draw_sprite_ext(global.selected_item.spr, 2, x-416+33, y-33+128, 2.2*global.selected_item.hold_size, 2.2*global.selected_item.hold_size, 0, c_white, 1)
			for(var i = 0; i < 12; i++)
			{
				
				draw_sprite_ext(spr_ui_no_grid, 0, _xx+32, _yy+128+32*i, 2.5, 0.5, 0, c_white, 1)
				draw_sprite_ext(spr_ui_no_grid, 0, _xx+224, _yy+128+32*i, 2.5, 0.5, 0, c_white, 1)
			}
			
		} 
	if global.selected_clothing != noone
		{
			
			draw_sprite_ext(spr_ui_no_grid, 0, x, y, 6.5, 0.5, 0, c_white, 1)
			draw_text(x+4, y+4, global.selected_clothing.name)
			
			draw_text(x+385-string_length(global.selected_clothing.armor.capacity)*10, y+4, string($"({global.selected_clothing.armor.capacity})"))
			
			if global.selected_clothing.armor.location == "Belt"
			{
				for(var k = 0; k < array_length(global.belt_arr); k++)
				{
					draw_text(x+4, y+4+33*k+33, global.belt_arr[k].name)
					
					
					
					
					if mouse_x >= x && mouse_x <= x+416 && mouse_y >= y+33*k+33 && mouse_y <= y+33*k+64
					{
						draw_rectangle(x, y+33*k+33, x+416, y+33*k+64, true)
						global.selected_item = global.belt_arr[k]
						show_debug_message(global.selected_item)
						draw_modifiers(global.belt_mod_arr[k], global.belt_arr[k])
						
						
						if mouse_check_button_pressed(mb_left)
						{
							//global.selected_clothing.armor.capacity += global.lshoulder_arr[k].cont_size
							global.mouse_item = global.belt_arr[k]
							obj_item_manager.mouse_modifiers = global.belt_mod_arr[k]
							global.mouse_ammo = global.belt_ammo[k]
							array_delete(global.belt_arr, array_get_index(global.belt_arr, global.belt_arr[k]), 1)
							array_delete(global.belt_ammo, array_get_index(global.belt_ammo, global.belt_ammo[k]), 1)
							array_delete(global.belt_mod_arr, array_get_index(global.belt_mod_arr, global.belt_mod_arr[k]), 1)
							global.selected_clothing = noone
							global.selected_item = noone
							mouse_clear(mb_left)
							//---------------------------------------------------------
						global.belt_capacity = 0
						for(var k = 0; k < array_length(global.belt_arr); k++)
						{	
							global.belt_capacity += 1
						}
						}
					} 
				}
			}
			else if global.selected_clothing.armor.location == "Shoulder"
			{
				for(var k = 0; k < array_length(global.lshoulder_arr); k++)
				{
					draw_text(x+4, y+4+33*k+33, global.lshoulder_arr[k].name)
					
					
					if mouse_x >= x && mouse_x <= x+416 && mouse_y >= y+33*k+33 && mouse_y <= y+33*k+64
					{
						draw_modifiers(global.shoulder_mod_arr[k], global.lshoulder_arr[k])
						draw_rectangle(x, y+33*k+33, x+416, y+33*k+64, true)
						global.selected_item = global.lshoulder_arr[k]
						show_debug_message(global.selected_item)
						if mouse_check_button_pressed(mb_left)
						{
							//global.selected_clothing.armor.capacity += global.lshoulder_arr[k].cont_size
							global.mouse_item = global.lshoulder_arr[k]
							obj_item_manager.mouse_modifiers = global.shoulder_mod_arr[k]
							global.mouse_ammo = global.lshoulder_ammo[k]
							array_delete(global.lshoulder_arr, array_get_index(global.lshoulder_arr, global.lshoulder_arr[k]), 1)
							array_delete(global.lshoulder_ammo, array_get_index(global.lshoulder_ammo, global.lshoulder_ammo[k]), 1)
							array_delete(global.shoulder_mod_arr, array_get_index(global.shoulder_mod_arr, global.shoulder_mod_arr[k]), 1)
							global.selected_clothing = noone
							global.selected_item = noone
							mouse_clear(mb_left)
							//---------------------------------------------------------
						global.lshoulder_capacity = 0
						for(var k = 0; k < array_length(global.lshoulder_arr); k++)
						{	
							global.lshoulder_capacity += global.lshoulder_arr[k].cont_size
						}
						}
					} 
				}
			}
			else if global.selected_clothing.armor.location == "Backpack"
			{
				var num = 0
				for(var k = 0; k < array_length(global.backpack_arr); k++)
				{
				
					
					if (global.backpack_arr[k].specs.stack_max > 1 && number_in_array_before(global.backpack_arr, global.backpack_arr[k], k) == 0) || (global.backpack_arr[k].specs.stack_max == 1)
					{
						draw_text(x+4, y+4+33*k+33, global.backpack_arr[k].name)
						if global.backpack_arr[k].specs.stack_max > 1
						{
							draw_text(x+354, y+4+33*k+33-33*num, number_of_in_array(global.backpack_arr, global.backpack_arr[k]))
						}
					
					
					
						if mouse_x >= x && mouse_x <= x+416 && mouse_y >= y+33*k+33-33*num && mouse_y <= y+33*k+64-33*num
						{
							draw_rectangle(x, y+33*k+33-33*num, x+416, y+33*k+64, true)
							global.selected_item = global.backpack_arr[k]
						 
							draw_modifiers(global.backpack_mod_arr[k], global.backpack_arr[k])
						 
						 
							//show_debug_message(global.selected_item)
							if mouse_check_button_pressed(mb_left)
							{
								//global.selected_clothing.armor.capacity += global.backpack_arr[k].cont_size
								global.mouse_item = global.backpack_arr[k]
								obj_item_manager.mouse_modifiers = global.backpack_mod_arr[k]
								global.mouse_ammo = global.backpack_ammo[k]
								array_delete(global.backpack_arr, array_get_index(global.backpack_arr, global.backpack_arr[k]), 1)
								array_delete(global.backpack_ammo, array_get_index(global.backpack_ammo, global.backpack_ammo[k]), 1)
								array_delete(global.backpack_mod_arr, array_get_index(global.backpack_mod_arr, global.backpack_mod_arr[k]), 1)
								global.selected_clothing = noone
								global.selected_item = noone
								mouse_clear(mb_left)
								//---------------------------------------------------------
							global.backpack_capacity = 0
							for(var k = 0; k < array_length(global.backpack_arr); k++)
							{	
								global.backpack_capacity += global.backpack_arr[k].cont_size
							}
							}
						} 
					}
					
				}
				
			}
			else if global.selected_clothing.armor.location == "Vest"
			{
				for(var k = 0; k < array_length(global.vest_arr); k++)
				{
					draw_text(x+4, y+4+33*k+33, global.vest_arr[k].name)
					
					if mouse_x >= x && mouse_x <= x+416 && mouse_y >= y+33*k+33 && mouse_y <= y+33*k+64
					{
						draw_rectangle(x, y+33*k+33, x+416, y+33*k+64, true)
						global.selected_item = global.vest_arr[k]
						draw_modifiers(global.vest_mod_arr[k], global.vest_arr[k])
						
						show_debug_message(global.selected_item)
						if mouse_check_button_pressed(mb_left)
						{
							//global.selected_clothing.armor.capacity += global.vest_arr[k].cont_size
							global.mouse_item = global.vest_arr[k]
							global.mouse_ammo = global.vest_ammo[k]
							obj_item_manager.mouse_modifiers = global.vest_mod_arr[k]
							array_delete(global.vest_arr, array_get_index(global.vest_arr, global.vest_arr[k]), 1)
							array_delete(global.vest_ammo, array_get_index(global.vest_ammo, global.vest_ammo[k]), 1)
							array_delete(global.vest_mod_arr, array_get_index(global.vest_mod_arr, global.vest_mod_arr[k]), 1)
							global.selected_clothing = noone
							global.selected_item = noone
							mouse_clear(mb_left)
							//---------------------------------------------------------
						global.vest_capacity = 0
						for(var k = 0; k < array_length(global.vest_arr); k++)
						{	
							global.vest_capacity += global.vest_arr[k].cont_size
						}
						}
					} 
				}
			}
			else if global.selected_clothing.armor.location == "Right Foot"
			{
				for(var k = 0; k < array_length(global.right_foot_arr); k++)
				{
					draw_text(x+4, y+4+33*k+33, global.right_foot_arr[k].name)
					
					if mouse_x >= x && mouse_x <= x+416 && mouse_y >= y+33*k+33 && mouse_y <= y+33*k+64
					{
						draw_rectangle(x, y+33*k+33, x+416, y+33*k+64, true)
						global.selected_item = global.right_foot_arr[k]
						draw_modifiers(global.right_foot_mod_arr[k], global.right_foot_arr[k])
						
						show_debug_message(global.selected_item)
						if mouse_check_button_pressed(mb_left)
						{
							//global.selected_clothing.armor.capacity += global.right_foot_arr[k].cont_size
							global.mouse_item = global.right_foot_arr[k]
							global.mouse_ammo = global.right_foot_ammo[k]
							obj_item_manager.mouse_modifiers = global.right_foot_mod_arr[k]
							array_delete(global.right_foot_arr, array_get_index(global.right_foot_arr, global.right_foot_arr[k]), 1)
							array_delete(global.right_foot_ammo, array_get_index(global.right_foot_ammo, global.right_foot_ammo[k]), 1)
							array_delete(global.right_foot_mod_arr, array_get_index(global.right_foot_mod_arr, global.right_foot_mod_arr[k]), 1)
							global.selected_clothing = noone
							global.selected_item = noone
							mouse_clear(mb_left)
							//---------------------------------------------------------
						global.right_foot_capacity = 0
						for(var k = 0; k < array_length(global.right_foot_arr); k++)
						{	
							global.right_foot_capacity += global.right_foot_arr[k].cont_size
						}
						}
					} 
				}
			}
			else if global.selected_clothing.armor.location == "Left Foot"
			{
				for(var k = 0; k < array_length(global.left_foot_arr); k++)
				{
					draw_text(x+4, y+4+33*k+33, global.left_foot_arr[k].name)
					
					if mouse_x >= x && mouse_x <= x+416 && mouse_y >= y+33*k+33 && mouse_y <= y+33*k+64
					{
						draw_rectangle(x, y+33*k+33, x+416, y+33*k+64, true)
						global.selected_item = global.left_foot_arr[k]
						draw_modifiers(global.left_foot_mod_arr[k], global.left_foot_arr[k])
						 
						show_debug_message(global.selected_item)
						if mouse_check_button_pressed(mb_left)
						{
							//global.selected_clothing.armor.capacity += global.left_foot_arr[k].cont_size
							global.mouse_item = global.left_foot_arr[k]
							global.mouse_ammo = global.left_foot_ammo[k]
							obj_item_manager.mouse_modifiers = global.left_foot_mod_arr[k]
							array_delete(global.left_foot_arr, array_get_index(global.left_foot_arr, global.left_foot_arr[k]), 1)
							array_delete(global.left_foot_ammo, array_get_index(global.left_foot_ammo, global.left_foot_ammo[k]), 1)
							array_delete(global.left_foot_mod_arr, array_get_index(global.left_foot_mod_arr, global.left_foot_mod_arr[k]), 1)
							global.selected_clothing = noone
							global.selected_item = noone
							mouse_clear(mb_left)
							//---------------------------------------------------------
						global.left_foot_capacity = 0
						for(var k = 0; k < array_length(global.left_foot_arr); k++)
						{	
							global.left_foot_capacity += global.left_foot_arr[k].cont_size
						}
						}
					} 
				}
			}
			else if global.selected_clothing.armor.location == "Head"
			{
				for(var k = 0; k < array_length(global.top_head_arr); k++)
				{
					draw_text(x+4, y+4+33*k+33, global.top_head_arr[k].name)
					
					if mouse_x >= x && mouse_x <= x+416 && mouse_y >= y+33*k+33 && mouse_y <= y+33*k+64
					{
						draw_rectangle(x, y+33*k+33, x+416, y+33*k+64, true)
						global.selected_item = global.top_head_arr[k]
						draw_modifiers(global.head_mod_arr[k], global.top_head_arr[k])
						
						show_debug_message(global.selected_item)
						if mouse_check_button_pressed(mb_left)
						{
							//global.selected_clothing.armor.capacity += global.top_head_arr[k].cont_size
							global.mouse_item = global.top_head_arr[k]
							global.mouse_ammo = global.top_head_ammo[k]
							obj_item_manager.mouse_modifiers = global.head_mod_arr[k]
							array_delete(global.top_head_arr, array_get_index(global.top_head_arr, global.top_head_arr[k]), 1)
							array_delete(global.top_head_ammo, array_get_index(global.top_head_ammo, global.top_head_ammo[k]), 1)
							array_delete(global.head_mod_arr, array_get_index(global.head_mod_arr, global.head_mod_arr[k]), 1)
							global.selected_clothing = noone
							global.selected_item = noone
							mouse_clear(mb_left)
							//---------------------------------------------------------
						global.head_capacity = 0
						for(var k = 0; k < array_length(global.top_head_arr); k++)
						{	
							global.head_capacity += global.top_head_arr[k].cont_size
						}
						}
					} 
				}
			}
			else if global.selected_clothing.armor.location == "Torso"
			{
				for(var k = 0; k < array_length(global.torso_arr); k++)
				{
					draw_text(x+4, y+4+33*k+33, global.torso_arr[k].name)
					
					if mouse_x >= x && mouse_x <= x+416 && mouse_y >= y+33*k+33 && mouse_y <= y+33*k+64
					{
						draw_rectangle(x, y+33*k+33, x+416, y+33*k+64, true)
						global.selected_item = global.torso_arr[k]
						draw_modifiers(global.torso_mod_arr[k], global.torso_arr[k])
						
						show_debug_message(global.selected_item)
						if mouse_check_button_pressed(mb_left)
						{
							//global.selected_clothing.armor.capacity += global.torso_arr[k].cont_size
							global.mouse_item = global.torso_arr[k]
							global.mouse_ammo = global.torso_ammo[k]
							obj_item_manager.mouse_modifiers = global.torso_mod_arr[k]
							array_delete(global.torso_arr, array_get_index(global.torso_arr, global.torso_arr[k]), 1)
							array_delete(global.torso_ammo, array_get_index(global.torso_ammo, global.torso_ammo[k]), 1)
							array_delete(global.torso_mod_arr, array_get_index(global.torso_mod_arr, global.torso_mod_arr[k]), 1)
							global.selected_clothing = noone
							global.selected_item = noone
							mouse_clear(mb_left)
							//---------------------------------------------------------
							global.torso_capacity = 0
						for(var k = 0; k < array_length(global.torso_arr); k++)
						{	
							show_debug_message("test")
							global.torso_capacity += global.torso_arr[k].cont_size
						}
						}
					} 
				}
			}
			else if global.selected_clothing.armor.location == "Legs"
			{
				for(var k = 0; k < array_length(global.left_leg_arr); k++)
				{
					draw_text(x+4, y+4+33*k+33, global.left_leg_arr[k].name)
					
					if mouse_x >= x && mouse_x <= x+416 && mouse_y >= y+33*k+33 && mouse_y <= y+33*k+64
					{
						draw_rectangle(x, y+33*k+33, x+416, y+33*k+64, true)
						global.selected_item = global.left_leg_arr[k]
						draw_modifiers(global.leg_mod_arr[k], global.left_leg_arr[k])
						
						show_debug_message(global.selected_item)
						if mouse_check_button_pressed(mb_left)
						{
							//global.selected_clothing.armor.capacity += global.left_leg_arr[k].cont_size
							global.mouse_item = global.left_leg_arr[k]
							global.mouse_ammo = global.left_leg_ammo[k]
							obj_item_manager.mouse_modifiers = global.leg_mod_arr[k]
							array_delete(global.left_leg_arr, array_get_index(global.left_leg_arr, global.left_leg_arr[k]), 1)
							array_delete(global.left_leg_ammo, array_get_index(global.left_leg_ammo, global.left_leg_ammo[k]), 1)
							array_delete(global.leg_mod_arr, array_get_index(global.leg_mod_arr, global.leg_mod_arr[k]), 1)
							global.selected_clothing = noone
							mouse_clear(mb_left)
							global.selected_item = noone
							//---------------------------------------------------------
						global.leg_capacity = 0
						for(var k = 0; k < array_length(global.left_leg_arr); k++)
						{	
							global.leg_capacity += global.left_leg_arr[k].cont_size
						}
						}
					}
				}
			}
			/*else if global.selected_clothing.armor.location == "Left Leg"
			{
				for(var k = 0; k < array_length(global.left_leg_arr); k++)
				{
					draw_text(x+4, y+4+33*k+33, global.left_leg_arr[k].name)
					
					if mouse_x >= x && mouse_x <= x+416 && mouse_y >= y+33*k+33 && mouse_y <= y+33*k+64
					{
						draw_rectangle(x, y+33*k+33, x+416, y+33*k+64, true)
						global.selected_item = global.left_leg_arr[k]
						show_debug_message(global.selected_item)
						if mouse_check_button_pressed(mb_left)
						{
							//global.selected_clothing.armor.capacity += global.left_leg_arr[k].cont_size
							global.mouse_item = global.left_leg_arr[k]
							array_delete(global.left_leg_arr, array_get_index(global.left_leg_arr, global.left_leg_arr[k]), 1)
							array_delete(global.left_leg_ammo, array_get_index(global.left_leg_ammo, global.left_leg_ammo[k]), 1)
							global.selected_clothing = noone
							mouse_clear(mb_left)
							global.selected_item = noone
						}
					} 
				}
			}
			else if global.selected_clothing.armor.location == "Right Leg"
			{
				for(var k = 0; k < array_length(global.right_leg_arr); k++)
				{
					draw_text(x+4, y+4+33*k+33, global.right_leg_arr[k].name)
					
					if mouse_x >= x && mouse_x <= x+416 && mouse_y >= y+33*k+33 && mouse_y <= y+33*k+64
					{
						
						draw_rectangle(x, y+33*k+33, x+416, y+33*k+64, true)
						global.selected_item = global.right_leg_arr[k]
						show_debug_message(global.selected_item)
						if mouse_check_button_pressed(mb_left)
						{
							//global.selected_clothing.armor.capacity += global.right_leg_arr[k].cont_size
							global.mouse_item = global.right_leg_arr[k]
							array_delete(global.right_leg_arr, array_get_index(global.right_leg_arr, global.right_leg_arr[k]), 1)
							array_delete(global.right_leg_ammo, array_get_index(global.right_leg_ammo, global.right_leg_ammo[k]), 1)
							global.selected_clothing = noone
							mouse_clear(mb_left)
							global.selected_item = noone
						}
					} 
				}
			}
			*/
			else if global.selected_clothing.armor.location == "Right Wrist"
			{
				for(var k = 0; k < array_length(global.right_wrist_arr); k++)
				{
					draw_text(x+4, y+4+33*k+33, global.right_wrist_arr[k].name)
					
					if mouse_x >= x && mouse_x <= x+416 && mouse_y >= y+33*k+33 && mouse_y <= y+33*k+64
					{
						draw_rectangle(x, y+33*k+33, x+416, y+33*k+64, true)
						global.selected_item = global.right_wrist_arr[k]
						draw_modifiers(global.right_wrist_mod_arr[k], global.right_wrist_arr[k])
						
						show_debug_message(global.selected_item)
						if mouse_check_button_pressed(mb_left)
						{
							//global.selected_clothing.armor.capacity += global.right_wrist_arr[k].cont_size
							global.mouse_item = global.right_wrist_arr[k]
							global.mouse_ammo = global.right_wrist_ammo[k]
							obj_item_manager.mouse_modifiers = global.right_wrist_mod_arr[k]
							array_delete(global.right_wrist_arr, array_get_index(global.right_wrist_arr, global.right_wrist_arr[k]), 1)
							array_delete(global.right_wrist_ammo, array_get_index(global.right_wrist_ammo, global.right_wrist_ammo[k]), 1)
							array_delete(global.right_wrist_mod_arr, array_get_index(global.right_wrist_mod_arr, global.right_wrist_mod_arr[k]), 1)
							global.selected_clothing = noone
							mouse_clear(mb_left)
							global.selected_item = noone
							//---------------------------------------------------------
						global.right_wrist_capacity = 0
						for(var k = 0; k < array_length(global.right_wrist_arr); k++)
						{	
							global.right_wrist_capacity += global.right_wrist_arr[k].cont_size
						}
						}
					} 
				}
			}
			else if global.selected_clothing.armor.location == "Left Wrist"
			{
				for(var k = 0; k < array_length(global.left_wrist_arr); k++)
				{
					draw_text(x+4, y+4+33*k+33, global.left_wrist_arr[k].name)
					
					if mouse_x >= x && mouse_x <= x+416 && mouse_y >= y+33*k+33 && mouse_y <= y+33*k+64
					{
						draw_rectangle(x, y+33*k+33, x+416, y+33*k+64, true)
						global.selected_item = global.left_wrist_arr[k]
						draw_modifiers(global.left_wrist_mod_arr[k], global.left_wrist_arr[k])
						
						show_debug_message(global.selected_item)
						if mouse_check_button_pressed(mb_left)
						{
							//global.selected_clothing.armor.capacity += global.left_wrist_arr[k].cont_size
							global.mouse_item = global.left_wrist_arr[k]
							global.mouse_ammo = global.left_wrist_ammo[k]
							obj_item_manager.mouse_modifiers = global.left_wrist_mod_arr[k]
							array_delete(global.left_wrist_arr, array_get_index(global.left_wrist_arr, global.left_wrist_arr[k]), 1)
							array_delete(global.left_wrist_ammo, array_get_index(global.left_wrist_ammo, global.left_wrist_ammo[k]), 1)
							array_delete(global.left_wrist_mod_arr, array_get_index(global.left_wrist_mod_arr, global.left_wrist_mod_arr[k]), 1)
							global.selected_clothing = noone
							global.selected_item = noone
							mouse_clear(mb_left)
							global.selected_item = noone
							//---------------------------------------------------------
						global.left_wrist_capacity = 0
						for(var k = 0; k < array_length(global.left_wrist_arr); k++)
						{	
							global.left_wrist_capacity += global.left_wrist_arr[k].cont_size
						}
						}
					} 
				}
			}
			
			else if global.selected_clothing.armor.location == "Left Hand"
			{
				for(var k = 0; k < array_length(global.left_hand_arr); k++)
				{
					draw_text(x+4, y+4+33*k+33, global.left_hand_arr[k].name)
					
					if mouse_x >= x && mouse_x <= x+416 && mouse_y >= y+33*k+33 && mouse_y <= y+33*k+64
					{
						draw_rectangle(x, y+33*k+33, x+416, y+33*k+64, true)
						global.selected_item = global.left_hand_arr[k]
						draw_modifiers(global.left_hand_mod_arr[k], global.left_hand_arr[k])
						
						show_debug_message(global.selected_item)
						if mouse_check_button_pressed(mb_left)
						{
							//global.selected_clothing.armor.capacity += global.left_hand_arr[k].cont_size
							global.mouse_item = global.left_hand_arr[k]
							global.mouse_ammo = global.left_hand_ammo[k]
							obj_item_manager.mouse_modifiers = global.left_hand_mod_arr[k]
							array_delete(global.left_hand_arr, array_get_index(global.left_hand_arr, global.left_hand_arr[k]), 1)
							array_delete(global.left_hand_ammo, array_get_index(global.left_hand_ammo, global.left_hand_ammo[k]), 1)
							array_delete(global.left_hand_mod_arr, array_get_index(global.left_hand_mod_arr, global.left_hand_mod_arr[k]), 1)
							global.selected_clothing = noone
							global.selected_item = noone
							mouse_clear(mb_left)
							global.selected_item = noone
							//---------------------------------------------------------
							global.left_hand_capacity = 0
						for(var k = 0; k < array_length(global.left_hand_arr); k++)
						{	
							global.left_hand_capacity += global.left_hand_arr[k].cont_size
						}
						}
					} 
				}
			}
			else if global.selected_clothing.armor.location == "Right Hand"
			{
				for(var k = 0; k < array_length(global.right_hand_arr); k++)
				{
					draw_text(x+4, y+4+33*k+33, global.right_hand_arr[k].name)
					
					if mouse_x >= x && mouse_x <= x+416 && mouse_y >= y+33*k+33 && mouse_y <= y+33*k+64
					{
						draw_rectangle(x, y+33*k+33, x+416, y+33*k+64, true)
						global.selected_item = global.right_hand_arr[k]
						draw_modifiers(global.right_hand_mod_arr[k], global.right_hand_arr[k])
						
						show_debug_message(global.selected_item)
						if mouse_check_button_pressed(mb_left)
						{
							//global.selected_clothing.armor.capacity += global.right_hand_arr[k].cont_size
							global.mouse_item = global.right_hand_arr[k]
							global.mouse_ammo = global.right_hand_ammo[k]
							obj_item_manager.mouse_modifiers = global.right_hand_mod_arr[k]
							array_delete(global.right_hand_arr, array_get_index(global.right_hand_arr, global.right_hand_arr[k]), 1)
							array_delete(global.right_hand_ammo, array_get_index(global.right_hand_ammo, global.right_hand_ammo[k]), 1)
							array_delete(global.right_hand_mod_arr, array_get_index(global.right_hand_mod_arr, global.right_hand_mod_arr[k]), 1)
							global.selected_clothing = noone
							global.selected_item = noone
							mouse_clear(mb_left)
							global.selected_item = noone
							//---------------------------------------------------------
						global.right_hand_capacity = 0
						for(var k = 0; k < array_length(global.right_hand_arr); k++)
						{	
							global.right_hand_capacity += global.right_hand_arr[k].cont_size
						}
						}
					} 
				}
			}
			
			else if global.selected_clothing.armor.location == "Face"
			{
				for(var k = 0; k < array_length(global.face_arr); k++)
				{
					draw_text(x+4, y+4+33*k+33, global.face_arr[k].name)
					
					if mouse_x >= x && mouse_x <= x+416 && mouse_y >= y+33*k+33 && mouse_y <= y+33*k+64
					{
						draw_rectangle(x, y+33*k+33, x+416, y+33*k+64, true)
						global.selected_item = global.face_arr[k]
						draw_modifiers(global.face_mod_arr[k], global.face_arr[k])
						
						show_debug_message(global.selected_item)
						if mouse_check_button_pressed(mb_left)
						{
							//global.selected_clothing.armor.capacity += global.face_arr[k].cont_size
							global.mouse_item = global.face_arr[k]
							global.mouse_ammo = global.face_ammo[k]
							obj_item_manager.mouse_modifiers = global.face_mod_arr[k]
							array_delete(global.face_arr, array_get_index(global.face_arr, global.face_arr[k]), 1)
							array_delete(global.face_ammo, array_get_index(global.face_ammo, global.face_ammo[k]), 1)
							array_delete(global.face_mod_arr, array_get_index(global.face_mod_arr, global.face_mod_arr[k]), 1)
							global.selected_clothing = noone
							global.selected_item = noone
							mouse_clear(mb_left)
							global.selected_item = noone
							//---------------------------------------------------------
						global.face_capacity = 0
						for(var k = 0; k < array_length(global.face_arr); k++)
						{	
							global.face_capacity += global.face_arr[k].cont_size
						}
						}
					} 
				}
			}
		}
		
	
	for(var i = 0; i < array_length(global.clothing_arr); i++)
	{
		
		
		
		
		if global.selected_clothing == noone
		{
			
			draw_sprite_ext(spr_ui_no_grid, 0, x, y+33*i, 6.5, 0.5, 0, c_white, 1)
			draw_sprite(spr_dropdown, 0, x+4, y+33*i)
			draw_text(x+50, y+33*i+4, global.clothing_arr[i].name)
			//draw_text(x+385-string_length(global.clothing_arr[i].armor.capacity)*10, y+33*i+4, string($"({global.clothing_arr[i].armor.capacity})"))
			if global.clothing_arr[i].armor.location == "Torso"
			{
				draw_text(x+365-string_length(string($"({global.torso_capacity}/{global.clothing_arr[i].armor.capacity})"))*8, y+33*i+4, string($"({global.torso_capacity}/{global.clothing_arr[i].armor.capacity})"))
			}
			if global.clothing_arr[i].armor.location == "Legs"
			{
				draw_text(x+365-string_length(string($"({global.leg_capacity}/{global.clothing_arr[i].armor.capacity})"))*8, y+33*i+4, string($"({global.leg_capacity}/{global.clothing_arr[i].armor.capacity})"))
			}
			if global.clothing_arr[i].armor.location == "Right Wrist"
			{
				draw_text(x+365-string_length(string($"({global.right_wrist_capacity}/{global.clothing_arr[i].armor.capacity})"))*8, y+33*i+4, string($"({global.right_wrist_capacity}/{global.clothing_arr[i].armor.capacity})"))
			}
			if global.clothing_arr[i].armor.location == "Left Wrist"
			{
				draw_text(x+365-string_length(string($"({global.left_wrist_capacity}/{global.clothing_arr[i].armor.capacity})"))*8, y+33*i+4, string($"({global.left_wrist_capacity}/{global.clothing_arr[i].armor.capacity})"))
			}
			if global.clothing_arr[i].armor.location == "Left Hand"
			{
				draw_text(x+365-string_length(string($"({global.left_hand_capacity}/{global.clothing_arr[i].armor.capacity})"))*8, y+33*i+4, string($"({global.left_hand_capacity}/{global.clothing_arr[i].armor.capacity})"))
			}
			if global.clothing_arr[i].armor.location == "Right Hand"
			{
				draw_text(x+365-string_length(string($"({global.right_hand_capacity}/{global.clothing_arr[i].armor.capacity})"))*8, y+33*i+4, string($"({global.right_hand_capacity}/{global.clothing_arr[i].armor.capacity})"))
			}
			if global.clothing_arr[i].armor.location ==  "Face"
			{
				draw_text(x+365-string_length(string($"({global.face_capacity}/{global.clothing_arr[i].armor.capacity})"))*8, y+33*i+4, string($"({global.face_capacity}/{global.clothing_arr[i].armor.capacity})"))
			}
			if global.clothing_arr[i].armor.location == "Vest"
			{
				draw_text(x+365-string_length(string($"({global.vest_capacity}/{global.clothing_arr[i].armor.capacity})"))*8, y+33*i+4, string($"({global.vest_capacity}/{global.clothing_arr[i].armor.capacity})"))
			}
			if global.clothing_arr[i].armor.location == "Left Foot"
			{
				draw_text(x+365-string_length(string($"({global.left_foot_capacity}/{global.clothing_arr[i].armor.capacity})"))*8, y+33*i+4, string($"({global.left_foot_capacity}/{global.clothing_arr[i].armor.capacity})"))
			}
			if global.clothing_arr[i].armor.location == "Right Foot"
			{
				draw_text(x+365-string_length(string($"({global.right_foot_capacity}/{global.clothing_arr[i].armor.capacity})"))*8, y+33*i+4, string($"({global.right_foot_capacity}/{global.clothing_arr[i].armor.capacity})"))
			}
			if global.clothing_arr[i].armor.location == "Shoulder"
			{
				draw_text(x+365-string_length(string($"({global.lshoulder_capacity}/{global.clothing_arr[i].armor.capacity})"))*8, y+33*i+4, string($"({global.lshoulder_capacity}/{global.clothing_arr[i].armor.capacity})"))
			}
			if global.clothing_arr[i].armor.location == "Head"
			{
				draw_text(x+365-string_length(string($"({global.head_capacity}/{global.clothing_arr[i].armor.capacity})"))*8, y+33*i+4, string($"({global.head_capacity}/{global.clothing_arr[i].armor.capacity})"))
			}
			if global.clothing_arr[i].armor.location == "Backpack"
			{
				draw_text(x+365-string_length(string($"({global.backpack_capacity}/{global.clothing_arr[i].armor.capacity})"))*8, y+33*i+4, string($"({global.backpack_capacity}/{global.clothing_arr[i].armor.capacity})"))
			}
			if global.clothing_arr[i].armor.location == "Belt"
			{
				draw_text(x+365-string_length(global.clothing_arr[i].armor.capacity)*10-50, y+33*i+4, string($"({global.belt_capacity}/{global.clothing_arr[i].armor.capacity} ITEMS)"))
			}
		} 
		
		if mouse_x >= x && mouse_x <= x+416 && mouse_y >= y+33*i && mouse_y <= y+33*i+33 && global.selected_clothing == noone 
			{
				draw_rectangle(x, y+33*i, x+416, y+33*i+33, true)
			}
		
		if global.mouse_item != noone && global.selected_clothing == noone && global.selected_item == noone
		{
			if mouse_x >= x && mouse_x <= x+416 && mouse_y >= y+33*i && mouse_y <= y+33*i+33
			{
				draw_rectangle(x, y+33*i, x+416, y+33*i+33, true)
				show_debug_message(global.torso_capacity + global.mouse_item.cont_size)
				if mouse_check_button_pressed(mb_left)// && global.mouse_item.cont_size <= global.clothing_arr[i].armor.capacity
				{
					//global.clothing_arr[i].armor.capacity -= global.mouse_item.cont_size
					
					if global.clothing_arr[i].armor.location = "Torso" && global.torso_capacity + global.mouse_item.cont_size <= global.clothing_arr[i].armor.capacity 
					{
						
						array_push(global.torso_arr, global.mouse_item)
						array_push(global.torso_ammo, global.mouse_ammo)
						array_push(global.torso_mod_arr, obj_item_manager.mouse_modifiers)
						obj_item_manager.mouse_modifiers = array_create(obj_item_manager.modifier_amount, 0)
						//---------------------------------------------------------
						global.torso_capacity = 0
						
						for(var k = 0; k < array_length(global.torso_arr); k++)
						{	
							global.torso_capacity += global.torso_arr[k].cont_size
						}
						global.mouse_item = noone
						
					}
					else if global.clothing_arr[i].armor.location = "Legs" && global.leg_capacity + global.mouse_item.cont_size <= global.clothing_arr[i].armor.capacity
					{
						array_push(global.left_leg_arr, global.mouse_item)
						array_push(global.left_leg_ammo, global.mouse_ammo)
						array_push(global.leg_mod_arr, obj_item_manager.mouse_modifiers)
						
						global.mouse_item = noone
						obj_item_manager.mouse_modifiers = array_create(obj_item_manager.modifier_amount, 0)
						//---------------------------------------------------------
						global.leg_capacity = 0
						for(var k = 0; k < array_length(global.left_leg_arr); k++)
						{	
							global.leg_capacity += global.left_leg_arr[k].cont_size
						}
					}
					/*else if global.clothing_arr[i].armor.location = "Left Leg" && global.torso_capacity + global.mouse_item.cont_size <= global.clothing_arr[i].armor.capacity
					{
						array_push(global.left_leg_arr, global.mouse_item)
						array_push(global.left_leg_ammo, global.mouse_ammo)
						global.mouse_item = noone
					}
					else if global.clothing_arr[i].armor.location = "Right Leg" && global.torso_capacity + global.mouse_item.cont_size <= global.clothing_arr[i].armor.capacity
					{
						array_push(global.right_leg_arr, global.mouse_item)
						array_push(global.right_leg_ammo, global.mouse_ammo)
						global.mouse_item = noone
					}*/
					else if global.clothing_arr[i].armor.location = "Right Wrist" && global.right_wrist_capacity + global.mouse_item.cont_size <= global.clothing_arr[i].armor.capacity
					{
						array_push(global.right_wrist_arr, global.mouse_item)
						array_push(global.right_wrist_ammo, global.mouse_ammo)
						array_push(global.right_wrist_mod_arr, obj_item_manager.mouse_modifiers)
						
						global.mouse_item = noone
						obj_item_manager.mouse_modifiers = array_create(obj_item_manager.modifier_amount, 0)
						//---------------------------------------------------------
						global.right_wrist_capacity = 0
						for(var k = 0; k < array_length(global.right_wrist_arr); k++)
						{	
							global.right_wrist_capacity += global.right_wrist_arr[k].cont_size
						}
					}
					else if global.clothing_arr[i].armor.location = "Left Wrist" && global.left_wrist_capacity + global.mouse_item.cont_size <= global.clothing_arr[i].armor.capacity
					{
						array_push(global.left_wrist_arr, global.mouse_item)
						array_push(global.left_wrist_ammo, global.mouse_ammo)
						array_push(global.left_wrist_mod_arr, obj_item_manager.mouse_modifiers)
						global.mouse_item = noone
						obj_item_manager.mouse_modifiers = array_create(obj_item_manager.modifier_amount, 0)
						//---------------------------------------------------------
						global.left_wrist_capacity = 0
						for(var k = 0; k < array_length(global.left_wrist_arr); k++)
						{	
							global.left_wrist_capacity += global.left_wrist_arr[k].cont_size
						}
					}
					else if global.clothing_arr[i].armor.location = "Left Hand" && global.left_hand_capacity + global.mouse_item.cont_size <= global.clothing_arr[i].armor.capacity
					{
						array_push(global.left_hand_arr, global.mouse_item)
						array_push(global.left_hand_ammo, global.mouse_ammo)
						array_push(global.left_hand_mod_arr, obj_item_manager.mouse_modifiers)
						global.mouse_item = noone
						obj_item_manager.mouse_modifiers = array_create(obj_item_manager.modifier_amount, 0)
						//---------------------------------------------------------
						global.left_hand_capacity = 0
						for(var k = 0; k < array_length(global.left_hand_arr); k++)
						{	
							global.left_hand_capacity += global.left_hand_arr[k].cont_size
						}
					}
					else if global.clothing_arr[i].armor.location = "Right Hand" && global.right_hand_capacity + global.mouse_item.cont_size <= global.clothing_arr[i].armor.capacity
					{
						array_push(global.right_hand_arr, global.mouse_item)
						array_push(global.right_hand_ammo, global.mouse_ammo)
						array_push(global.right_hand_mod_arr, obj_item_manager.mouse_modifiers)
						global.mouse_item = noone
						obj_item_manager.mouse_modifiers = array_create(obj_item_manager.modifier_amount, 0)
						//---------------------------------------------------------
						global.right_hand_capacity = 0
						for(var k = 0; k < array_length(global.right_hand_arr); k++)
						{	
							global.right_hand_capacity += global.right_hand_arr[k].cont_size
						}
					}
					else if global.clothing_arr[i].armor.location = "Face" && global.face_capacity + global.mouse_item.cont_size <= global.clothing_arr[i].armor.capacity
					{
						array_push(global.face_arr, global.mouse_item)
						array_push(global.face_ammo, global.mouse_ammo)
						array_push(global.face_mod_arr, obj_item_manager.mouse_modifiers)
						global.mouse_item = noone
						obj_item_manager.mouse_modifiers = array_create(obj_item_manager.modifier_amount, 0)
						//---------------------------------------------------------
						global.face_capacity = 0
						for(var k = 0; k < array_length(global.face_arr); k++)
						{	
							global.face_capacity += global.face_arr[k].cont_size
						}
					}
					else if global.clothing_arr[i].armor.location = "Head" && global.head_capacity + global.mouse_item.cont_size <= global.clothing_arr[i].armor.capacity
					{
						array_push(global.top_head_arr, global.mouse_item)
						array_push(global.top_head_ammo, global.mouse_ammo)
						array_push(global.head_mod_arr, obj_item_manager.mouse_modifiers)
						global.mouse_item = noone
						obj_item_manager.mouse_modifiers = array_create(obj_item_manager.modifier_amount, 0)
						//---------------------------------------------------------
						global.head_capacity = 0
						for(var k = 0; k < array_length(global.top_head_arr); k++)
						{	
							global.head_capacity += global.top_head_arr[k].cont_size
						}
					}
					else if global.clothing_arr[i].armor.location = "Right Foot" && global.right_foot_capacity + global.mouse_item.cont_size <= global.clothing_arr[i].armor.capacity
					{
						array_push(global.right_foot_arr, global.mouse_item)
						array_push(global.right_foot_ammo, global.mouse_ammo)
						array_push(global.right_foot_mod_arr, obj_item_manager.mouse_modifiers)
						global.mouse_item = noone
						obj_item_manager.mouse_modifiers = array_create(obj_item_manager.modifier_amount, 0)
						//---------------------------------------------------------
						global.right_foot_capacity = 0
						for(var k = 0; k < array_length(global.right_foot_arr); k++)
						{	
							global.right_foot_capacity += global.right_foot_arr[k].cont_size
						}
					}
					else if global.clothing_arr[i].armor.location = "Left Foot" && global.left_foot_capacity + global.mouse_item.cont_size <= global.clothing_arr[i].armor.capacity
					{
						array_push(global.left_foot_arr, global.mouse_item)
						array_push(global.left_foot_ammo, global.mouse_ammo)
						array_push(global.left_foot_mod_arr, obj_item_manager.mouse_modifiers)
						global.mouse_item = noone
						obj_item_manager.mouse_modifiers = array_create(obj_item_manager.modifier_amount, 0)
						//---------------------------------------------------------
						global.left_foot_capacity = 0
						for(var k = 0; k < array_length(global.left_foot_arr); k++)
						{	
							global.left_foot_capacity += global.left_foot_arr[k].cont_size
						}
					}
					else if global.clothing_arr[i].armor.location = "Vest" && global.vest_capacity + global.mouse_item.cont_size <= global.clothing_arr[i].armor.capacity
					{
						array_push(global.vest_arr, global.mouse_item)
						array_push(global.vest_ammo, global.mouse_ammo)
						array_push(global.vest_mod_arr, obj_item_manager.mouse_modifiers)
						global.mouse_item = noone
						obj_item_manager.mouse_modifiers = array_create(obj_item_manager.modifier_amount, 0)
						//---------------------------------------------------------
						global.vest_capacity = 0
						for(var k = 0; k < array_length(global.vest_arr); k++)
						{	
							global.vest_capacity += global.vest_arr[k].cont_size
						}
					}
					else if global.clothing_arr[i].armor.location = "Backpack" && global.backpack_capacity + global.mouse_item.cont_size <= global.clothing_arr[i].armor.capacity 
					{
						array_push(global.backpack_arr, global.mouse_item)
						array_push(global.backpack_ammo, global.mouse_ammo)
						array_push(global.backpack_mod_arr, obj_item_manager.mouse_modifiers)
						show_debug_message(string($"ADD TO BACKPACK {global.backpack_mod_arr}"))
						global.mouse_item = noone
						obj_item_manager.mouse_modifiers = array_create(obj_item_manager.modifier_amount, 0)
						//---------------------------------------------------------
						global.backpack_capacity = 0
						for(var k = 0; k < array_length(global.backpack_arr); k++)
						{	
							global.backpack_capacity += global.backpack_arr[k].cont_size
						}
					}
					else if global.clothing_arr[i].armor.location = "Shoulder" && global.lshoulder_capacity + global.mouse_item.cont_size <= global.clothing_arr[i].armor.capacity
					{
						array_push(global.lshoulder_arr, global.mouse_item)
						array_push(global.lshoulder_ammo, global.mouse_ammo)
						array_push(global.shoulder_mod_arr, obj_item_manager.mouse_modifiers)
						global.mouse_item = noone
						obj_item_manager.mouse_modifiers = array_create(obj_item_manager.modifier_amount, 0)
						//---------------------------------------------------------
						global.lshoulder_capacity = 0
						for(var k = 0; k < array_length(global.lshoulder_arr); k++)
						{	
							global.lshoulder_capacity += global.lshoulder_arr[k].cont_size
						}
					}
					else if global.clothing_arr[i].armor.location = "Belt" && global.belt_capacity + 1 <= global.clothing_arr[i].armor.capacity && global.mouse_item.specs.beltable == true
					{
						array_push(global.belt_arr, global.mouse_item)
						array_push(global.belt_ammo, global.mouse_ammo)
						array_push(global.belt_mod_arr, obj_item_manager.mouse_modifiers)
						global.mouse_item = noone
						obj_item_manager.mouse_modifiers = array_create(obj_item_manager.modifier_amount, 0)
						//---------------------------------------------------------
						global.belt_capacity = 0
						for(var k = 0; k < array_length(global.belt_arr); k++)
						{	
							global.belt_capacity += 1
						}
					}
					
					mouse_clear(mb_left)
				}
				
			}
		}
		if mouse_x >= x && mouse_x <= x+416 && mouse_y >= y+33*i && mouse_y <= y+33*i+33 && global.mouse_item == noone 
			{
				if global.selected_clothing == noone && mouse_check_button_pressed(mb_left)
				{
					global.selected_clothing = global.clothing_arr[i]
					mouse_clear(mb_left)
				} else if global.selected_clothing != noone && mouse_check_button_pressed(mb_left) //&& global.selected_item == noone
				{
					global.selected_clothing = noone
					global.selected_item = noone
				}
			}
	}
}

