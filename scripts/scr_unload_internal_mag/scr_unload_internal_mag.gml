
function unload_internal_mag(_gun, _bullet)
{
	
//show_debug_message("gun right click")
			if global.left_hand_item == _gun && (global.right_hand_item == noone || global.right_hand_item == _bullet) && hand_ammo[0] > 0 
			{
				var extracted_arr = left_modifiers[38]
				if left_modifiers[27] == 1
				{
					audio_play_sound(snd_unload_bullet, 1, 0)
					
					if hand_ammo[0] == 0
					{
						selected_chamber[0] = false
					}
					if global.right_hand_item == noone
					{
						global.right_hand_item = extracted_arr[array_length(left_modifiers[38])-1]
						array_delete(left_modifiers[38], array_length(left_modifiers[38])-1, 1)
						global.right_hand_amount = 1
						hand_ammo[0] -= 1
						right_modifiers = array_create(modifier_amount, 0)
						selected_ammo[1] = 0
					selected_array[1] = 0
					selected_mod[1] = 0
					selected_mag[1] = 0
					}
					else if global.right_hand_item == extracted_arr[array_length(left_modifiers[38])-1]
					{
						array_delete(left_modifiers[38], array_length(left_modifiers[38])-1, 1)
						global.right_hand_amount += 1
						hand_ammo[0] -= 1
						selected_ammo[1] = 0
					selected_array[1] = 0
					selected_mod[1] = 0
					selected_mag[1] = 0
					}
				} else
				{
					with(instance_create_depth(0, 0, -9, obj_temporary_notification))
					{
						notification = "Gun not open"
					}
				}
			}
			if global.right_hand_item == _gun && (global.left_hand_item == noone || global.left_hand_item == _bullet) && hand_ammo[1] > 0 
			{
				var extracted_arr = right_modifiers[38]
				if right_modifiers[27] == 1
				{
					audio_play_sound(snd_unload_bullet, 1, 0)
					
					if global.left_hand_item == noone
					{
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
						hand_ammo[1] -= 1
						array_delete(right_modifiers[38], array_length(right_modifiers[38])-1, 1)
						global.left_hand_amount += 1
						selected_ammo[0] = 0
					selected_array[0] = 0
					selected_mod[0] = 0
					selected_mag[0] = 0
					}
				} else
				{
					with(instance_create_depth(0, 0, -9, obj_temporary_notification))
					{
						notification = "Gun not open"
					}
				}
			}
}