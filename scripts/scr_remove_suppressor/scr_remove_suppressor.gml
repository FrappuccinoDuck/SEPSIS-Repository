function remove_suppressor(){
	if global.left_hand_item == noone && global.right_hand_item.specs.item_type == "Firearm" && right_modifiers[32] != 0
	{
		suppressor_degradation()
		global.left_hand_item = right_modifiers[32]
		left_modifiers[9] = right_modifiers[33]
		
		right_modifiers[32] = 0
		right_modifiers[33] = 0
		audio_play_sound(snd_suppressor_screw, 1, 0)
		global.left_hand_amount += 1
	}
	if global.right_hand_item == noone && global.left_hand_item.specs.item_type == "Firearm" && left_modifiers[32] != 0
	{
		suppressor_degradation()
		global.right_hand_item = left_modifiers[32]
		right_modifiers[9] = left_modifiers[33]
		
		left_modifiers[32] = 0
		left_modifiers[33] = 0
		audio_play_sound(snd_suppressor_screw, 1, 0)
		global.right_hand_amount += 1
	}

}