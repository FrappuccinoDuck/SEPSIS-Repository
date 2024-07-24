
if keyboard_check_pressed(obj_game_initializers.left_hand_hold) || keyboard_check_pressed(obj_game_initializers.right_hand_hold)
{
	//global.hover_item = noone
}
/*
if type == "Item" && obj_item_manager.debug_menu == false && global.hold_pickup == true
{
	if distance_to_object(obj_player) < 30 && distance_to_object(obj_mouse) < 2
	{
		if keyboard_check_pressed(obj_game_initializers.left_hand_hold) && global.left_hand_item == noone
		{
			global.left_hand_item = item
			obj_item_manager.selected_ammo[0] = ammo_arr
			obj_item_manager.selected_chamber[0] = chambered
			obj_item_manager.selected_array[0] = array
			obj_item_manager.hand_ammo[0] = ammo
			obj_item_manager.selected_mag[0] = mag_arr
			instance_destroy();
		}
		else if keyboard_check_pressed(obj_game_initializers.right_hand_hold) && global.right_hand_item == noone
		{
			global.right_hand_item = item
			obj_item_manager.selected_ammo[1] = ammo_arr
			obj_item_manager.selected_chamber[1] = chambered
			obj_item_manager.selected_array[1] = array
			obj_item_manager.hand_ammo[1] = ammo
			obj_item_manager.selected_mag[1] = mag_arr
			instance_destroy();
		}
	} 

	if !keyboard_check(obj_game_initializers.left_hand_hold) && global.left_hand_item != noone && obj_item_manager.stats_open == false 
	{
		with(instance_create_layer(obj_player.x, obj_player.y, "Instances", global.left_hand_item.obj))
		{
			ammo_arr = obj_item_manager.selected_ammo[0]
			chambered = obj_item_manager.selected_chamber[0]
			array = obj_item_manager.selected_array[0]
			ammo = obj_item_manager.hand_ammo[0]
			mag_arr = obj_item_manager.selected_mag[0]
		}
		obj_item_manager.selected_ammo[0] = 0
		obj_item_manager.selected_chamber[0] = 0
		global.left_hand_item = noone
		if global.right_hand_item == global.item_list.two_hand_item
		{
			global.right_hand_item = noone
		}
		obj_item_manager.selected_array[0] = noone
		obj_item_manager.hand_ammo[0] = 0
		obj_item_manager.selected_mag[0] = noone
	} if !keyboard_check(obj_game_initializers.right_hand_hold) && global.right_hand_item != noone && obj_item_manager.stats_open == false
	{
		with(instance_create_layer(obj_player.x, obj_player.y, "Instances", global.right_hand_item.obj))
		{
			ammo_arr = obj_item_manager.selected_ammo[1]
			chambered = obj_item_manager.selected_chamber[1]
			array = obj_item_manager.selected_array[1]
			ammo = obj_item_manager.hand_ammo[1]
			mag_arr = obj_item_manager.selected_mag[1]
		}
		obj_item_manager.selected_ammo[1] = 0
		obj_item_manager.selected_chamber[1] = 0
		global.right_hand_item = noone
		if global.left_hand_item == global.item_list.two_hand_item
		{
			global.left_hand_item = noone
		}
		obj_item_manager.selected_array[1] = noone
		obj_item_manager.hand_ammo[1] = 0
		obj_item_manager.selected_mag[1] = noone
	}
} */

if keyboard_check(obj_game_initializers.left_hand_hold)
{
	global.drop_hold_timer_l += 1
}
if global.drop_hold_timer_l >= 50
{
	global.hold_drop_l = true
}
if keyboard_check_released(obj_game_initializers.left_hand_hold)
{
	global.drop_hold_timer_l = 0
	global.hold_drop_l = false
}

if keyboard_check(obj_game_initializers.right_hand_hold)
{
	global.drop_hold_timer_r += 1
}
if global.drop_hold_timer_r >= 50
{
	global.hold_drop_r = true
}
if keyboard_check_released(obj_game_initializers.right_hand_hold)
{
	global.drop_hold_timer_r = 0
	global.hold_drop_r = false
}


