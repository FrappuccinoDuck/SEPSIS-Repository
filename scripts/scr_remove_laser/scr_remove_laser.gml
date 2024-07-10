function remove_laser(){
	if global.left_hand_item == noone && global.right_hand_item.specs.item_type == "Firearm" && right_modifiers[29] != 0
	{
		scope_degradation()
		global.left_hand_item = right_modifiers[29]
		left_modifiers[9] = right_modifiers[30]
		
		right_modifiers[29] = 0
		right_modifiers[30] = 0
		global.left_hand_amount += 1
	}
	if global.right_hand_item == noone && global.left_hand_item.specs.item_type == "Firearm" && left_modifiers[29] != 0
	{
		scope_degradation()
		global.right_hand_item = left_modifiers[29]
		right_modifiers[9] = left_modifiers[30]
		
		left_modifiers[29] = 0
		left_modifiers[30] = 0
		global.right_hand_amount += 1
	}

}