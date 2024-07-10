function load_bullet(_bullet_obj, _bullet_type)
{
	if global.left_hand_item == _bullet_obj && global.right_hand_item != noone && global.right_hand_item.specs.bullet == _bullet_type && hand_ammo[1] < right_modifiers[10] && first_click == 1
	{
		if right_modifiers[26] == "Break-Action"
		{
			
			if right_modifiers[27] == 1
			{
				audio_play_sound(snd_load_bullet, 1, 0)
				hand_ammo[1] += 1
				global.left_hand_amount -= 1
				array_push(right_modifiers[38], _bullet_obj)
				if global.left_hand_amount == 0
				{
					global.left_hand_item = noone
					hand_ammo[0] = 0
				}
			} else
			{
				with(instance_create_depth(0, 0, -9, obj_temporary_notification))
				{
					notification = "Gun not open"
				}
			}
		} else
		{
			audio_play_sound(snd_load_bullet, 1, 0)
			hand_ammo[1] += 1	
			array_push(right_modifiers[38], _bullet_obj)
			global.left_hand_amount -= 1
			if global.left_hand_amount == 0
			{
				global.left_hand_item = noone
				hand_ammo[0] = 0
			}
		}
	}
	if global.right_hand_item == _bullet_obj && global.left_hand_item != noone && global.left_hand_item.specs.bullet == _bullet_type && hand_ammo[0] < left_modifiers[10] && first_click == 1
	{
		show_debug_message("Test")
		if left_modifiers[26] == "Break-Action"
		{
			
			if left_modifiers[27] == 1
			{
				audio_play_sound(snd_load_bullet, 1, 0)
				hand_ammo[0] += 1
				array_push(left_modifiers[38], _bullet_obj)
				global.right_hand_amount -= 1
				if global.right_hand_amount == 0
				{
					global.right_hand_item = noone
					hand_ammo[1] = 0
				}
			} else
			{
				with(instance_create_depth(0, 0, -9, obj_temporary_notification))
				{
					notification = "Gun not open"
				}
			}
		} else
		{
			audio_play_sound(snd_load_bullet, 1, 0)
			hand_ammo[0] += 1	
			array_push(left_modifiers[38], _bullet_obj)
			global.right_hand_amount -= 1
			if global.right_hand_amount == 0
			{
				global.right_hand_item = noone
				hand_ammo[1] = 0
			}
		}
	}
}