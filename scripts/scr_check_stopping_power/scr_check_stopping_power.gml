function check_stopping_power(_characteristics, _part){
	if obj_item_manager.using_hand == 0 
		{
			if global.left_hand_item != noone
			{
				if global.left_hand_item.specs.item_type == "Firearm"
				{
					if global.left_hand_item.weapon.damage + _characteristics.specs.bullet_stats.bullet_stop_power == obj_player.part_threshold[_part]
					{
						return show_debug_message("Incapacitated")
					}
					if global.left_hand_item.weapon.damage + _characteristics.specs.bullet_stats.bullet_stop_power > obj_player.part_threshold[_part]
					{
						return show_debug_message("Overkill")
					}
					if global.left_hand_item.weapon.damage + _characteristics.specs.bullet_stats.bullet_stop_power < obj_player.part_threshold[_part]
					{
						return show_debug_message("Injured")
					}
				} else
				{
					if _characteristics.specs.bullet_stats.bullet_stop_power == obj_player.part_threshold[_part]
					{
						return show_debug_message("Incapacitated")
					}
					if _characteristics.specs.bullet_stats.bullet_stop_power > obj_player.part_threshold[_part]
					{
						return show_debug_message("Overkill")
					}
					if _characteristics.specs.bullet_stats.bullet_stop_power < obj_player.part_threshold[_part]
					{
						return show_debug_message("Injured")
					}
				}
			} else
			{
				if _characteristics.specs.bullet_stats.bullet_stop_power == obj_player.part_threshold[_part]
					{
						return show_debug_message("Incapacitated")
					}
					if _characteristics.specs.bullet_stats.bullet_stop_power > obj_player.part_threshold[_part]
					{
						return show_debug_message("Overkill")
					}
					if _characteristics.specs.bullet_stats.bullet_stop_power < obj_player.part_threshold[_part]
					{
						return show_debug_message("Injured")
					}
			}
		} else
		{
			if global.right_hand_item != noone
			{
				if global.right_hand_item.specs.item_type == "Firearm"
				{
					if global.right_hand_item.weapon.damage + _characteristics.specs.bullet_stats.bullet_stop_power == obj_player.part_threshold[_part]
					{
						return show_debug_message("Incapacitated")
					}
					if global.right_hand_item.weapon.damage + _characteristics.specs.bullet_stats.bullet_stop_power > obj_player.part_threshold[_part]
					{
						return show_debug_message("Overkill")
					}
					if global.right_hand_item.weapon.damage + _characteristics.specs.bullet_stats.bullet_stop_power < obj_player.part_threshold[_part]
					{
						return show_debug_message("Injured")
					}
				} else
				{
					if _characteristics.specs.bullet_stats.bullet_stop_power == obj_player.part_threshold[_part]
					{
						return show_debug_message("Incapacitated")
					}
					if _characteristics.specs.bullet_stats.bullet_stop_power > obj_player.part_threshold[_part]
					{
						return show_debug_message("Overkill")
					}
					if _characteristics.specs.bullet_stats.bullet_stop_power < obj_player.part_threshold[_part]
					{
						return show_debug_message("Injured")
					}
				}
			} else
			{
				if _characteristics.specs.bullet_stats.bullet_stop_power == obj_player.part_threshold[_part]
					{
						return show_debug_message("Incapacitated")
					}
					if _characteristics.specs.bullet_stats.bullet_stop_power > obj_player.part_threshold[_part]
					{
						return show_debug_message("Overkill")
					}
					if _characteristics.specs.bullet_stats.bullet_stop_power < obj_player.part_threshold[_part]
					{
						return show_debug_message("Injured")
					}
			}
		}
}