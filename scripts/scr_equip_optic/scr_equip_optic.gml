function equip_optic(_optic)
{
	if (global.left_hand_item == _optic && global.right_hand_item.specs.item_type == "Firearm" && global.right_hand_item.weapon.scopes == true && global.left_hand_item.specs.item_type == "Scope") || (global.left_hand_item == _optic && global.right_hand_item.specs.item_type == "Firearm" && global.right_hand_item.weapon.sights == true && global.left_hand_item.specs.item_type == "Sight")
	{
		global.left_hand_item = noone
		
		right_modifiers[15] = _optic
		right_modifiers[21] = left_modifiers[9]- random_range(0.1, 0.5)
		audio_play_sound(snd_optic, 1, 0)
		global.left_hand_amount -= 1
	}
	if (global.right_hand_item == _optic && global.left_hand_item.specs.item_type == "Firearm" && global.left_hand_item.weapon.scopes == true && global.right_hand_item.specs.item_type == "Scope") || (global.right_hand_item == _optic && global.left_hand_item.specs.item_type == "Firearm" && global.left_hand_item.weapon.sights == true && global.right_hand_item.specs.item_type == "Sight")
	{
		global.right_hand_item = noone
		
		left_modifiers[15] = _optic
		left_modifiers[21] = right_modifiers[9]- random_range(0.1, 0.5)
		audio_play_sound(snd_optic, 1, 0)
		global.right_hand_amount -= 1
	}
	
	
}