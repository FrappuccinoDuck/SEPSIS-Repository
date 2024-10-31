function load_bullet_from_box(_box_obj, _bullet_obj, _bullet_type, _hold_click)
{
	if global.left_hand_item == _box_obj && global.right_hand_item != noone && (global.right_hand_item.specs.bullet == _bullet_type || global.right_hand_item == _box_obj) && hand_ammo[1] < right_modifiers[10] && hand_ammo[0] > 0
	{
		var _extracted = left_modifiers[38]
		if right_modifiers[26] == "Break-Action"
		{
			
			if right_modifiers[27] == 1
			{
				audio_play_sound(snd_load_bullet, 1, 0)
				hand_ammo[1] += 1
				hand_ammo[0] -= 1
				array_push(right_modifiers[38], _extracted[array_length(_extracted)-1])
				array_delete(left_modifiers, array_length(left_modifiers)-1, 1)
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
			hand_ammo[0] -= 1
			array_push(right_modifiers[38], _extracted[array_length(_extracted)-1])
			array_delete(left_modifiers, array_length(left_modifiers)-1, 1)
			show_debug_message("WORK")
		}
	}
	if global.right_hand_item == _box_obj && global.left_hand_item != noone && (global.left_hand_item.specs.bullet == _bullet_type || global.left_hand_item == _box_obj) && hand_ammo[0] < left_modifiers[10] && hand_ammo[1] > 0
	{
		var _extracted = right_modifiers[38]
		show_debug_message("Test")
		if left_modifiers[26] == "Break-Action"
		{
			
			if left_modifiers[27] == 1
			{
				audio_play_sound(snd_load_bullet, 1, 0)
				hand_ammo[0] += 1
				hand_ammo[1] -= 1
				array_push(left_modifiers[38], _extracted[array_length(_extracted)-1])
				array_delete(right_modifiers, array_length(right_modifiers)-1, 1)
				
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
			hand_ammo[1] -= 1
			array_push(left_modifiers[38], _extracted[array_length(_extracted)-1])
				array_delete(right_modifiers, array_length(right_modifiers)-1, 1)
			show_debug_message("WORK")
		}
	}
}