function hammer_back(_gun){
	audio_play_sound(snd_hammer_back, 1, 0)
	if global.left_hand_item == _gun
	{
		left_modifiers[25] = "Not"
		if hand_ammo[0] > 0 && left_modifiers[27] == 0
		{
			selected_chamber[0] = true
		}
	}
	if global.right_hand_item == _gun
	{
		right_modifiers[25] = "Not"
		if hand_ammo[1] > 0 && right_modifiers[27] == 0
		{
			selected_chamber[1] = true
		}
	}
}