
function weapon_degradation(_gun){
	if global.left_hand_item == _gun && obj_item_manager.using_hand == false
	{
		left_modifiers[9] = 0
		
		if left_modifiers[21] > 1
		{
			left_modifiers[21] -= random_range(0.1, global.degredation_value)
		}
		
		if global.left_hand_item.weapon.parts.trigger != noone 
		{
			if left_modifiers[5] > 1
			{
				left_modifiers[5] -= random_range(0.1, global.degredation_value)
				left_modifiers[9] += left_modifiers[5]
			}
			obj_item_manager.comp_num += 1
			
		}
		if global.left_hand_item.weapon.parts.hammer != noone //&& left_modifiers[6] > 1
		{
			if left_modifiers[6] > 1
			{
				left_modifiers[6] -= random_range(0.1, global.degredation_value)
				left_modifiers[9] += left_modifiers[6]
			}
			obj_item_manager.comp_num += 1
		}
		if global.left_hand_item.weapon.parts.barrel != noone// && left_modifiers[7] > 1
		{
			if left_modifiers[7] > 1
			{
				left_modifiers[7] -= random_range(0.1, global.degredation_value)
				left_modifiers[9] += left_modifiers[7]
			}
			obj_item_manager.comp_num += 1
		}
		if global.left_hand_item.weapon.parts.recoil_spring != noone //&& left_modifiers[8] > 1
		{
			if left_modifiers[8] > 1
			{
				left_modifiers[8] -= random_range(0.1, global.degredation_value)
				left_modifiers[9] += left_modifiers[8]
			}
			obj_item_manager.comp_num += 1
		}
		if global.left_hand_item.weapon.parts.firing_pin != noone// && left_modifiers[18] > global.degredation_value
		{
			if left_modifiers[18] > 1
			{
				left_modifiers[18] -= random_range(0.1, global.degredation_value)
				left_modifiers[9] += left_modifiers[18]
			}
			obj_item_manager.comp_num += 1
		}
		if global.left_hand_item.weapon.parts.extractor != noone //&& left_modifiers[19] > global.degredation_value
		{
			if left_modifiers[19] > 1
			{
				left_modifiers[19] -= random_range(0.1, global.degredation_value)
				left_modifiers[9] += left_modifiers[19]
			}
			obj_item_manager.comp_num += 1
		}
		if global.left_hand_item.weapon.parts.bolt_slide != noone //&& left_modifiers[20] > global.degredation_value
		{
			if left_modifiers[20] > 1
			{
				left_modifiers[20] -= random_range(0.1, global.degredation_value)
				left_modifiers[9] += left_modifiers[20]
			}
			obj_item_manager.comp_num += 1
		}
		show_debug_message(obj_item_manager.comp_num)
		show_debug_message(left_modifiers[9])
		left_modifiers[9] = left_modifiers[9]/(obj_item_manager.comp_num)
		show_debug_message(left_modifiers[9])
		
		obj_item_manager.comp_num = 0
	}
	// ------------------RIGHT HAND
	if global.right_hand_item == _gun && obj_item_manager.using_hand == true
	{
		right_modifiers[9] = 0
		
		if right_modifiers[21] > 1
		{
			right_modifiers[21] -= random_range(0.1, global.degredation_value)
		}
		
		if global.right_hand_item.weapon.parts.trigger != noone 
		{
			if right_modifiers[5] > 1
			{
				right_modifiers[5] -= random_range(0.1, global.degredation_value)
				right_modifiers[9] += right_modifiers[5]
			}
			obj_item_manager.comp_num += 1
			
		}
		if global.right_hand_item.weapon.parts.hammer != noone// && right_modifiers[6] > 1
		{
			if right_modifiers[6] > 1
			{
				right_modifiers[6] -= random_range(0.1, global.degredation_value)
				right_modifiers[9] += right_modifiers[6]
			}
			obj_item_manager.comp_num += 1
		}
		if global.right_hand_item.weapon.parts.barrel != noone// && right_modifiers[7] > 1
		{
			if right_modifiers[7] > 1
			{
				right_modifiers[7] -= random_range(0.1, global.degredation_value)
				right_modifiers[9] += right_modifiers[7]
			}
			obj_item_manager.comp_num += 1
		}
		if global.right_hand_item.weapon.parts.recoil_spring != noone //&& right_modifiers[8] > 1
		{
			if right_modifiers[8] > 1
			{
				right_modifiers[8] -= random_range(0.1, global.degredation_value)
				right_modifiers[9] += right_modifiers[8]
			}
			obj_item_manager.comp_num += 1
		}
		if global.right_hand_item.weapon.parts.firing_pin != noone //&& right_modifiers[18] > global.degredation_value
		{
			if right_modifiers[18] > 1
			{
				right_modifiers[18] -= random_range(0.1, global.degredation_value)
				right_modifiers[9] += right_modifiers[18]
			}
			obj_item_manager.comp_num += 1
		}
		if global.right_hand_item.weapon.parts.extractor != noone //&& right_modifiers[19] > global.degredation_value
		{
			if right_modifiers[19] > 1
			{
				right_modifiers[19] -= random_range(0.1, global.degredation_value)
				right_modifiers[9] += right_modifiers[19]
			}
			obj_item_manager.comp_num += 1
		}
		if global.right_hand_item.weapon.parts.bolt_slide != noone //&& right_modifiers[20] > global.degredation_value
		{
			if right_modifiers[20] > 1
			{
				right_modifiers[20] -= random_range(0.1, global.degredation_value)
				right_modifiers[9] += right_modifiers[20]
			}
			obj_item_manager.comp_num += 1
		}
		show_debug_message(obj_item_manager.comp_num)
		show_debug_message(right_modifiers[9])
		right_modifiers[9] = right_modifiers[9]/(obj_item_manager.comp_num)
		show_debug_message(right_modifiers[9])
		
		obj_item_manager.comp_num = 0
	}
	
}

