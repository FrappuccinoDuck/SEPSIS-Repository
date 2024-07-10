function field_strip(_gun, _part, _part_val, _part_condition)
{
	if global.left_hand_item == _gun && global.right_hand_item == noone && left_modifiers[_part_val] != 0
	{
		right_modifiers[9] = left_modifiers[_part_condition]
		left_modifiers[_part_val] = 0
		left_modifiers[_part_condition] = 0
		global.right_hand_item = _part
		global.right_hand_amount += 1
		hand_ammo[1] = 0
		selected_ammo[1] = noone
		selected_mag[1] = noone
		selected_mod[1] = array_create(modifier_amount, 0)
		selected_array[1] = noone
		right_modifiers[0] = 0
				
				
		
		left_modifiers[9] = 0
		if global.left_hand_item.weapon.parts.trigger != noone 
		{
			//if left_modifiers[5] > global.degredation_value
			//{
				//left_modifiers[5] -= random_range(0.1, global.degredation_value)
				left_modifiers[9] += left_modifiers[5]
			//}
			obj_item_manager.comp_num += 1
			
		}
		if global.left_hand_item.weapon.parts.hammer != noone //&& left_modifiers[6] > 1
		{
			//if left_modifiers[6] > global.degredation_value
			//{
				//left_modifiers[6] -= random_range(0.1, global.degredation_value)
				left_modifiers[9] += left_modifiers[6]
		//	}
			obj_item_manager.comp_num += 1
		}
		if global.left_hand_item.weapon.parts.barrel != noone //&& left_modifiers[7] > 1
		{
			//if left_modifiers[7] > global.degredation_value
			//{
				//left_modifiers[7] -= random_range(0.1, global.degredation_value)
				left_modifiers[9] += left_modifiers[7]
		//	}
			obj_item_manager.comp_num += 1
		}
		if global.left_hand_item.weapon.parts.recoil_spring != noone //&& left_modifiers[8] > 1
		{
			//if left_modifiers[8] > global.degredation_value
			//{
				//left_modifiers[8] -= random_range(0.1, global.degredation_value)
				left_modifiers[9] += left_modifiers[8]
			//}
			obj_item_manager.comp_num += 1
		}
		if global.left_hand_item.weapon.parts.firing_pin != noone// && left_modifiers[18] > global.degredation_value
		{
			//if left_modifiers[18] > global.degredation_value
			//{
				//left_modifiers[18] -= random_range(0.1, global.degredation_value)
				left_modifiers[9] += left_modifiers[18]
			//}
			obj_item_manager.comp_num += 1
		}
		if global.left_hand_item.weapon.parts.extractor != noone //&& left_modifiers[19] > global.degredation_value
		{
			//if left_modifiers[19] > global.degredation_value
			//{
				//left_modifiers[19] -= random_range(0.1, global.degredation_value)
				left_modifiers[9] += left_modifiers[19]
			//}
			obj_item_manager.comp_num += 1
		}
		if global.left_hand_item.weapon.parts.bolt_slide != noone //&& left_modifiers[20] > global.degredation_value
		{
			//if left_modifiers[20] > global.degredation_value
			//{
				//left_modifiers[20] -= random_range(0.1, global.degredation_value)
				left_modifiers[9] += left_modifiers[20]
			//}
			obj_item_manager.comp_num += 1
		}
		show_debug_message(obj_item_manager.comp_num)
		show_debug_message(left_modifiers[9])
		left_modifiers[9] = left_modifiers[9]/(obj_item_manager.comp_num)
		show_debug_message(left_modifiers[9])
		
		obj_item_manager.comp_num = 0
	}
	
	if global.right_hand_item == _gun && global.left_hand_item == noone && right_modifiers[_part_val] != 0
	{
		left_modifiers[9] = right_modifiers[_part_condition]
		right_modifiers[_part_val] = 0
		right_modifiers[_part_condition] = 0
		global.left_hand_item = _part
		global.left_hand_amount += 1
		hand_ammo[0] = 0
		selected_ammo[0] = noone
		selected_mag[0] = noone
		selected_mod[0] = array_create(modifier_amount, 0)
		selected_array[0] = noone
		left_modifiers[0] = 0	
		
		
		right_modifiers[9] = 0
		if global.left_hand_item.weapon.parts.trigger != noone 
		{
			//if right_modifiers[5] > global.degredation_value
			//{
				//right_modifiers[5] -= random_range(0.1, global.degredation_value)
				right_modifiers[9] += right_modifiers[5]
			//}
			obj_item_manager.comp_num += 1
			
		}
		if global.left_hand_item.weapon.parts.hammer != noone //&& right_modifiers[6] > 1
		{
			//if right_modifiers[6] > global.degredation_value
			//{
				//right_modifiers[6] -= random_range(0.1, global.degredation_value)
				right_modifiers[9] += right_modifiers[6]
		//	}
			obj_item_manager.comp_num += 1
		}
		if global.left_hand_item.weapon.parts.barrel != noone //&& right_modifiers[7] > 1
		{
			//if right_modifiers[7] > global.degredation_value
			//{
				//right_modifiers[7] -= random_range(0.1, global.degredation_value)
				right_modifiers[9] += right_modifiers[7]
		//	}
			obj_item_manager.comp_num += 1
		}
		if global.left_hand_item.weapon.parts.recoil_spring != noone //&& right_modifiers[8] > 1
		{
			//if right_modifiers[8] > global.degredation_value
			//{
				//right_modifiers[8] -= random_range(0.1, global.degredation_value)
				right_modifiers[9] += right_modifiers[8]
			//}
			obj_item_manager.comp_num += 1
		}
		if global.left_hand_item.weapon.parts.firing_pin != noone// && right_modifiers[18] > global.degredation_value
		{
			//if right_modifiers[18] > global.degredation_value
			//{
				//right_modifiers[18] -= random_range(0.1, global.degredation_value)
				right_modifiers[9] += right_modifiers[18]
			//}
			obj_item_manager.comp_num += 1
		}
		if global.left_hand_item.weapon.parts.extractor != noone //&& right_modifiers[19] > global.degredation_value
		{
			//if right_modifiers[19] > global.degredation_value
			//{
				//right_modifiers[19] -= random_range(0.1, global.degredation_value)
				right_modifiers[9] += right_modifiers[19]
			//}
			obj_item_manager.comp_num += 1
		}
		if global.left_hand_item.weapon.parts.bolt_slide != noone //&& right_modifiers[20] > global.degredation_value
		{
			//if right_modifiers[20] > global.degredation_value
			//{
				//right_modifiers[20] -= random_range(0.1, global.degredation_value)
				right_modifiers[9] += right_modifiers[20]
			//}
			obj_item_manager.comp_num += 1
		}
		show_debug_message(obj_item_manager.comp_num)
		show_debug_message(right_modifiers[9])
		right_modifiers[9] = right_modifiers[9]/(obj_item_manager.comp_num)
		show_debug_message(right_modifiers[9])
		
		obj_item_manager.comp_num = 0
	}
}