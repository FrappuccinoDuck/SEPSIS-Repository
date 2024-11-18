global.scoped_aim_change = 10

function shoot(_gun, _bullet_type, _shell, _speed, _bolt_action)
{
	
	if check_all_parts(_gun, using_hand) == false
	{
		with(instance_create_depth(0, 0, -9, obj_temporary_notification))
		{
			notification = string($"Missing Components")
			timer_max = 10
		}
	}
	
	if (left_modifiers[27] == 1 && obj_item_manager.using_hand == 0) || (right_modifiers[27] == 1 && obj_item_manager.using_hand == 1) 
	{
		with(instance_create_depth(0, 0, -9, obj_temporary_notification))
		{
			notification = "Gun Not Closed"
		}
	}
	if (left_modifiers[25] != "Not" && obj_item_manager.using_hand == 0) || (right_modifiers[25] != "Not" && obj_item_manager.using_hand == 1) 
	{
		with(instance_create_depth(0, 0, -9, obj_temporary_notification))
		{
			notification = "Jammed (Chamber to Resolve)"
		}
	}
	
	if _bolt_action == false
	{
		burst_delay += 1
		if (global.left_hand_item == _gun && selected_chamber[0] == true) || (global.right_hand_item == _gun && selected_chamber[1] == true)
		{
			if global.left_hand_item == _gun && obj_item_manager.using_hand == 0 && obj_item_manager.selected_chamber[0] == true && left_modifiers[9] > 1 && left_modifiers[42] == "Not" && left_modifiers[25] == "Not" && check_all_parts(_gun, 0) && ((first_click >= 1 && left_modifiers[24] == 3) || (first_click == 1 && left_modifiers[24] == 1) || (fire_amount < global.left_hand_item.weapon.short_burst_amount && left_modifiers[24] == 2)) && burst_delay >= _gun.weapon.fire_rate  && !audio_is_playing(_gun.weapon.chamber_sound)
			{		
				if jam_checker(left_modifiers[9]) == true
				{
					if irandom(1) == 0
					{
						if left_modifiers[26] != "Break-Action"
						{
							left_modifiers[25] = "Is"
							with(instance_create_depth(0, 0, -9, obj_temporary_notification))
							{
								var i = irandom(2)
								if i == 0
								{
									notification = "Failure to Eject (Chamber to Resolve)"
								}
								if i == 1
								{
									notification = "Failure to Feed (Chamber to Resolve)"
								}
								if i == 2
								{
									notification = "Failure to Cycle (Chamber to Resolve)"
								}
							}
						}
					} else
					{	
						if global.left_hand_item.weapon.parts.hammer == global.item_list.single_action_hammer
						{
							left_modifiers[42] = "Is"
							with(instance_create_depth(0, 0, -9, obj_temporary_notification))
							{	
								notification = "Misfire (Cock/Chamber to Resolve)"
							}
						}
					}
				}
			
				
				weapon_degradation(_gun)
				scope_degradation()
				suppressor_degradation()
				underbarrel_degradation()
				fire_amount += 1
				layer_set_visible("gunshot_effect", true)
				//instance_create_depth(obj_player.x, obj_player.y, -9, obj_light_ball)
				burst_delay = 0
			
				hand_ammo[0] -= 1
				show_debug_message(hand_ammo[0])
				
				if global.left_hand_item == _gun
				{
					var barrel_value = left_modifiers[7]
				} else
				{
					var barrel_value = right_modifiers[7]
				}
				
				var extracted_bullet = obj_item_manager.left_modifiers[38]
				
				if extracted_bullet[array_length(extracted_bullet)-1].specs.bullet != "BIRD" && extracted_bullet[array_length(extracted_bullet)-1].specs.bullet != "BUCK"
				{
					with(instance_create_depth(obj_player.x, obj_player.y, -9, obj_pellet))
					{
						shot = true
						randomize()
						if obj_item_manager.scoped == false
						{
							direction = point_direction(obj_player.x, obj_player.y, obj_mouse.x, obj_mouse.y) + irandom_range(_gun.weapon.innaccuracy*-1*(100/barrel_value)-extracted_bullet[array_length(extracted_bullet)-1].specs.misc_val, _gun.weapon.innaccuracy*(100/barrel_value)+extracted_bullet[array_length(extracted_bullet)-1].specs.misc_val)
						} else
						{
							direction = point_direction(obj_player.x, obj_player.y, obj_mouse.x, obj_mouse.y) + irandom_range(_gun.weapon.innaccuracy*-1*(100/barrel_value)-extracted_bullet[array_length(extracted_bullet)-1].specs.misc_val, _gun.weapon.innaccuracy*(100/barrel_value)+extracted_bullet[array_length(extracted_bullet)-1].specs.misc_val)/global.scoped_aim_change
						}
						image_angle = direction
						speed = _speed	
						var extracted = obj_item_manager.left_modifiers[38]
						modifier[28] = extracted[array_length(extracted)-1]
					}
					
				} else
				{
					
					with(instance_create_depth(obj_player.x, obj_player.y, -9, obj_pellet))
					{
						shot = true
						randomize()
						if obj_item_manager.scoped == false
						{
							direction = point_direction(obj_player.x, obj_player.y, obj_mouse.x, obj_mouse.y) + irandom_range(_gun.weapon.innaccuracy*-1*(100/barrel_value), _gun.weapon.innaccuracy*(100/barrel_value))
						} else
						{
							direction = point_direction(obj_player.x, obj_player.y, obj_mouse.x, obj_mouse.y) + irandom_range(_gun.weapon.innaccuracy*-1*(100/barrel_value), _gun.weapon.innaccuracy*(100/barrel_value))/2
						}
						image_angle = direction
						speed = _speed	
						var extracted = obj_item_manager.left_modifiers[38]
						modifier[28] = extracted[array_length(extracted)-1]
					}
					with(instance_create_depth(obj_player.x, obj_player.y, -9, obj_pellet))
					{
						shot = true
						randomize()
						if obj_item_manager.scoped == false
						{
							direction = point_direction(obj_player.x, obj_player.y, obj_mouse.x, obj_mouse.y) + irandom_range(_gun.weapon.innaccuracy*-1*(100/barrel_value), _gun.weapon.innaccuracy*(100/barrel_value))
						} else
						{
							direction = point_direction(obj_player.x, obj_player.y, obj_mouse.x, obj_mouse.y) + irandom_range(_gun.weapon.innaccuracy*-1*(100/barrel_value), _gun.weapon.innaccuracy*(100/barrel_value))/2
						}
						image_angle = direction
						speed = _speed	
						var extracted = obj_item_manager.left_modifiers[38]
						modifier[28] = extracted[array_length(extracted)-1]
					}
					with(instance_create_depth(obj_player.x, obj_player.y, -9, obj_pellet))
					{
						shot = true
						randomize()
						if obj_item_manager.scoped == false
						{
							direction = point_direction(obj_player.x, obj_player.y, obj_mouse.x, obj_mouse.y) + irandom_range(_gun.weapon.innaccuracy*-1*(100/barrel_value), _gun.weapon.innaccuracy*(100/barrel_value))
						} else
						{
							direction = point_direction(obj_player.x, obj_player.y, obj_mouse.x, obj_mouse.y) + irandom_range(_gun.weapon.innaccuracy*-1*(100/barrel_value), _gun.weapon.innaccuracy*(100/barrel_value))/2
						}
						image_angle = direction
						speed = _speed	
						var extracted = obj_item_manager.left_modifiers[38]
						modifier[28] = extracted[array_length(extracted)-1]
					}with(instance_create_depth(obj_player.x, obj_player.y, -9, obj_pellet))
					{
						shot = true
						randomize()
						if obj_item_manager.scoped == false
						{
							direction = point_direction(obj_player.x, obj_player.y, obj_mouse.x, obj_mouse.y) + irandom_range(_gun.weapon.innaccuracy*-1*(100/barrel_value), _gun.weapon.innaccuracy*(100/barrel_value))
						} else
						{
							direction = point_direction(obj_player.x, obj_player.y, obj_mouse.x, obj_mouse.y) + irandom_range(_gun.weapon.innaccuracy*-1*(100/barrel_value), _gun.weapon.innaccuracy*(100/barrel_value))/2
						}
						image_angle = direction
						speed = _speed	
						var extracted = obj_item_manager.left_modifiers[38]
						modifier[28] = extracted[array_length(extracted)-1]
					}
					with(instance_create_depth(obj_player.x, obj_player.y, -9, obj_pellet))
					{
						shot = true
						randomize()
						if obj_item_manager.scoped == false
						{
							direction = point_direction(obj_player.x, obj_player.y, obj_mouse.x, obj_mouse.y) + irandom_range(_gun.weapon.innaccuracy*-1*(100/barrel_value), _gun.weapon.innaccuracy*(100/barrel_value))
						} else
						{
							direction = point_direction(obj_player.x, obj_player.y, obj_mouse.x, obj_mouse.y) + irandom_range(_gun.weapon.innaccuracy*-1*(100/barrel_value), _gun.weapon.innaccuracy*(100/barrel_value))/2
						}
						image_angle = direction
						speed = _speed	
						var extracted = obj_item_manager.left_modifiers[38]
						modifier[28] = extracted[array_length(extracted)-1]
					}
				}
					
					
				if left_modifiers[32] != 0
				{
					audio_play_sound(_gun.specs.misc_sound, 1, 0)
				} else
				{
					var i = irandom(1)
					if i == 0
					{
						audio_play_sound(_gun.weapon.shoot_sound, 1, 0)
					} else
					{
						audio_play_sound(_gun.weapon.shoot_sound2, 1, 0)
					}
				}
				if _shell != noone
				{
					audio_play_sound(snd_shell_drop, 1, 0)
				}
				with(instance_create_depth(obj_player.x, obj_player.y, -9, obj_light_ball))
				{
					if obj_item_manager.scoped == false
						{
							direction = point_direction(obj_player.x, obj_player.y, obj_mouse.x, obj_mouse.y) + irandom_range(_gun.weapon.innaccuracy*-1*(100/barrel_value)-extracted_bullet[array_length(extracted_bullet)-1].specs.misc_val, _gun.weapon.innaccuracy*(100/barrel_value)+extracted_bullet[array_length(extracted_bullet)-1].specs.misc_val)
						} else
						{
							direction = point_direction(obj_player.x, obj_player.y, obj_mouse.x, obj_mouse.y) + irandom_range(_gun.weapon.innaccuracy*-1*(100/barrel_value)-extracted_bullet[array_length(extracted_bullet)-1].specs.misc_val, _gun.weapon.innaccuracy*(100/barrel_value)+extracted_bullet[array_length(extracted_bullet)-1].specs.misc_val)/global.scoped_aim_change
						}
					image_angle = direction
					//speed = _speed	
				}
				if left_modifiers[26] != "Break-Action"
				{
					if _shell != noone
					{
						with(instance_create_depth(obj_player.x+irandom_range(-30, 30), obj_player.y+irandom_range(-30, 30), -9, _shell.obj))
						{
							//physics_apply_impulse(x, y, -500, -8)
						}
					}
					//instance_create_depth(obj_player.x, obj_player.y+50, -9, obj_bullet_collider)
				} else
				{
					left_modifiers[31] += 1
				}
				if hand_ammo[0] == 0
				{
					selected_chamber[0] = false
				}
			array_delete(left_modifiers[38], array_length(left_modifiers[38])-1, 1)
			}
			if global.right_hand_item == _gun && obj_item_manager.using_hand == 1 && obj_item_manager.selected_chamber[1] == true && right_modifiers[9] > 1 && right_modifiers[42] == "Not" && right_modifiers[25] == "Not" && check_all_parts(_gun, 1) && ((first_click >= 1 && right_modifiers[24] == 3) || (first_click == 1 && right_modifiers[24] == 1) || (fire_amount <= global.right_hand_item.weapon.short_burst_amount && right_modifiers[24] == 2)) && burst_delay >= _gun.weapon.fire_rate && !audio_is_playing(_gun.weapon.chamber_sound)
			{	
				if jam_checker(right_modifiers[9]) == true
				{
					if irandom(1) == 0
					{
						if right_modifiers[26] != "Break-Action"
						{
							right_modifiers[25] = "Is"
							with(instance_create_depth(0, 0, -9, obj_temporary_notification))
							{
								var i = irandom(2)
								if i == 0
								{
									notification = "Failure to Eject (Chamber to Resolve)"
								}
								if i == 1
								{
									notification = "Failure to Feed (Chamber to Resolve)"
								}
								if i == 2
								{
									notification = "Failure to Cycle (Chamber to Resolve)"
								}
							}
						}
					} else
					{	
						if global.right_hand_item.weapon.parts.hammer == global.item_list.single_action_hammer
						{
							right_modifiers[42] = "Is"
							with(instance_create_depth(0, 0, -9, obj_temporary_notification))
							{	
								notification = "Misfire (Cock/Chamber to Resolve)"
							}
						}
					}
				}
				
				if global.left_hand_item == _gun
				{
					var barrel_value = left_modifiers[7]
				} else
				{
					var barrel_value = right_modifiers[7]
				}
				
				weapon_degradation(_gun)
				scope_degradation()
				suppressor_degradation()
				underbarrel_degradation()
				fire_amount += 1
				layer_set_visible("gunshot_effect", true)
				burst_delay = 0
				hand_ammo[1] -= 1
				show_debug_message(hand_ammo[1])
				var extracted_bullet = obj_item_manager.right_modifiers[38]
				
				if extracted_bullet[array_length(extracted_bullet)-1].specs.bullet != "BIRD" && extracted_bullet[array_length(extracted_bullet)-1].specs.bullet != "BUCK"
				{
					with(instance_create_depth(obj_player.x, obj_player.y, -9, obj_pellet))
					{
						shot = true
						randomize()
						if obj_item_manager.scoped == false
						{
							direction = point_direction(obj_player.x, obj_player.y, obj_mouse.x, obj_mouse.y) + irandom_range(_gun.weapon.innaccuracy*-1*(100/barrel_value)-extracted_bullet[array_length(extracted_bullet)-1].specs.misc_val, _gun.weapon.innaccuracy*(100/barrel_value)+extracted_bullet[array_length(extracted_bullet)-1].specs.misc_val)
						} else
						{
							direction = point_direction(obj_player.x, obj_player.y, obj_mouse.x, obj_mouse.y) + irandom_range(_gun.weapon.innaccuracy*-1*(100/barrel_value)-extracted_bullet[array_length(extracted_bullet)-1].specs.misc_val, _gun.weapon.innaccuracy*(100/barrel_value)+extracted_bullet[array_length(extracted_bullet)-1].specs.misc_val)/global.scoped_aim_change
						}
						image_angle = direction
						speed = _speed	
						var extracted = obj_item_manager.right_modifiers[38]
						modifier[28] = extracted[array_length(extracted)-1]
					}
				} else
				{
					
					with(instance_create_depth(obj_player.x, obj_player.y, -9, obj_pellet))
					{
						shot = true
						randomize()
						if obj_item_manager.scoped == false
						{
							direction = point_direction(obj_player.x, obj_player.y, obj_mouse.x, obj_mouse.y) + irandom_range(_gun.weapon.innaccuracy*-1*(100/barrel_value), _gun.weapon.innaccuracy*(100/barrel_value))
						} else
						{
							direction = point_direction(obj_player.x, obj_player.y, obj_mouse.x, obj_mouse.y) + irandom_range(_gun.weapon.innaccuracy*-1*(100/barrel_value), _gun.weapon.innaccuracy*(100/barrel_value))/2
						}
						image_angle = direction
						speed = _speed	
						var extracted = obj_item_manager.right_modifiers[38]
						modifier[28] = extracted[array_length(extracted)-1]
					}
					with(instance_create_depth(obj_player.x, obj_player.y, -9, obj_pellet))
					{
						shot = true
						randomize()
						if obj_item_manager.scoped == false
						{
							direction = point_direction(obj_player.x, obj_player.y, obj_mouse.x, obj_mouse.y) + irandom_range(_gun.weapon.innaccuracy*-1*(100/barrel_value), _gun.weapon.innaccuracy*(100/barrel_value))
						} else
						{
							direction = point_direction(obj_player.x, obj_player.y, obj_mouse.x, obj_mouse.y) + irandom_range(_gun.weapon.innaccuracy*-1*(100/barrel_value), _gun.weapon.innaccuracy*(100/barrel_value))/2
						}
						image_angle = direction
						speed = _speed	
						var extracted = obj_item_manager.right_modifiers[38]
						modifier[28] = extracted[array_length(extracted)-1]
					}
					with(instance_create_depth(obj_player.x, obj_player.y, -9, obj_pellet))
					{
						shot = true
						randomize()
						if obj_item_manager.scoped == false
						{
							direction = point_direction(obj_player.x, obj_player.y, obj_mouse.x, obj_mouse.y) + irandom_range(_gun.weapon.innaccuracy*-1*(100/barrel_value), _gun.weapon.innaccuracy*(100/barrel_value))
						} else
						{
							direction = point_direction(obj_player.x, obj_player.y, obj_mouse.x, obj_mouse.y) + irandom_range(_gun.weapon.innaccuracy*-1*(100/barrel_value), _gun.weapon.innaccuracy*(100/barrel_value))/2
						}
						image_angle = direction
						speed = _speed	
						var extracted = obj_item_manager.right_modifiers[38]
						modifier[28] = extracted[array_length(extracted)-1]
					}with(instance_create_depth(obj_player.x, obj_player.y, -9, obj_pellet))
					{
						shot = true
						randomize()
						if obj_item_manager.scoped == false
						{
							direction = point_direction(obj_player.x, obj_player.y, obj_mouse.x, obj_mouse.y) + irandom_range(_gun.weapon.innaccuracy*-1*(100/barrel_value), _gun.weapon.innaccuracy*(100/barrel_value))
						} else
						{
							direction = point_direction(obj_player.x, obj_player.y, obj_mouse.x, obj_mouse.y) + irandom_range(_gun.weapon.innaccuracy*-1*(100/barrel_value), _gun.weapon.innaccuracy*(100/barrel_value))/2
						}
						image_angle = direction
						speed = _speed	
						var extracted = obj_item_manager.right_modifiers[38]
						modifier[28] = extracted[array_length(extracted)-1]
					}
					with(instance_create_depth(obj_player.x, obj_player.y, -9, obj_pellet))
					{
						shot = true
						randomize()
						if obj_item_manager.scoped == false
						{
							direction = point_direction(obj_player.x, obj_player.y, obj_mouse.x, obj_mouse.y) + irandom_range(_gun.weapon.innaccuracy*-1*(100/barrel_value), _gun.weapon.innaccuracy*(100/barrel_value))
						} else
						{
							direction = point_direction(obj_player.x, obj_player.y, obj_mouse.x, obj_mouse.y) + irandom_range(_gun.weapon.innaccuracy*-1*(100/barrel_value), _gun.weapon.innaccuracy*(100/barrel_value))/2
						}
						image_angle = direction
						speed = _speed	
						var extracted = obj_item_manager.right_modifiers[38]
						modifier[28] = extracted[array_length(extracted)-1]
					}
				}
				if right_modifiers[32] != 0
				{
					audio_play_sound(_gun.specs.misc_sound, 1, 0)
				} else
				{
					var i = irandom(1)
					if i == 0
					{
						audio_play_sound(_gun.weapon.shoot_sound, 1, 0)
					} else
					{
						audio_play_sound(_gun.weapon.shoot_sound2, 1, 0)
					}
				}
				if _shell != noone
				{
					audio_play_sound(snd_shell_drop, 1, 0)
				}
				with(instance_create_depth(obj_player.x, obj_player.y, -9, obj_light_ball))
				{
					
					if obj_item_manager.scoped == false
						{
							direction = point_direction(obj_player.x, obj_player.y, obj_mouse.x, obj_mouse.y) + irandom_range(_gun.weapon.innaccuracy*-1*(100/barrel_value)-extracted_bullet[array_length(extracted_bullet)-1].specs.misc_val, _gun.weapon.innaccuracy*(100/barrel_value)+extracted_bullet[array_length(extracted_bullet)-1].specs.misc_val)
						} else
						{
							direction = point_direction(obj_player.x, obj_player.y, obj_mouse.x, obj_mouse.y) + irandom_range(_gun.weapon.innaccuracy*-1*(100/barrel_value)-extracted_bullet[array_length(extracted_bullet)-1].specs.misc_val, _gun.weapon.innaccuracy*(100/barrel_value)+extracted_bullet[array_length(extracted_bullet)-1].specs.misc_val)/global.scoped_aim_change
						}
					image_angle = direction
					//speed = _speed	
				}
				if right_modifiers[26] != "Break-Action" 
				{
					if _shell != noone
					{
						instance_create_depth(obj_player.x+irandom_range(-30, 30), obj_player.y+irandom_range(-30, 30), -9, _shell.obj)
						//instance_create_depth(obj_player.x, obj_player.y+50, -9, obj_bullet_collider)
					}
				} else
				{
					right_modifiers[31] += 1
				}
				if hand_ammo[1] == 0
				{
					selected_chamber[1] = false
				}
				array_delete(right_modifiers[38], array_length(right_modifiers[38])-1, 1)
			}	
		}
	} else
	{
		
		if !audio_is_playing(_gun.weapon.chamber_sound)
		{
			if (global.left_hand_item == _gun && left_modifiers[9] > 1 && selected_chamber[0] == true) || (global.right_hand_item == _gun && right_modifiers[9] > global.degredation_value && selected_chamber[1] == true)
			{
				if global.left_hand_item == _gun && obj_item_manager.using_hand == 0 && obj_item_manager.selected_chamber[0] == true
				{
					var extracted_bullet = obj_item_manager.left_modifiers[38]
					var barrel_value = left_modifiers[7]
				} else
				{
					var extracted_bullet = obj_item_manager.right_modifiers[38]
					var barrel_value = right_modifiers[7]
				}
				
				weapon_degradation(_gun)
				scope_degradation()
				suppressor_degradation()
				underbarrel_degradation()
				layer_set_visible("gunshot_effect", true)
				if global.left_hand_item == _gun && left_modifiers[25] == "Not" && check_all_parts(_gun, 0) && obj_item_manager.using_hand == 0 && obj_item_manager.selected_chamber[0] == true 
				{
					
					if jam_checker(left_modifiers[9]) == true
					{
						left_modifiers[25] = "Is"
					}
					with(instance_create_depth(obj_player.x, obj_player.y, -9, obj_pellet))
					{
						shot = true
						randomize()
						if obj_item_manager.scoped == false
						{
							direction = point_direction(obj_player.x, obj_player.y, obj_mouse.x, obj_mouse.y) + irandom_range(_gun.weapon.innaccuracy*-1*(100/barrel_value)-extracted_bullet[array_length(extracted_bullet)-1].specs.misc_val, _gun.weapon.innaccuracy*(100/barrel_value)+extracted_bullet[array_length(extracted_bullet)-1].specs.misc_val)
						} else
						{
							direction = point_direction(obj_player.x, obj_player.y, obj_mouse.x, obj_mouse.y) + irandom_range(_gun.weapon.innaccuracy*-1*(100/barrel_value)-extracted_bullet[array_length(extracted_bullet)-1].specs.misc_val, _gun.weapon.innaccuracy*(100/barrel_value)+extracted_bullet[array_length(extracted_bullet)-1].specs.misc_val)/global.scoped_aim_change
						}
						image_angle = direction
						speed = _speed
						var extracted = obj_item_manager.left_modifiers[38]
						modifier[28] = extracted[array_length(extracted)-1]
					}
					if left_modifiers[32] != 0
				{
					audio_play_sound(_gun.specs.misc_sound, 1, 0)
				} else
				{
					var i = irandom(1)
					if i == 0
					{
						audio_play_sound(_gun.weapon.shoot_sound, 1, 0)
					} else
					{
						audio_play_sound(_gun.weapon.shoot_sound2, 1, 0)
					}
				}
				
					with(instance_create_depth(obj_player.x, obj_player.y, -9, obj_light_ball))
					{
						if obj_item_manager.scoped == false
						{
							direction = point_direction(obj_player.x, obj_player.y, obj_mouse.x, obj_mouse.y) + irandom_range(_gun.weapon.innaccuracy*-1*(100/barrel_value)-extracted_bullet[array_length(extracted_bullet)-1].specs.misc_val, _gun.weapon.innaccuracy*(100/barrel_value)+extracted_bullet[array_length(extracted_bullet)-1].specs.misc_val)
						} else
						{
							direction = point_direction(obj_player.x, obj_player.y, obj_mouse.x, obj_mouse.y) + irandom_range(_gun.weapon.innaccuracy*-1*(100/barrel_value)-extracted_bullet[array_length(extracted_bullet)-1].specs.misc_val, _gun.weapon.innaccuracy*(100/barrel_value)+extracted_bullet[array_length(extracted_bullet)-1].specs.misc_val)/global.scoped_aim_change
						}
						image_angle = direction
						//speed = _speed	
					}
					//instance_create_depth(obj_player.x, obj_player.y, -9, _shell.obj)
					left_modifiers[31] = 1
					selected_chamber[0] = false
					hand_ammo[0] -= 1
					array_delete(left_modifiers[38], array_length(left_modifiers[38])-1, 1)
				}
				if global.right_hand_item == _gun && right_modifiers[25] == "Not" && check_all_parts(_gun, 1) && obj_item_manager.using_hand == 1 && obj_item_manager.selected_chamber[1] == true 
				{
					
					if jam_checker(right_modifiers[9]) == true
					{
						right_modifiers[25] = "Is"
					}
					
					with(instance_create_depth(obj_player.x, obj_player.y, -9, obj_pellet))
					{
						shot = true
						randomize()
						if obj_item_manager.scoped == false
						{
							direction = point_direction(obj_player.x, obj_player.y, obj_mouse.x, obj_mouse.y) + irandom_range(_gun.weapon.innaccuracy*-1*(100/barrel_value)-extracted_bullet[array_length(extracted_bullet)-1].specs.misc_val, _gun.weapon.innaccuracy*(100/barrel_value)+extracted_bullet[array_length(extracted_bullet)-1].specs.misc_val)
						} else
						{
							direction = point_direction(obj_player.x, obj_player.y, obj_mouse.x, obj_mouse.y) + irandom_range(_gun.weapon.innaccuracy*-1*(100/barrel_value)-extracted_bullet[array_length(extracted_bullet)-1].specs.misc_val, _gun.weapon.innaccuracy*(100/barrel_value)+extracted_bullet[array_length(extracted_bullet)-1].specs.misc_val)/global.scoped_aim_change
						}
						image_angle = direction
						speed = _speed
						var extracted = obj_item_manager.right_modifiers[38]
						modifier[28] = extracted[array_length(extracted)-1]
						
					}
					if right_modifiers[32] != 0
				{
					audio_play_sound(_gun.specs.misc_sound, 1, 0)
				} else
				{
					var i = irandom(1)
					if i == 0
					{
						audio_play_sound(_gun.weapon.shoot_sound, 1, 0)
					} else
					{
						audio_play_sound(_gun.weapon.shoot_sound2, 1, 0)
					}
				}
				
					with(instance_create_depth(obj_player.x, obj_player.y, -9, obj_light_ball))
					{
						if obj_item_manager.scoped == false
						{
							direction = point_direction(obj_player.x, obj_player.y, obj_mouse.x, obj_mouse.y) + irandom_range(_gun.weapon.innaccuracy*-1*(100/barrel_value)-extracted_bullet[array_length(extracted_bullet)-1].specs.misc_val, _gun.weapon.innaccuracy*(100/barrel_value)+extracted_bullet[array_length(extracted_bullet)-1].specs.misc_val)
						} else
						{
							direction = point_direction(obj_player.x, obj_player.y, obj_mouse.x, obj_mouse.y) + irandom_range(_gun.weapon.innaccuracy*-1*(100/barrel_value)-extracted_bullet[array_length(extracted_bullet)-1].specs.misc_val, _gun.weapon.innaccuracy*(100/barrel_value)+extracted_bullet[array_length(extracted_bullet)-1].specs.misc_val)/global.scoped_aim_change
						}
						image_angle = direction
						//speed = _speed	
					}
					right_modifiers[31] = 1
					selected_chamber[1] = false
					hand_ammo[1] -= 1
					array_delete(right_modifiers[38], array_length(right_modifiers[38])-1, 1)
				}

			}
		}
	}
}