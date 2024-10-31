function toggle_underbarrel(){
	audio_play_sound(snd_switch_firing_mode, 1, 0)
	if obj_item_manager.using_hand == 0
	{
		if obj_item_manager.left_modifiers[34] == 0
		{
			obj_item_manager.left_modifiers[34] = true
		} else
		{
			obj_item_manager.left_modifiers[34] = !obj_item_manager.left_modifiers[34]
		}
	} else
	{
		if obj_item_manager.right_modifiers[34] == 0
		{
			obj_item_manager.right_modifiers[34] = true
		} else
		{
			obj_item_manager.right_modifiers[34] = !obj_item_manager.right_modifiers[34]
		}
	}
}