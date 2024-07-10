function equip_laser(_optic){
	if (global.left_hand_item == _optic && global.right_hand_item.specs.item_type == "Firearm" && global.right_hand_item.weapon.underbarrel == true && global.left_hand_item.specs.item_type == "Underbarrel") || (global.left_hand_item == _optic && global.right_hand_item.specs.item_type == "Firearm" && global.right_hand_item.weapon.underbarrel == true && global.left_hand_item.specs.item_type == "Underbarrel")
	{
		global.left_hand_item = noone
		
		right_modifiers[29] = _optic
		right_modifiers[30] = left_modifiers[9]- random_range(0.1, 0.5)
		global.left_hand_amount -= 1
		
	}
	if (global.right_hand_item == _optic && global.left_hand_item.specs.item_type == "Firearm" && global.left_hand_item.weapon.underbarrel == true && global.right_hand_item.specs.item_type == "Underbarrel") || (global.right_hand_item == _optic && global.left_hand_item.specs.item_type == "Firearm" && global.left_hand_item.weapon.underbarrel == true && global.right_hand_item.specs.item_type == "Underbarrel")
	{
		global.right_hand_item = noone
		
		left_modifiers[29] = _optic
		left_modifiers[30] = right_modifiers[9]- random_range(0.1, 0.5)
		global.right_hand_amount -= 1
	}
}