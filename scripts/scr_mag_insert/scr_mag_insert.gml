function mag_insert(_gun, _mag)
{
	
	if global.right_hand_item == _gun && right_modifiers[11] == 0
	{
		if right_modifiers[26] == "Break-Action"
		{
			if right_modifiers[27] == 1
			{
				right_modifiers[38] = array_create(0, 0)
				for(var k = 0; k < array_length(left_modifiers[38]); k++)
				{
					var extracted = left_modifiers[38]
					array_push(right_modifiers[38], extracted[k])
				}
				left_modifiers[38] = 0
				
				audio_play_sound(snd_small_mag_insert, 1, 0)
				hand_ammo[1] += hand_ammo[0]
				global.left_hand_item = noone
				hand_ammo[0] = 0
				selected_mag[1] = _mag.obj
				selected_mod[0] = noone
				global.left_hand_amount -= 1
				right_modifiers[11] = left_modifiers[10]
			} else
			{
				with(instance_create_depth(0, 0, -9, obj_temporary_notification))
				{
					notification = "Bolt not open"
				}
			}
		} else
		{
			right_modifiers[38] = array_create(0, 0)
			for(var k = 0; k < array_length(left_modifiers[38]); k++)
			{
				var extracted = left_modifiers[38]
				array_push(right_modifiers[38], extracted[k])
			}
			//right_modifiers[38] = left_modifiers[38]
			left_modifiers[38] = 0
			audio_play_sound(snd_small_mag_insert, 1, 0)
			hand_ammo[1] += hand_ammo[0]
			global.left_hand_item = noone
			hand_ammo[0] = 0
			selected_mag[1] = _mag.obj
			selected_mod[0] = noone
			global.left_hand_amount -= 1
			right_modifiers[11] = left_modifiers[10]
			right_modifiers[36] = _mag
		}
	}
	if global.left_hand_item == _gun && left_modifiers[11] == 0
	{
		if left_modifiers[26] == "Break-Action"
		{
			if left_modifiers[27] == 1
			{
				left_modifiers[38] = array_create(0, 0)
				for(var k = 0; k < array_length(right_modifiers[38]); k++)
				{
					var extracted = right_modifiers[38]
					array_push(left_modifiers[38], extracted[k])
				}
				right_modifiers[38] = 0
				
				audio_play_sound(snd_small_mag_insert, 1, 0)
				hand_ammo[0] += hand_ammo[1]
				global.right_hand_item = noone
				hand_ammo[1] = 0
				selected_mag[0] = _mag.obj
				selected_mod[1] = noone
				global.right_hand_amount -= 1
				left_modifiers[11] = right_modifiers[10]
			} else
			{
				with(instance_create_depth(0, 0, -9, obj_temporary_notification))
				{
					notification = "Bolt not open"
				}
			}
		} else
		{
			left_modifiers[38] = array_create(0, 0)
			for(var k = 0; k < array_length(right_modifiers[38]); k++)
			{
				var extracted = right_modifiers[38]
				array_push(left_modifiers[38], extracted[k])
			}
			//left_modifiers[38] = right_modifiers[38]
			right_modifiers[38] = 0
			audio_play_sound(snd_small_mag_insert, 1, 0)
			hand_ammo[0] += hand_ammo[1]
			global.right_hand_item = noone
			hand_ammo[1] = 0
			selected_mag[0] = _mag.obj
			selected_mod[1] = noone
			global.right_hand_amount -= 1
			left_modifiers[11] = right_modifiers[10]
			left_modifiers[36] = _mag
		}
	}
}