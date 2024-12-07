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
//depth = obj_mouse.depth+100

if place_meeting(x, y, obj_mouse) && obj_health_manager.health_open == true && index > 9 && index <= 20 && obj_health_manager.health_tab == 2
{
	global.selected_part = index
	
}


heart_val += heartbeat/100

if timer <= fps
{
	timer += 1
	global.bleed_volume = 0
	global.bleed_amount = 0
} else
{
	timer = 0
	
	if temp_heal > 0
	{
		temp_heal -= 1
		condition += 1
	}
	
	if contaminated == true
	{
		contaminant.every_second_effect(self)
	}
	
	if bleeding == true
	{
		
		global.bleed_volume += bleed_amount
		//global.bleed_amount += 1
		
		/*var instance_blood = instance_create_depth(obj_player.x, obj_player.y, -9, obj_Particles)
			instance_blood.set_depth(-9)
			instance_blood.set_size(0, 0.1)
			instance_blood.set_sprite(spr_Blood, false, false, true)
		
			instance_blood.set_orientation(0, 380)
			instance_blood.set_color_mix(c_red, make_color_rgb(128, 0, 0))
			instance_blood.set_alpha(random_range(0.6, 1), random_range(0.6, 1))
			instance_blood.set_direction(0, 0)
			instance_blood.set_speed(0, 0, 0)
			instance_blood.set_life(0, 100000)
		
			instance_blood.burst(bleed_amount)*/
		
		//instance_create_layer(obj_player.x+irandom_range(-5, 5), obj_player.y+irandom_range(-5, 5), "Instances", obj_blood_surface)
		bleed_timer += 1
		
		if bleed_amount > 1
		{
			global.bleed_amounts[index] = random_range(blood_loss_arr[bleed_amount-2], blood_loss_arr[bleed_amount-1])
			global.blood_levels -= global.bleed_amounts[index]
			condition -= random_range(condition_degradation_arr[bleed_amount-2], condition_degradation_arr[bleed_amount-1])
		} else
		{
			global.bleed_amounts[index] = random(blood_loss_arr[bleed_amount-1])
			global.blood_levels -= global.bleed_amounts[index]
			condition -= random(condition_degradation_arr[bleed_amount-1])
		}
	} else
	{
		bleed_timer = 0
		global.bleed_amount[index] = 0
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
		if infection < 5
		{
			if treated == false
			{
				if irandom(50/open_wound_amount) == 1
				{
					if infection_amount == 0
					{
						infection = true
						infection_index = 1
					}
					infection_amount += 1
				}
			} else
			{
				if irandom((100*treated_amount)/open_wound_amount) == 1
				{
					if infection_amount == 0
					{
						infection = true
						infection_index = 1
					}
					infection_amount += 1
				}
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
					treated_amount = 0
					infection_index = 0
				}
			}
		}
	}
}
if bleed_timer >= 60 * bleed_amount && bleed_amount > 0
		{
			bleed_timer = 0
			bleed_amount -= 1
			if bleed_amount == 0
			{
				bleeding = false
				open_wound = false
			}
		}
	
if open_wound_amount == 0
{
	condition_max = 100
}
if open_wound_amount == 1
{
	condition_max = 90
}
if open_wound_amount == 2
{
	condition_max = 80
}
if open_wound_amount == 3
{
	condition_max = 70
}
if open_wound_amount == 4
{
	condition_max = 60
}
if open_wound_amount == 5
{
	condition_max = 50
}
	
if treated_amount == 0
{
	treated = false
}

if condition > condition_max
{
	condition = condition_max
}

if bleed_amount > 5
{
	bleed_amount = 5
}
if infection_amount > 5
{
	infection_amount = 5
}
if open_wound_amount > 5
{
	open_wound_amount = 5
}