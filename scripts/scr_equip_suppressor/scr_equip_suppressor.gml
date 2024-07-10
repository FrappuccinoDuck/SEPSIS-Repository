function equip_suppressor(_suppressor){
	if (global.left_hand_item == _suppressor && global.right_hand_item.specs.item_type == "Firearm" && global.right_hand_item.weapon.suppressor == _suppressor && global.left_hand_item.specs.item_type == "Suppressor") || (global.left_hand_item == _suppressor && global.right_hand_item.specs.item_type == "Firearm" && global.right_hand_item.weapon.suppressor == _suppressor && global.left_hand_item.specs.item_type == "Suppressor")
	{
		global.left_hand_item = noone
		
		right_modifiers[32] = _suppressor
		right_modifiers[33] = left_modifiers[9]- random_range(0.1, 0.5)
		audio_play_sound(snd_suppressor_screw, 1, 0)
		global.left_hand_amount -= 1
	}
	if (global.right_hand_item == _suppressor && global.left_hand_item.specs.item_type == "Firearm" && global.left_hand_item.weapon.suppressor == _suppressor && global.right_hand_item.specs.item_type == "Suppressor") || (global.right_hand_item == _suppressor && global.left_hand_item.specs.item_type == "Firearm" && global.left_hand_item.weapon.underbarrel == _suppressor && global.right_hand_item.specs.item_type == "Suppressor")
	{
		global.right_hand_item = noone
		
		left_modifiers[32] = _suppressor
		left_modifiers[33] = right_modifiers[9]- random_range(0.1, 0.5)
		audio_play_sound(snd_suppressor_screw, 1, 0)
		global.right_hand_amount -= 1
	}
}