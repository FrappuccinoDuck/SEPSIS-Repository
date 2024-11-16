function part_present(_part_s, part_p, _part_n){
	if _part_s != noone
	{
		if obj_item_manager.using_hand == 0
		{
			if obj_item_manager.left_modifiers[part_p] != 0
			{
				return string($"({obj_item_manager.left_modifiers[_part_n]})%")
			} else
			{
				return "(Missing)"
			}
		} else
		{
			if obj_item_manager.right_modifiers[part_p] != 0
			{
				return string($"({obj_item_manager.right_modifiers[_part_n]})%")
			} else
			{
				return "(Missing)"
			}
		}
	} else
	{
		return "(Not a part)"
	}
}