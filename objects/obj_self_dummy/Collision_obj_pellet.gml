randomize()
var chance_hit = irandom(100)
var bleed_chance = irandom(100)
var one_or_other = irandom(1)
var characteristics = other.modifier[28]

shot_at = true

instance_destroy(other)

with(obj_health_tangible)
{
	if chance_hit >= 0 && chance_hit <= 40 && index == 1 && (( global.torso_wear != noone && characteristics.specs.bullet_stats.light_pen >= global.torso_wear.armor.protection) || (global.torso_wear == noone))
	{
		show_debug_message("TORSO")
		open_wound = true
		open_wound_amount += irandom_range(1, characteristics.specs.bullet_stats.wound_amount)
		bleeding = true
		
		check_stopping_power(characteristics, 1)
		
		
		// Torso
		if bleed_chance >= 0 && bleed_chance <= 10
		{
			bleed_amount += 1
		}
		if bleed_chance > 10 && bleed_chance <= 25
		{
			bleed_amount += 2
		}
		if bleed_chance > 25 && bleed_chance <= 50
		{
			bleed_amount += 3
		}
		if bleed_chance > 50 && bleed_chance <= 80
		{
			bleed_amount += 4
		}
		if bleed_chance > 80 && bleed_chance <= 100
		{
			bleed_amount = 5
		}
		if bleed_amount > 5
				{
					bleed_amount = 5
				}
	} else if chance_hit > 40 && chance_hit <= 65 && ((global.left_leg_wear != noone && characteristics.specs.bullet_stats.light_pen >= global.left_leg_wear.armor.protection) || (global.left_leg_wear == noone))
	{
		if (one_or_other == 0 && index == 4) || (one_or_other == 1 && index == 8)
		{
			check_stopping_power(characteristics, 3)
			show_debug_message("LEG")
			open_wound = true
			open_wound_amount += irandom_range(1, characteristics.specs.bullet_stats.wound_amount)
			bleeding = true
				if bleed_chance >= 0 && bleed_chance <= 15
				{
					bleed_amount += 1
				}
				if bleed_chance > 15 && bleed_chance <= 40
				{
					bleed_amount += 2
				}
				if bleed_chance > 40 && bleed_chance <= 70
				{
					bleed_amount += 3
				}
				if bleed_chance > 70 && bleed_chance <= 90
				{
					bleed_amount += 4
				}
				if bleed_chance > 90 && bleed_chance <= 100
				{
					bleed_amount = 5
				}
				if bleed_amount > 5
				{
					bleed_amount = 5
				}
		}
		// Legs
	} else if chance_hit > 65 && chance_hit <= 85 && ((global.torso_wear != noone && characteristics.specs.bullet_stats.light_pen >= global.torso_wear.armor.protection) || (global.torso_wear == noone))
	{
	
		// Arms
		if (one_or_other == 0 && index == 2) || (one_or_other == 1 && index == 6)
		{
			check_stopping_power(characteristics, 2)
			show_debug_message("ARMS")
			open_wound = true
			open_wound_amount += irandom_range(1, characteristics.specs.bullet_stats.wound_amount)
			bleeding = true
			if bleed_chance >= 0 && bleed_chance <= 20
				{
					bleed_amount += 1
				}
				if bleed_chance > 20 && bleed_chance <= 50
				{
					bleed_amount += 2
				}
				if bleed_chance > 50 && bleed_chance <= 75
				{
					bleed_amount += 3
				}
				if bleed_chance > 75 && bleed_chance <= 90
				{
					bleed_amount += 4
				}
				if bleed_chance > 90 && bleed_chance <= 100
				{
					bleed_amount = 5
				}
				if bleed_amount > 5
				{
					bleed_amount = 5
				}
		} 
	} else if chance_hit > 85 && chance_hit <= 95 && index == 0 && ((global.top_head_wear != noone && characteristics.specs.bullet_stats.light_pen >= global.top_head_wear.armor.protection ) || (global.top_head_wear == noone))
	{
		check_stopping_power(characteristics, 0)
		show_debug_message("HEAD")
		open_wound = true
		open_wound_amount += irandom_range(1, characteristics.specs.bullet_stats.wound_amount)
		bleeding = true
		// Head
		if bleed_chance >= 0 && bleed_chance <= 10
		{
			bleed_amount += 1
		}
		if bleed_chance > 10 && bleed_chance <= 25
		{
			bleed_amount += 2
		}
		if bleed_chance > 25 && bleed_chance <= 50
		{
			bleed_amount += 3
		}
		if bleed_chance > 50 && bleed_chance <= 75
		{
			bleed_amount += 4
		}
		if bleed_chance > 75 && bleed_chance <= 100
		{
			bleed_amount = 5
		}
		if bleed_amount > 5
				{
					bleed_amount = 5
				}
	} else if chance_hit > 95 && chance_hit <= 98  
	{ 
		if ((global.left_hand_wear != noone && characteristics.specs.bullet_stats.light_pen >= global.left_hand_wear.armor.protection) || (global.left_hand_wear == noone)) || ((global.right_hand_wear != noone && characteristics.specs.bullet_stats.light_pen >= global.right_hand_wear.armor.protection ) || (global.right_hand_wear == noone))
		{
			check_stopping_power(characteristics, 4)
			if (one_or_other == 0 && index == 3) || (one_or_other == 1 && index == 7)
			{
				show_debug_message("HAND")
				open_wound = true
				open_wound_amount += irandom_range(1, characteristics.specs.bullet_stats.wound_amount)
				bleeding = true
				// Hands 
				if bleed_chance >= 0 && bleed_chance <= 40
				{
					bleed_amount += 1
				}
				if bleed_chance > 40 && bleed_chance <= 70
				{
					bleed_amount += 2
				}
				if bleed_chance > 70 && bleed_chance <= 90
				{
					bleed_amount += 3
				}
				if bleed_chance > 90 && bleed_chance <= 99
				{
					bleed_amount += 4
				}
				if bleed_chance > 99 && bleed_chance <= 100
				{
					bleed_amount = 5
				}
				if bleed_amount > 5
				{
					bleed_amount = 5
				}
			}
		}
	}
	else if chance_hit > 98 && chance_hit <= 100 
	{ 
		if ((global.left_foot_wear != noone && characteristics.specs.bullet_stats.light_pen >= global.left_foot_wear.armor.protection) || (global.left_foot_wear == noone)) || ((global.right_foot_wear != noone && characteristics.specs.bullet_stats.light_pen >= global.right_foot_wear.armor.protection) || (global.right_foot_wear == noone))
		{
			check_stopping_power(characteristics, 4)
			if (one_or_other == 0 && index == 5) || (one_or_other == 1 && index == 9)
			{
				show_debug_message("FOOT")
				open_wound = true
				open_wound_amount += irandom_range(1, characteristics.specs.bullet_stats.wound_amount)
				bleeding = true
				// Hands & Feet	
				if bleed_chance >= 0 && bleed_chance <= 40
				{
					bleed_amount += 1
				}
				if bleed_chance > 40 && bleed_chance <= 70
				{
					bleed_amount += 2
				}
				if bleed_chance > 70 && bleed_chance <= 90
				{
					bleed_amount += 3
				}
				if bleed_chance > 90 && bleed_chance <= 99
				{
					bleed_amount += 4
				}
				if bleed_chance > 99 && bleed_chance <= 100
				{
					bleed_amount = 5
				}
				if bleed_amount > 5
				{
					bleed_amount = 5
				}
			}
		}
	}
}

//layer_set_visible("Effect_3", false)