function weapon_degradation_chamber(_gun){
	if global.left_hand_item == _gun && obj_item_manager.using_hand == false
	{
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
		//	if left_modifiers[7] > global.degredation_value
		//	{
				//left_modifiers[7] -= random_range(0.1, global.degredation_value)
				left_modifiers[9] += left_modifiers[7]
		//	}
			obj_item_manager.comp_num += 1
		}
		if global.left_hand_item.weapon.parts.recoil_spring != noone// && left_modifiers[8] > 1
		{
			//if left_modifiers[8] > global.degredation_value
			//{
				//left_modifiers[8] -= random_range(0.1, global.degredation_value)
				left_modifiers[9] += left_modifiers[8]
		//	}
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
		//	if left_modifiers[19] > global.degredation_value
		//	{
				//left_modifiers[19] -= random_range(0.1, global.degredation_value)
				left_modifiers[9] += left_modifiers[19]
			//}
			obj_item_manager.comp_num += 1
		}
		if global.left_hand_item.weapon.parts.bolt_slide != noone //&& left_modifiers[20] > global.degredation_value
		{
			if left_modifiers[20] > 1
			{
				left_modifiers[20] -= random_range(0.1, global.degredation_value)
				left_modifiers[9] += left_modifiers[20]
			}
			obj_item_manager.comp_num += 1
		}
		show_debug_message(obj_item_manager.comp_num)
		show_debug_message(left_modifiers[9])
		left_modifiers[9] = left_modifiers[9]/(obj_item_manager.comp_num)
		show_debug_message(left_modifiers[9])
		
		obj_item_manager.comp_num = 0
	}
	// ------------------------RIGHT HAND
	if global.right_hand_item == _gun && obj_item_manager.using_hand == false
	{
		right_modifiers[9] = 0
		if global.right_hand_item.weapon.parts.trigger != noone 
		{
			//if right_modifiers[5] > global.degredation_value
			//{
				//right_modifiers[5] -= random_range(0.1, global.degredation_value)
				right_modifiers[9] += right_modifiers[5]
			//}
			obj_item_manager.comp_num += 1
			
		}
		if global.right_hand_item.weapon.parts.hammer != noone //&& right_modifiers[6] > 1
		{
			//if right_modifiers[6] > global.degredation_value
			//{
				//right_modifiers[6] -= random_range(0.1, global.degredation_value)
				right_modifiers[9] += right_modifiers[6]
		//	}
			obj_item_manager.comp_num += 1
		}
		if global.right_hand_item.weapon.parts.barrel != noone //&& right_modifiers[7] > 1
		{
			//if right_modifiers[7] > global.degredation_value
			//{
				//right_modifiers[7] -= random_range(0.1, global.degredation_value)
				right_modifiers[9] += right_modifiers[7]
		//	}
			obj_item_manager.comp_num += 1
		}
		if global.right_hand_item.weapon.parts.recoil_spring != noone //&& right_modifiers[8] > 1
		{
			//if right_modifiers[8] > global.degredation_value
			//{
				//right_modifiers[8] -= random_range(0.1, global.degredation_value)
				right_modifiers[9] += right_modifiers[8]
			//}
			obj_item_manager.comp_num += 1
		}
		if global.right_hand_item.weapon.parts.firing_pin != noone// && right_modifiers[18] > global.degredation_value
		{
			//if right_modifiers[18] > global.degredation_value
			//{
				//right_modifiers[18] -= random_range(0.1, global.degredation_value)
				right_modifiers[9] += right_modifiers[18]
			//}
			obj_item_manager.comp_num += 1
		}
		if global.right_hand_item.weapon.parts.extractor != noone //&& right_modifiers[19] > global.degredation_value
		{
			//if right_modifiers[19] > global.degredation_value
			//{
				//right_modifiers[19] -= random_range(0.1, global.degredation_value)
				right_modifiers[9] += right_modifiers[19]
			//}
			obj_item_manager.comp_num += 1
		}
		if global.right_hand_item.weapon.parts.bolt_slide != noone //&& right_modifiers[20] > global.degredation_value
		{
			if right_modifiers[20] > 1
			{
				right_modifiers[20] -= random_range(0.1, global.degredation_value)
				right_modifiers[9] += right_modifiers[20]
			}
			obj_item_manager.comp_num += 1
		}
		show_debug_message(obj_item_manager.comp_num)
		show_debug_message(right_modifiers[9])
		right_modifiers[9] = right_modifiers[9]/(obj_item_manager.comp_num)
		show_debug_message(right_modifiers[9])
		
		obj_item_manager.comp_num = 0
	}
}

