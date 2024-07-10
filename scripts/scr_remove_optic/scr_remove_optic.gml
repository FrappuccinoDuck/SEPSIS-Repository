function remove_optic()
{
	if global.left_hand_item == noone && global.right_hand_item.specs.item_type == "Firearm" && right_modifiers[15] != 0
	{
		scope_degradation()
		global.left_hand_item = right_modifiers[15]
		left_modifiers[9] = right_modifiers[21]
		
		right_modifiers[15] = 0
		right_modifiers[21] = 0
		audio_play_sound(snd_optic, 1, 0)
		global.left_hand_amount += 1
	}
	if global.right_hand_item == noone && global.left_hand_item.specs.item_type == "Firearm" && left_modifiers[15] != 0
	{
		scope_degradation()
		global.right_hand_item = left_modifiers[15]
		right_modifiers[9] = left_modifiers[21]
		
		left_modifiers[15] = 0
		left_modifiers[21] = 0
		audio_play_sound(snd_optic, 1, 0)
		global.right_hand_amount += 1
	}
}
