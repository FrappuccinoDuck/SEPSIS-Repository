function speedload(_gun, _mag)
{
	
	if global.right_hand_item == _gun && right_modifiers[27] == 1 
	{
		if hand_ammo[1] == 0
		{
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