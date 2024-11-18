function quick_reload(){
	if obj_item_manager.using_hand == 0
	{
		if left_modifiers[26] != "Break-Action" && left_modifiers[11] != 0
		{
			audio_play_sound(snd_small_mag_remove, 1, 0)
			
			if selected_chamber[0] == false
			{
				with instance_create_depth(obj_player.x, obj_player.y, -9, left_modifiers[36].obj)
				{
					image_angle = random(360)
					ammo = obj_item_manager.hand_ammo[0]
					modifier = array_create(obj_item_manager.modifier_amount, 0)
					modifier[38] = obj_item_manager.left_modifiers[38]
					modifier[10] = obj_item_manager.left_modifiers[11]
					modifier[41] = obj_item_manager.left_modifiers[41]
				}
				selected_mag[0] = noone
				hand_ammo[0] = 0
				left_modifiers[38] = array_create(0, 0)
				left_modifiers[11] = 0
				
			} else
			{
				with instance_create_depth(obj_player.x, obj_player.y, -9, left_modifiers[36].obj)
				{
					image_angle = random(360)
					ammo = obj_item_manager.hand_ammo[0] - 1
					modifier = array_create(obj_item_manager.modifier_amount, 0)
					var copied_arr = obj_item_manager.left_modifiers[38]
					array_delete(copied_arr, array_length(copied_arr), 1)
					modifier[38] = copied_arr
					modifier[10] = obj_item_manager.left_modifiers[11]
					modifier[41] = obj_item_manager.left_modifiers[41]
				}
				selected_mag[0] = noone
				hand_ammo[0] = 1
				var extracted_arr = left_modifiers[38]
				left_modifiers[38] = array_create(1, extracted_arr[array_length(left_modifiers[38])-1])
				left_modifiers[11] = 0
			}
			left_modifiers[36] = 0
			
		}
	} else
	{
		if right_modifiers[26] != "Break-Action" && right_modifiers[11] != 0
		{
			audio_play_sound(snd_small_mag_remove, 1, 0)
			
			if selected_chamber[1] == false
			{
				with instance_create_depth(obj_player.x, obj_player.y, -9, right_modifiers[36].obj)
				{
					image_angle = random(360)
					ammo = obj_item_manager.hand_ammo[1]
					modifier = array_create(obj_item_manager.modifier_amount, 0)
					modifier[38] = obj_item_manager.right_modifiers[38]
					modifier[10] = obj_item_manager.right_modifiers[11]
					modifier[41] = obj_item_manager.right_modifiers[41]
				}
				selected_mag[1] = noone
				hand_ammo[1] = 0
				right_modifiers[38] = array_create(0, 0)
				right_modifiers[11] = 0
			} else
			{
				with instance_create_depth(obj_player.x, obj_player.y, -9, right_modifiers[36].obj)
				{
					image_angle = random(360)
					ammo = obj_item_manager.hand_ammo[1] - 1
					modifier = array_create(obj_item_manager.modifier_amount, 0)
					var copied_arr = obj_item_manager.right_modifiers[38]
					array_delete(copied_arr, array_length(copied_arr), 1)
					modifier[38] = copied_arr
					modifier[10] = obj_item_manager.right_modifiers[11]
					modifier[41] = obj_item_manager.right_modifiers[41]
				}
				selected_mag[1] = noone
				hand_ammo[1] = 1
				var extracted_arr = right_modifiers[38]
				right_modifiers[38] = array_create(1, extracted_arr[array_length(right_modifiers[38])-1])
				right_modifiers[11] = 0
			}
			right_modifiers[36] = 0
			
		}
	}
}