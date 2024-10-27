


_xx = camera_get_view_x(view_camera[0])
_yy = camera_get_view_y(view_camera[0])


image_blend = find_color(condition) 
if obj_health_manager.health_tab == 1 && obj_health_manager.health_open == true
{
	draw_self()
}



if bleed_timer < 10
{
	bleed_timer += 1
} else
{
	bleed_timer = 0
	if bleeding == true
	{
		var shift_x = random_range(-14, 14)
		var shift_y = random_range(-14, 14)
		for(i = 0; i< random_range(4, 32); i++)
		{
			//instance_create_depth(obj_player.x+shift_x, obj_player.y+shift_x, -9, obj_blood_surface)
		}
	}
}

if place_meeting(x, y, obj_mouse) && obj_health_manager.health_tab == 1 && obj_health_manager.health_open == true
{
	draw_sprite_ext(spr_ui_no_grid_blue_opaque, 0, mouse_x + 25, mouse_y, 5, 6, 0, c_white, 1)
	draw_sprite_ext(spr_ui_no_grid_blue_opaque, 0, mouse_x + 25, mouse_y-40, 5, 0.5, 0, c_white, 1)
		draw_text_transformed(mouse_x + 40, mouse_y - 30, string($"Condition: {condition}/{condition_max}%"), 1, 1, 0)
		
		
		
		if broken_amount > 0
		{
			draw_text_transformed(mouse_x + 40, mouse_y + 10, "Broken", 1, 1, 0)
			//draw_text_transformed(mouse_x + 40, mouse_y + 30, string($"Condition Degredation"), 0.8, 0.8, 0)
			draw_text_transformed(mouse_x + 40, mouse_y + 30, string($"-{condition_degradation_arr[broken_amount-1]}% per second"), 0.8, 0.8, 0)
			draw_text_transformed(mouse_x + 40, mouse_y + 42, string($"-{broken_amount*10}% Max Percentage"), 0.8, 0.8, 0)
			
			draw_sprite_ext(spr_breaks, break_type, mouse_x + 10, mouse_y + 100, 2.5, 2.5, 0, c_white, 1)
			draw_line(mouse_x + 130, mouse_y + 135, mouse_x + 320, mouse_y + 135)
			draw_text_transformed(mouse_x + 140, mouse_y + 110, string($"{break_array[break_type]} Fracture"), 0.8, 0.8, 0)
			draw_text_ext_transformed(mouse_x + 145, mouse_y + 145, string($"{break_desc_array[break_type]}"), 21, 200, 0.8, 0.8, 0)
			
			draw_text_transformed(mouse_x + 60, mouse_y + 330, "Effects", 1, 1, 0)
			if break_type == 2
			{
				draw_sprite_ext(spr_blood_ui, 0, mouse_x + 140, mouse_y+325, 1, 1, 0, c_white, 1)
				draw_sprite_ext(spr_infection_ui, 0, mouse_x + 200, mouse_y+325, 1, 1, 0, c_white, 1)
				draw_sprite_ext(spr_wound_ui, 0, mouse_x + 260, mouse_y+325, 1, 1, 0, c_white, 1)
			}
		}
		if infection_amount > 0
		{
			draw_text_transformed(mouse_x + 40, mouse_y + 60, "Infection", 1, 1, 0)
			draw_text_transformed(mouse_x + 40, mouse_y + 80, string($"-{condition_degradation_arr[infection_amount-1]}% per second"), 0.8, 0.8, 0)
		}
		if contaminated_amount > 0
		{
			draw_text_transformed(mouse_x + 40, mouse_y + 180, "Contaminated", 1, 1, 0)
			//show_message(contaminant)
			draw_text_transformed(mouse_x + 40, mouse_y + 198, string($"{contaminant.name} - {contaminant.effect_description}"), 0.8, 0.8, 0)
			//draw_sprite_ext(spr_ui_no_grid_blue, 0, mouse_x + 353, mouse_y + 98, 0.8, 0.8, 0, c_white, 1)
			//draw_sprite_ext(contaminant.sprite, 0, mouse_x + 360, mouse_y + 105, 1.2, 1.2, 0, c_white, 1)
		}
		
		if bruising == true
		{
			draw_text_transformed(mouse_x + 40, mouse_y + 220, "Bruised", 1, 1, 0)
		}
		if inflammation == true
		{
			draw_text_transformed(mouse_x + 40, mouse_y + 260, "Inflammed", 1, 1, 0)
		}
		if open_wound == true
		{
			draw_text_transformed(mouse_x + 40, mouse_y + 100, "Open Wound", 1, 1, 0)
			draw_text_transformed(mouse_x + 40, mouse_y + 120, string($"-{open_wound_amount*10}%"), 0.8, 0.8, 0)
		}
		if radiated == true
		{
			draw_text_transformed(mouse_x + 40, mouse_y + 240, "Irradiated", 1, 1, 0)
		}
		
		
			if treated == false
			{
				if open_wound == true
				{
					draw_text_transformed(mouse_x + 40, mouse_y + 140, "Untreated", 1, 1, 0)
					draw_text_transformed(mouse_x + 40, mouse_y + 160, string($"(+) Infection ({(1/(50/open_wound_amount))*100}%)"), 0.8, 0.8, 0)
				}
			} else
			{
				if open_wound == false
				{
					draw_text_transformed(mouse_x + 40, mouse_y + 140, string($"Remedied"), 1, 1, 0)
					draw_text_transformed(mouse_x + 40, mouse_y + 160, string($"(-) Infection ({((1/(50/treated_amount))*100)}%)"), 0.8, 0.8, 0)
				} else
				{
					draw_text_transformed(mouse_x + 40, mouse_y + 140, string($"Treated"), 1, 1, 0)
					draw_text_transformed(mouse_x + 40, mouse_y + 160, string($"(+) Infection ({(1/((100*treated_amount)/open_wound_amount))*100}%)"), 0.8, 0.8, 0)
				}
			}
		
		
		for(var i = 0; i < broken_amount; i++)
		{
			draw_sprite_ext(spr_broken_ui, 0, mouse_x + 180+25*i, mouse_y+10, 1, 1, 0, c_white, 1)
		}
		for(var i = 0; i < infection_amount; i++)
		{
			draw_sprite_ext(spr_infection_ui, 0, mouse_x + 180+25*i, mouse_y+60, 1, 1, 0, c_white, 1)
		}
		for(var i = 0; i < open_wound_amount; i++)
		{
			draw_sprite_ext(spr_wound_ui, 0, mouse_x + 180+25*i, mouse_y+100, 1, 1, 0, c_white, 1)
		}
		for(var i = 0; i < treated_amount; i++)
		{
			draw_sprite_ext(spr_treated_ui, 0, mouse_x + 180+25*i, mouse_y+140, 1, 1, 0, c_white, 1)
		}
		if applied_item != noone
		{
			draw_sprite(applied_item.spr, 0, x, y)
			if mouse_check_button_pressed(mb_left) && global.mouse_item == noone
			{
				global.mouse_item = applied_item
				obj_item_manager.mouse_modifiers = applied_mods
				applied_item = noone
				applied_mods = 0
			}
		}
		if global.mouse_item != noone && global.mouse_item.specs.item_type == "Medical" && mouse_check_button_pressed(mb_left) && ((index > 9 && index <= 20 && global.mouse_item.specs.medical.organs == true) || (index <= 9 && global.mouse_item.specs.medical.limbs == true)) && obj_item_manager.mouse_modifiers[9] > 0
		{
			audio_play_sound(global.mouse_item.specs.misc_sound, 1, 0)
			if global.mouse_item.specs.medical.injection == false
			{
				applied_item = global.mouse_item
				applied_mods = obj_item_manager.mouse_modifiers
				global.mouse_item = noone
			} else
			{
				obj_item_manager.mouse_modifiers[9] -= global.mouse_item.specs.medical.injection_loss
			}
			condition += global.mouse_item.specs.medical.condition_increase
			temp_heal += global.mouse_item.specs.medical.continuous_heal
			
			
		}
		
		if broken == false
		{
			broken_amount = 0
		}
		if broken_amount == 0
		{
			broken = false
		}
		if keyboard_check_pressed(ord("1"))
		{
			condition -= 10
		}
		if keyboard_check_pressed(ord("2"))
		{
			if broken_amount < 5
			{
				if broken_amount == 0
				{
					break_type = 1
				}
				broken_amount += 1
				broken = true
				//open_wound = true
				//open_wound_amount += 1
				
			} else
			{
				broken_amount = 0
				broken = false
				//open_wound = false
			
			}
		}
		if keyboard_check_pressed(ord("3"))
		{
			if break_type < 13
			{
				break_type += 1
			} else
			{
				break_type = 1
			}
		}
		if keyboard_check_pressed(ord("6"))
		{
			if contaminated_amount < 1
			{
				contaminant = global.contaminant_list.dirt
				//show_message(global.contaminant_list.dirt)
				contaminated_amount += 1
				contaminated = true
			} else
			{
				contaminated_amount = 0
				contaminated = false
				contaminant = noone
			}
		}
		if keyboard_check_pressed(ord("7"))
		{
			bruising = !bruising
		}
		if keyboard_check_pressed(ord("9"))
		{
			inflammation = !inflammation
		}
		if keyboard_check_pressed(ord("5"))
		{
			if treated_amount < 5
			{
				treated_amount += 1
				treated = true
			} else
			{
				treated_amount = 0
				treated = false
			}
		}
		if keyboard_check_pressed(ord("8"))
		{
			radiated =!radiated
		}
		if keyboard_check_pressed(ord("4"))
		{
			if open_wound_amount < 5
			{
				open_wound_amount += 1
				open_wound = true
			} else
			{
				open_wound_amount = 0
				open_wound = false
			}
		}
}

