function mag_release(_gun, _mag)
{
	if (global.left_hand_item == _gun && global.right_hand_item == noone) || (global.right_hand_item == _gun && global.left_hand_item == noone)
	{
		
		show_debug_message("mag release")
		if global.right_hand_item == noone && left_modifiers[11] != 0
		{
			audio_play_sound(snd_small_mag_remove, 1, 0)
			global.right_hand_item = left_modifiers[36]
			
			obj_item_manager.selected_array[1] = left_modifiers[36]
			left_modifiers[36] = 0
			if selected_chamber[0] == false
			{
						global.right_hand_amount = 1
				hand_ammo[1] = hand_ammo[0]
				hand_ammo[0] = 0
				selected_ammo[1] = array_create(0, 0)
				selected_mag[0] = noone
				selected_mag[1] = noone
				selected_mod[1] = array_create(modifier_amount, 0)
				right_modifiers = array_create(modifier_amount, 0)
				right_modifiers[38] = left_modifiers[38]
				left_modifiers[38] = array_create(0, 0)
				right_modifiers[10] = left_modifiers[11]
				left_modifiers[11] = 0
				right_modifiers[41] = left_modifiers[41]
						
			} else
			{
				
				global.right_hand_amount = 1
				hand_ammo[1] = hand_ammo[0] - 1
				hand_ammo[0] = 1
				selected_ammo[1] = array_create(0, 0)
				selected_mag[0] = noone
				selected_mag[1] = noone
				selected_mod[1] = array_create(modifier_amount, 0)
				right_modifiers = array_create(modifier_amount, 0)
				var copied_arr = left_modifiers[38]
				array_delete(copied_arr, array_length(copied_arr), 1)
				right_modifiers[38] = copied_arr
				var extracted_arr = left_modifiers[38]
				left_modifiers[38] = array_create(1, extracted_arr[array_length(left_modifiers[38])-1])
				right_modifiers[10] = left_modifiers[11]
				left_modifiers[11] = 0
				right_modifiers[41] = left_modifiers[41]
			}
				
			} else if global.left_hand_item == noone && right_modifiers[11] != 0
			{
				audio_play_sound(snd_small_mag_remove, 1, 0)
				global.left_hand_item = right_modifiers[36] 
				
				obj_item_manager.selected_array[0] = right_modifiers[36]
				right_modifiers[36] = 0
				if selected_chamber[1] == false
				{
					
					global.left_hand_amount = 1
					hand_ammo[0] = hand_ammo[1]
					hand_ammo[1] = 0
					selected_ammo[0] = array_create(0, 0)
					selected_mag[1] = noone
					selected_mag[0] = noone
					selected_mod[0] = array_create(modifier_amount, 0)
					left_modifiers = array_create(modifier_amount, 0)
					left_modifiers[38] = right_modifiers[38]
					right_modifiers[38] = array_create(0, 0)
					left_modifiers[10] = right_modifiers[11]
					right_modifiers[11] = 0
					left_modifiers[41] = right_modifiers[41]
				} else
				{
					
					global.left_hand_amount = 1
					hand_ammo[0] = hand_ammo[1] - 1
					hand_ammo[1] = 1
					selected_ammo[0] = array_create(0, 0)
					selected_mag[1] = noone
					selected_mag[0] = noone
					selected_mod[0] = array_create(modifier_amount, 0)
					left_modifiers = array_create(modifier_amount, 0)
					var copied_arr = right_modifiers[38]
					array_delete(copied_arr, array_length(copied_arr)-1, 1)
					left_modifiers[38] = copied_arr
					var extracted_arr = right_modifiers[38]
					right_modifiers[38] = array_create(1, extracted_arr[array_length(right_modifiers[38])-1])
					left_modifiers[10] = right_modifiers[11]
					right_modifiers[11] = 0
					left_modifiers[41] = right_modifiers[41]
						
				}
			}
		}
}