function scope_degradation()
{
	if global.left_hand_item != noone && global.left_hand_item.specs.item_type == "Firearm" && obj_item_manager.using_hand == false
	{
		if left_modifiers[21] > 1
		{
			left_modifiers[21] -= random_range(0.1, global.degredation_value)
		}
	}
	if global.right_hand_item != noone && global.right_hand_item.specs.item_type == "Firearm" && obj_item_manager.using_hand == false
	{
		if right_modifiers[21] > 1
		{
			right_modifiers[21] -= random_range(0.1, global.degredation_value)
		}
	}
}

function underbarrel_degradation()
{
	if global.left_hand_item != noone && global.left_hand_item.specs.item_type == "Firearm" && obj_item_manager.using_hand == false
	{
		if left_modifiers[30] > 1
		{
			left_modifiers[30] -= random_range(0.1, global.degredation_value)
		}
	}
	if global.right_hand_item != noone && global.right_hand_item.specs.item_type == "Firearm" && obj_item_manager.using_hand == false
	{
		if right_modifiers[30] > 1
		{
			right_modifiers[30] -= random_range(0.1, global.degredation_value)
		}
	}
}

function suppressor_degradation()
{
	if global.left_hand_item != noone && global.left_hand_item.specs.item_type == "Firearm" && obj_item_manager.using_hand == false
	{
		if left_modifiers[33] > 1
		{
			left_modifiers[33] -= random_range(0.1, global.degredation_value)
		}
	}
	if global.right_hand_item != noone && global.right_hand_item.specs.item_type == "Firearm" && obj_item_manager.using_hand == false
	{
		if right_modifiers[33] > 1
		{
			right_modifiers[33] -= random_range(0.1, global.degredation_value)
		}
	}
}