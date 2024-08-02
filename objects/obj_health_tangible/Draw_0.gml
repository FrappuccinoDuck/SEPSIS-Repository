_xx = camera_get_view_x(view_camera[0])
_yy = camera_get_view_y(view_camera[0])

if (index > 9 && index <= 20 && obj_health_manager.health_tab == 2) && obj_health_manager.health_open == true
{
	if place_meeting(x, y, obj_mouse)
	{
		draw_self()
	}
}

if place_meeting(x, y, obj_mouse) && ((index > 9 && index <= 20 && obj_health_manager.health_tab == 2) || (index <= 9 && obj_health_manager.health_tab == 0)) && obj_health_manager.health_open == true
{
	draw_sprite_ext(spr_ui_no_grid_blue, 0, mouse_x + 25, mouse_y, 5, 5, 0, c_white, 1)
	draw_sprite_ext(spr_ui_no_grid_blue, 0, mouse_x + 25, mouse_y-40, 5, 0.5, 0, c_white, 1)
		draw_text_transformed(mouse_x + 40, mouse_y - 30, string($"Condition: {condition}%"), 1, 1, 0)
		
		
		
		if bleed_amount > 0
		{
			draw_text_transformed(mouse_x + 40, mouse_y + 10, "Bleeding", 1, 1, 0)
			draw_text_transformed(mouse_x + 40, mouse_y + 30, string($"{blood_loss_arr[bleed_amount-1]} mL per second"), 0.8, 0.8, 0)
			draw_text_transformed(mouse_x + 40, mouse_y + 42, string($"-{condition_degradation_arr[bleed_amount-1]}% per second"), 0.8, 0.8, 0)
		}
		if infection_amount > 0
		{
			draw_text_transformed(mouse_x + 40, mouse_y + 60, "Infection", 1, 1, 0)
			draw_text_transformed(mouse_x + 40, mouse_y + 80, string($"-{condition_degradation_arr[infection_amount-1]}% per second"), 0.8, 0.8, 0)
		}
		if contaminated_amount > 0
		{
			draw_text_transformed(mouse_x + 40, mouse_y + 100, "Contaminated", 1, 1, 0)
			//show_message(contaminant)
			draw_text_transformed(mouse_x + 40, mouse_y + 118, string($"{contaminant.name} - {contaminant.effect_description}"), 0.8, 0.8, 0)
			//draw_sprite_ext(spr_ui_no_grid_blue, 0, mouse_x + 353, mouse_y + 98, 0.8, 0.8, 0, c_white, 1)
			//draw_sprite_ext(contaminant.sprite, 0, mouse_x + 360, mouse_y + 105, 1.2, 1.2, 0, c_white, 1)
		}
		
		if bruising == true
		{
			draw_text_transformed(mouse_x + 40, mouse_y + 210, "Bruised", 1, 1, 0)
		}
		if inflammation == true
		{
			draw_text_transformed(mouse_x + 40, mouse_y + 190, "Inflammed", 1, 1, 0)
		}
		if open_wound == true
		{
			draw_text_transformed(mouse_x + 40, mouse_y + 170, "Open Wound", 1, 1, 0)
		}
		if radiated == true
		{
			draw_text_transformed(mouse_x + 40, mouse_y + 230, "Irradiated", 1, 1, 0)
		}
		
		if bleeding == true || infection == true
		{
			if treated == false
			{
				if open_wound == true
				{
					draw_text_transformed(mouse_x + 40, mouse_y + 150, "Untreated (High chance of infection)", 1, 1, 0)
				}
			} else
			{
				if open_wound == false
				{
					draw_text_transformed(mouse_x + 40, mouse_y + 150, string($"Remedied [{treated_amount}] (Infection reduction)"), 1, 1, 0)
				} else
				{
					draw_text_transformed(mouse_x + 40, mouse_y + 150, string($"Treated [{treated_amount}] (Low chance of infection)"), 1, 1, 0)
				}
			}
		}
		
		for(var i = 0; i < bleed_amount; i++)
		{
			draw_sprite_ext(spr_blood_ui, 0, mouse_x + 180+25*i, mouse_y+10, 1, 1, 0, c_white, 1)
		}
		for(var i = 0; i < infection_amount; i++)
		{
			draw_sprite_ext(spr_infection_ui, 0, mouse_x + 180+25*i, mouse_y+60, 1, 1, 0, c_white, 1)
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
		if global.mouse_item != noone && global.mouse_item.type == "Medical" && mouse_check_button_pressed(mb_left)
		{
			applied_item = global.mouse_item
			applied_mods = obj_item_manager.mouse_modifiers
			global.mouse_item = noone
			obj_item_manager.mouse_modifiers = 0
		}
		
		if bleeding == false
		{
			bleed_amount = 0
		}
		if bleed_amount == 0
		{
			bleeding = false
		}
		if keyboard_check_pressed(ord("2"))
		{
			if bleed_amount < 5
			{
				bleed_amount += 1
				bleeding = true
				open_wound = true
				
			} else
			{
				bleed_amount = 0
				bleeding = false
				open_wound = false
			
			}
		}
		if keyboard_check_pressed(ord("3"))
		{
			if infection_amount < 5
			{
				infection_amount += 1
				infection = true
			} else
			{
				infection_amount = 0
				infection = false
			}
		}
		if keyboard_check_pressed(ord("4"))
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
		if keyboard_check_pressed(ord("5"))
		{
			bruising = !bruising
		}
		if keyboard_check_pressed(ord("6"))
		{
			inflammation = !inflammation
		}
		if keyboard_check_pressed(ord("7"))
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
	
	if contaminated == true
	{
		contaminant.every_second_effect(self)
	}
	
	if bleeding == true
	{
		//instance_create_layer(obj_player.x+irandom_range(-5, 5), obj_player.y+irandom_range(-5, 5), "Instances", obj_blood_surface)
		bleed_timer += 1
		
		if bleed_amount > 1
		{
			global.blood_levels -= random_range(blood_loss_arr[bleed_amount-2], blood_loss_arr[bleed_amount-1])
			condition -= random_range(condition_degradation_arr[bleed_amount-2], condition_degradation_arr[bleed_amount-1])
		} else
		{
			global.blood_levels -= random(blood_loss_arr[bleed_amount-1])
			condition -= random(condition_degradation_arr[bleed_amount-1])
		}
	} else
	{
		bleed_timer = 0
	}
	if infection == true
	{		
		if infection_amount > 1
		{
			condition -= random_range(condition_degradation_arr[infection_amount-2], condition_degradation_arr[infection_amount-1])
		} else
		{
			condition -= random(condition_degradation_arr[infection_amount-1])
		}
	} 
	if open_wound == true
	{		
		if treated == false
		{
			if irandom(50/bleed_amount) == 1
			{
				if infection_amount == 0
				{
					infection = true
				}
				infection_amount += 1
			}
		} else
		{
			if irandom(100/bleed_amount) == 1
			{
				if infection_amount == 0
				{
					infection = true
				}
				infection_amount += 1
			}
		}
	} else
	{
		if treated == true
		{
			if irandom(50/treated_amount) == 1 && infection_amount > 0
			{
				infection_amount -= 1
				treated_amount -= 1
				if infection_amount == 0
				{
					infection = false
					treated = false
				}
			}
		}
	}
}
if bleed_timer >= 60 * bleed_amount
		{
			bleed_timer = 0
			bleed_amount -= 1
			if bleed_amount == 0
			{
				bleeding = false
				open_wound = false
			}
		}
		
if treated_amount == 0
{
	treated = false
}

