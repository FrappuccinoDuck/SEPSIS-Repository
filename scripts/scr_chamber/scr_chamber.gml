function chamber(_gun, _shell)
{
	if audio_is_playing(_gun.weapon.chamber_sound) == false
	{
				show_debug_message("chambered")
				if global.left_hand_item == _gun //&& hand_ammo[0] > 0
				{
					if left_modifiers[26] == "Break-Action"
					{
						if left_modifiers[27] == 0
						{
							left_modifiers[27] = 1
							show_debug_message("Open")
							left_modifiers[25] = "Not"
					
							
							if _shell != noone
							{
								for(var i = 0; i < left_modifiers[31]; i++)
								{
									instance_create_layer(obj_player.x+random_range(-4, 4), obj_player.y+random_range(-10, 10), "Instances", _shell.obj)
									show_debug_message(_shell)
								}
							}
							audio_play_sound(_gun.weapon.chamber_sound, 1, 0)
						} else if left_modifiers[27] == 1
						{
							left_modifiers[31] = 0
							show_debug_message("Close")
							audio_play_sound(snd_close_shotgun, 1, 0)
							left_modifiers[27] = 0
							if hand_ammo[0] > 0
							{
								selected_chamber[0] = true
							}
						}
						
					} else
					{
						audio_play_sound(_gun.weapon.chamber_sound, 1, 0)
						if hand_ammo[0] > 0
						{
							//audio_play_sound(_gun.weapon.chamber_sound, 1, 0)
							if selected_chamber[0] == false
							{
								selected_chamber[0] = true
							} else
							{
								if global.left_hand_item.specs.bullet != "Capacitor"
								{
									hand_ammo[0] -= 1
									var copied_arr = left_modifiers[38]
									instance_create_layer(obj_player.x+random_range(-4, 4), obj_player.y+random_range(-10, 10), "Instances", copied_arr[array_length(copied_arr)-1].obj)
									array_delete(left_modifiers[38], array_length(left_modifiers[38])-1, 1)
								}
							}
							left_modifiers[25] = "Not"
							left_modifiers[42] = "Not"
						}
					}
					
				} else if global.right_hand_item == _gun /// && hand_ammo[1] > 0
				{
					if right_modifiers[26] == "Break-Action"
					{
						if right_modifiers[27] == 0
						{
							right_modifiers[27] = 1
							show_debug_message("Open")
							audio_play_sound(_gun.weapon.chamber_sound, 1, 0)
							right_modifiers[25] = "Not"
							
							if _shell != noone
							{
								for(var i = 0; i < right_modifiers[31]; i++)
								{
									instance_create_layer(obj_player.x+random_range(-4, 4), obj_player.y+random_range(-10, 10), "Instances", _shell.obj)
								}
							}
							audio_play_sound(_gun.weapon.chamber_sound, 1, 0)
						} else if right_modifiers[27] == 1
						{
							right_modifiers[31] = 0
							show_debug_message("Close")
							audio_play_sound(snd_close_shotgun, 1, 0)
							right_modifiers[27] = 0
							if hand_ammo[1] > 0
							{
								selected_chamber[1] = true
							}
						}
					} else
					{
						audio_play_sound(_gun.weapon.chamber_sound, 1, 0)
						if hand_ammo[1] > 0
						{
							//audio_play_sound(_gun.weapon.chamber_sound, 1, 0)
							if selected_chamber[1] == false
							{
								selected_chamber[1] = true
							} else
							{
								if global.right_hand_item.specs.bullet != "Capacitor"
								{
									hand_ammo[1] -= 1
									var copied_arr = right_modifiers[38]
									instance_create_layer(obj_player.x+random_range(-4, 4), obj_player.y+random_range(-10, 10), "Instances", copied_arr[array_length(copied_arr)-1].obj)
									array_delete(right_modifiers[38], array_length(right_modifiers[38])-1, 1)
								}
							}
							right_modifiers[25] = "Not"
							right_modifiers[42] = "Not"
							/*if right_modifiers[26] == "Bolt-Action"
							{
								instance_create_layer(obj_player.x+random_range(-4, 4), obj_player.y+random_range(-10, 10), "Instances", _shell.obj)
							}*/
						}
					}
				}
				weapon_degradation_chamber(_gun)
			
			/*if (global.left_hand_item == _gun && global.right_hand_item != noone) || (global.right_hand_item == _gun && global.left_hand_item != noone)
			{
				with(instance_create_depth(0, 0, -9, obj_temporary_notification))
				{
					notification = "One hand must be empty to chamber"
				}
			}*/
		}
}