if type == "Item" && obj_item_manager.debug_menu == false
{
	if global.hold_pickup == false
	{
		//--------------------------------------
		if distance_to_object(obj_player) < 50 && distance_to_object(obj_mouse) == 0
		{
			if keyboard_check_pressed(obj_game_initializers.left_hand_hold) && (global.left_hand_item == noone || (global.left_hand_item == item && global.left_hand_amount < global.left_hand_item.specs.stack_max))
			{
				global.hold_drop_l = false
				global.hover_item = noone
				if global.left_hand_item == noone
				{
					global.left_hand_amount = 1
				}

				if item == global.left_hand_item
				{
					global.left_hand_amount += 1
					//show_debug_message(global.left_hand_amount)
				}
				global.left_hand_item = item
			
				for(var i = 0; i < obj_item_manager.modifier_amount; i++)
				{
					obj_item_manager.left_modifiers[i] = modifier[i]
				}
			
				obj_item_manager.selected_ammo[0] = ammo_arr
				obj_item_manager.selected_chamber[0] = chambered
				obj_item_manager.selected_array[0] = array
				obj_item_manager.hand_ammo[0] = ammo
				obj_item_manager.selected_mag[0] = mag_arr
				obj_item_manager.selected_mod[0] = mod_arr
				instance_destroy();
				keyboard_clear(obj_game_initializers.right_hand_hold)
				keyboard_clear(obj_game_initializers.left_hand_hold)
					//	show_debug_message(obj_item_manager.selected_array)
			}
			else if keyboard_check_pressed(obj_game_initializers.right_hand_hold) && (global.right_hand_item == noone || (global.right_hand_item == item && global.right_hand_amount < global.right_hand_item.specs.stack_max))
			{
				global.hold_drop_r = false
				global.hover_item = noone
				if global.right_hand_item == noone
				{
					global.right_hand_amount = 1
				}
			
				if item == global.right_hand_item
				{
					global.right_hand_amount += 1
					show_debug_message(global.right_hand_amount)
				}
				global.right_hand_item = item
			
				for(var i = 0; i < obj_item_manager.modifier_amount; i++)
				{
					obj_item_manager.right_modifiers[i] = modifier[i]
				}
			
				obj_item_manager.selected_ammo[1] = ammo_arr
				obj_item_manager.selected_chamber[1] = chambered
				obj_item_manager.selected_array[1] = array
				obj_item_manager.hand_ammo[1] = ammo
				obj_item_manager.selected_mag[1] = mag_arr
				obj_item_manager.selected_mod[1] = mod_arr
				instance_destroy();
				keyboard_clear(obj_game_initializers.right_hand_hold)
				keyboard_clear(obj_game_initializers.left_hand_hold)
			//	show_debug_message(obj_item_manager.selected_array)
			}
		} 
		//--------------------------------------
	
	
		if (keyboard_check_pressed(obj_game_initializers.left_hand_hold) || global.hold_drop_l == true) && global.left_hand_item != noone && obj_item_manager.stats_open == false && global.left_hand_item != global.item_list.two_hand_item && ((global.left_hand_item != global.hover_item && global.hold_drop_l == false) || global.hold_drop_l == true) && !keyboard_check_direct(vk_control)
		{
			with(instance_create_layer(mouse_x, mouse_y, "Instances", global.left_hand_item.obj))
			{
				ammo_arr = obj_item_manager.selected_ammo[0]
				chambered = obj_item_manager.selected_chamber[0]
				array = obj_item_manager.selected_array[0]
				ammo = obj_item_manager.hand_ammo[0]
				//mag_arr = obj_item_manager.selected_mag[0]
				mod_arr = obj_item_manager.selected_mod[0]
				for(var i = 0; i < obj_item_manager.modifier_amount; i++)
				{
					modifier[i] = obj_item_manager.left_modifiers[i]
					//obj_item_manager.left_modifiers[i] = noone
				}
			}
			global.left_hand_amount -= 1
			//show_debug_message(global.left_hand_amount)
			if global.left_hand_amount == 0
			{
				obj_item_manager.selected_ammo[0] = 0
				obj_item_manager.selected_chamber[0] = 0
				global.left_hand_item = noone
				if global.right_hand_item == global.item_list.two_hand_item
				{
					global.right_hand_item = noone
				}
				obj_item_manager.selected_array[0] = noone
				obj_item_manager.hand_ammo[0] = 0
				//obj_item_manager.selected_mag[0] = noone
				obj_item_manager.selected_mod[0] = noone
				for(var i = 0; i < obj_item_manager.modifier_amount; i++)
				{
				
					obj_item_manager.left_modifiers[i] = noone
				}
			
			}
			keyboard_clear(obj_game_initializers.right_hand_hold)
			keyboard_clear(obj_game_initializers.left_hand_hold)
			//global.hover_item = noone
		

		} if (keyboard_check_pressed(obj_game_initializers.right_hand_hold) || global.hold_drop_r == true) && global.right_hand_item != noone && obj_item_manager.stats_open == false && global.right_hand_item != global.item_list.two_hand_item && ((global.right_hand_item != global.hover_item && global.hold_drop_r == false) || global.hold_drop_r == true)  && !keyboard_check_direct(vk_control)
		{
			with(instance_create_layer(mouse_x, mouse_y, "Instances", global.right_hand_item.obj))
			{
				ammo_arr = obj_item_manager.selected_ammo[1]
				chambered = obj_item_manager.right_chamber_arr
				array = obj_item_manager.selected_array[1]
				ammo = obj_item_manager.hand_ammo[1]
				//mag_arr = obj_item_manager.selected_mag[1]
				mod_arr = obj_item_manager.selected_mod[1]
				for(var i = 0; i < obj_item_manager.modifier_amount; i++)
				{
					modifier[i] = obj_item_manager.right_modifiers[i]
					//obj_item_manager.right_modifiers[i] = noone
				}
			}
			global.right_hand_amount -= 1
			if global.right_hand_amount == 0
			{
				obj_item_manager.selected_ammo[1] = 0
				obj_item_manager.selected_chamber[1] = 0
				global.right_hand_item = noone
				//show_debug_message(global.right_hand_amount)
				if global.left_hand_item == global.item_list.two_hand_item
				{
					global.left_hand_item = noone
				}
				obj_item_manager.selected_array[1] = noone
				obj_item_manager.hand_ammo[1] = 0
				//obj_item_manager.selected_mag[1] = noone
				obj_item_manager.selected_mod[1] = noone
				for(var i = 0; i < obj_item_manager.modifier_amount; i++)
				{
				
					obj_item_manager.right_modifiers[i] = noone
				}
			
			}
			keyboard_clear(obj_game_initializers.right_hand_hold)
			keyboard_clear(obj_game_initializers.left_hand_hold)
			//global.hover_item = noone
		}
	}
}

// Calculate the distance between the instance and the destination
var distance = point_distance(x, y, p_x, p_y);

// If we're at the destination coordinates
if (distance == 0)
{
    // Set instance speed to zero to stop moving
    speed = 0; 
}
else
{
    // This is the maximum distance you want to move each frame
    var max_step = 50;
  
    // Move towards the destination coordinates by no more than max_step
    move_towards_point(p_x, p_y, min(distance, max_step));
	image_angle += 10
}