if broken_amount == 0
{
	condition_max = 100
}
if broken_amount == 1
{
	condition_max = 90
}
if broken_amount == 2
{
	condition_max = 80
}
if broken_amount == 3
{
	condition_max = 70
}
if broken_amount == 4
{
	condition_max = 60
}
if broken_amount == 5
{
	condition_max = 50
}

/*
if place_meeting(x, y, obj_mouse) && obj_health_manager.health_open == true && index == 11 && obj_health_manager.health_tab == 2
{
	draw_sprite_ext(spr_ui_no_grid_opaque, 0, _xx+896, _yy+540, 6, 1.5, 0, c_white, 1)
	draw_sprite_ext(spr_heartbeat2, heart_val, _xx+896, _yy+512, 1.5, 0.6, 0, c_white, 1)
}
*/
if timer <= fps
{
	timer += 1
	
} else
{
	
	timer = 0
	
	if broken == true
	{
		broken_timer += 1
		
		if broken_amount > 1
		{
			condition -= random_range(condition_degradation_arr[broken_amount-2], condition_degradation_arr[broken_amount-1])
		} else
		{
			condition -= random(condition_degradation_arr[broken_amount-1])
		}
	} else
	{
		broken_timer = 0
	}
	
	if temp_heal > 0
	{
		temp_heal -= 1
		condition += 1
	}
}
if broken_timer >= 60 * broken_amount 
{
	broken_timer = 0
	broken_amount -= 1
	if broken_amount == 0
	{
		broken = false
		
	}	
}
	

if condition > condition_max
{
	condition = condition_max
}

if obj_player.xspd != 0 || obj_player.yspd != 0
{
	if ((index >= 12 && index <= 17) || (index == 22 || index == 23)) && condition < 100
	{
		if irandom(condition) == 1
		{
			condition -= 1
			if irandom(condition) == 1
				{
					audio_play_sound(snd_grunt, 1, 0)
				}
		}
	}
}
if (index >= 6 && index <= 11) && condition < 100
	{
		global.shake = (100-condition)/100
		if obj_item_manager.arm_degrade == true
		{
			if irandom(condition) == 1
			{
				condition -= 1
				if irandom(condition) == 1
				{
					audio_play_sound(snd_grunt, 1, 0)
				}
			}
		}
		
	}