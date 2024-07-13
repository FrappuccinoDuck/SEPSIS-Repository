function speedload(_gun, _mag)
{
	
	if global.right_hand_item == _gun && right_modifiers[27] == 1 
	{
		if hand_ammo[1] == 0
		{

				for(var k = 0; k < array_length(left_modifiers[38]); k++)
				{
					var extracted = left_modifiers[38]
					array_push(right_modifiers[38], extracted[k])
				}
				left_modifiers[38] = 0
			audio_play_sound(snd_small_mag_insert, 1, 0)
			hand_ammo[1] += hand_ammo[0]
			hand_ammo[0] = 0
		} else
		{
			with(instance_create_depth(0, 0, -9, obj_temporary_notification))
			{
				notification = "Revolver not empty"
			}
		}
	} else
	{
		with(instance_create_depth(0, 0, -9, obj_temporary_notification))
		{
			notification = "Revolver not open"
		}
	}
	if global.left_hand_item == _gun && left_modifiers[27] == 1 
	{
		if hand_ammo[0] == 0
		{
				for(var k = 0; k < array_length(right_modifiers[38]); k++)
				{
					var extracted = right_modifiers[38]
					array_push(left_modifiers[38], extracted[k])
				}
				right_modifiers[38] = 0
			audio_play_sound(snd_small_mag_insert, 1, 0)
			hand_ammo[0] += hand_ammo[1]
			hand_ammo[1] = 0
		} else
		{
			with(instance_create_depth(0, 0, -9, obj_temporary_notification))
			{
				notification = "Revolver not empty"
			}
		}
	} else
	{
		with(instance_create_depth(0, 0, -9, obj_temporary_notification))
		{
			notification = "Revolver not open"
		}
	}
}