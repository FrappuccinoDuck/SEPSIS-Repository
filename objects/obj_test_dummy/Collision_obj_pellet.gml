if delay == false
{
	var temp_armor = armor
	var temp_armor_level = armor_level
	var temp_condition = armor_condition
	var var_current_bleed = current_bleed
	var temp_x = x
	var temp_y = y
	with(other)
	{
		if modifier[28].specs.bullet != "Energy"
		{
			var bullet = modifier[28]
		//hit_count += 1
			if temp_armor == "Light"
			{
				if bullet.specs.bullet_stats.light_pen >= temp_armor_level
				{
					instance_create_depth(temp_x, temp_y, -9, obj_blood_explosion_mini)
					var chance = irandom(100) 
					if chance < 10
					{
						var_current_bleed += random(0.2)
					}
					else if chance >= 10 && chance < 25
					{
						var_current_bleed += random_range(0.2, 1.5)
					}
					else if chance >= 25 && chance < 50
					{
						var_current_bleed += random_range(1.5, 5)
					}
					else if chance >= 50 && chance < 70
					{
						var_current_bleed += random_range(15, 100)
					}
					else if chance >= 70 && chance <= 100
					{
						var_current_bleed += random_range(5, 15)
					}
				}
				if temp_condition > 0
				{
					temp_condition -= random(bullet.specs.bullet_stats.light_dam)
				}
				var wall_distance = distance_to_object(obj_player)
				var wall_gain = 100/wall_distance
				if wall_gain > 1
				{
					wall_gain = 1
				}
				audio_play_sound(global.cloth_hit_arr[irandom(2)], 1, 0, wall_gain)
			}
			if temp_armor == "Medium"
			{
				if bullet.specs.bullet_stats.med_pen >= temp_armor_level
				{
					instance_create_depth(temp_x, temp_y, -9, obj_blood_explosion_mini)
					var chance = irandom(100) 
					if chance < 10
					{
						var_current_bleed += random(0.2)
					}
					else if chance >= 10 && chance < 25
					{
						var_current_bleed += random_range(0.2, 1.5)
					}
					else if chance >= 25 && chance < 50
					{
						var_current_bleed += random_range(1.5, 5)
					}
					else if chance >= 50 && chance < 70
					{
						var_current_bleed += random_range(15, 100)
					}
					else if chance >= 70 && chance <= 100
					{
						var_current_bleed += random_range(5, 15)
					}
				}
				if temp_condition > 0
				{
					temp_condition -= random(bullet.specs.bullet_stats.medium_dam)
				}
				var wall_distance = distance_to_object(obj_player)
				var wall_gain = 100/wall_distance
				if wall_gain > 1
				{
					wall_gain = 1
				}
				if irandom(1) == 0
				{
					audio_play_sound(global.cloth_hit_arr[irandom(2)], 1, 0, wall_gain)
				} else
				{
					audio_play_sound(global.metal_hit_arr[irandom(4)], 1, 0, wall_gain)
				}
			}
			if temp_armor == "Heavy"
			{
				if bullet.specs.bullet_stats.heavy_pen >= temp_armor_level
				{
					instance_create_depth(temp_x, temp_y, -9, obj_blood_explosion_mini)
					var chance = irandom(100) 
					if chance < 10
					{
						var_current_bleed += random(0.2)
					}
					else if chance >= 10 && chance < 25
					{
						var_current_bleed += random_range(0.2, 1.5)
					}
					else if chance >= 25 && chance < 50
					{
						var_current_bleed += random_range(1.5, 5)
					}
					else if chance >= 50 && chance < 70
					{
						var_current_bleed += random_range(15, 100)
					}
					else if chance >= 70 && chance <= 100
					{
						var_current_bleed += random_range(5, 15)
					}
				}
				if temp_condition > 0
				{
					temp_condition -= random(bullet.specs.bullet_stats.heavy_dam)
				}
				var wall_distance = distance_to_object(obj_player)
				var wall_gain = 100/wall_distance
				if wall_gain > 1
				{
					wall_gain = 1
				}
				audio_play_sound(global.metal_hit_arr[irandom(4)], 1, 0, wall_gain)
			}
		
			if temp_condition < 0
			{
				temp_condition = 0
			}
			if irandom(100) < bullet.specs.bullet_stats.pass_chance
			{
			} else
			{
				instance_destroy()
			}
		}
	}
	if other.modifier[28].specs.bullet == "EXP"
	{
		instance_create_depth(x, y, -9, obj_explosion_mini)
	}
	current_bleed = var_current_bleed
	armor_condition = temp_condition
	
	show_debug_message("TEST HIT")
	delay = true
}
