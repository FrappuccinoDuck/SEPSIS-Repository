function ammo_check(){
	with instance_create_depth(x, y, -9, obj_temporary_notification)
	{
		if obj_item_manager.using_hand == 0
		{
			if obj_item_manager.left_modifiers[41] == 1
			{
				notification = string($"{obj_item_manager.hand_ammo[0]} rounds left")
			} else
			{
				if obj_item_manager.hand_ammo[0] == 0
				{
					notification = "Empty Magazine"
				}
				if obj_item_manager.hand_ammo[0] > 0 && obj_item_manager.hand_ammo[0] <= obj_item_manager.left_modifiers[11]*(1/4)
				{
					notification = "About 1/4 left"
				}
				if obj_item_manager.hand_ammo[0] > obj_item_manager.left_modifiers[11]*(1/4) && obj_item_manager.hand_ammo[0] <= obj_item_manager.left_modifiers[11]*(1/2)
				{
					notification = "About 1/2 left"
				}
				if obj_item_manager.hand_ammo[0] > obj_item_manager.left_modifiers[11]*(1/2) && obj_item_manager.hand_ammo[0] <= obj_item_manager.left_modifiers[11]*(3/4)
				{
					notification = "About 3/4 left"
				}
				if obj_item_manager.hand_ammo[0] > obj_item_manager.left_modifiers[11]*(3/4) && obj_item_manager.hand_ammo[0] < obj_item_manager.left_modifiers[11]
				{
					notification = "Almost full"
				}
				if obj_item_manager.hand_ammo[0] == obj_item_manager.left_modifiers[11]
				{
					notification = "Full Magazine"
				}
			}
		} else
		{
		
		}
	}
}