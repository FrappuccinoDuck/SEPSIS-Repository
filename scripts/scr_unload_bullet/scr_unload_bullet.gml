
function unload_bullet(_mag, _bullet)
{
	
//show_debug_message("mag right click")
			if global.left_hand_item == _mag && hand_ammo[0] > 0
			{
				
				var extracted_arr = left_modifiers[38]
				
				
				
				if global.right_hand_item == noone
				{
					audio_play_sound(snd_unload_bullet, 1, 0)
					global.right_hand_item = extracted_arr[array_length(left_modifiers[38])-1]
					array_delete(left_modifiers[38], array_length(left_modifiers[38])-1, 1)
					global.right_hand_amount = 1
					hand_ammo[0] -= 1
					selected_ammo[1] = 0
					selected_array[1] = 0
					selected_mod[1] = 0
					selected_mag[1] = 0
					right_modifiers = array_create(modifier_amount, 0)
				}
				else if global.right_hand_item == extracted_arr[array_length(left_modifiers[38])-1]
				{
					audio_play_sound(snd_unload_bullet, 1, 0)
					array_delete(left_modifiers[38], array_length(left_modifiers[38])-1, 1)
					global.right_hand_amount += 1
					hand_ammo[0] -= 1
					selected_ammo[1] = 0
					selected_array[1] = 0
					selected_mod[1] = 0
					selected_mag[1] = 0
				}
			}
			if global.right_hand_item == _mag && hand_ammo[1] > 0
			{
				var extracted_arr = right_modifiers[38]
				
				
				if global.left_hand_item == noone
				{
					audio_play_sound(snd_unload_bullet, 1, 0)
					hand_ammo[1] -= 1
					global.left_hand_item = extracted_arr[array_length(right_modifiers[38])-1]
					array_delete(right_modifiers[38], array_length(right_modifiers[38])-1, 1)
					global.left_hand_amount = 1
					
					left_modifiers = array_create(modifier_amount, 0)
					selected_ammo[0] = 0
					selected_array[0] = 0
					selected_mod[0] = 0
					selected_mag[0] = 0
				}
				else if global.left_hand_item == extracted_arr[array_length(right_modifiers[38])-1]
				{
					audio_play_sound(snd_unload_bullet, 1, 0)
					hand_ammo[1] -= 1
					array_delete(right_modifiers[38], array_length(right_modifiers[38])-1, 1)
					global.left_hand_amount += 1
					selected_ammo[0] = 0
					selected_array[0] = 0
					selected_mod[0] = 0
					selected_mag[0] = 0
					
				}
			}
}