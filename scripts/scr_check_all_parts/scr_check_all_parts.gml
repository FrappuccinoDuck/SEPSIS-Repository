function check_all_parts(_gun, _hand){
	obj_item_manager.component_number = 0
	obj_item_manager.actual_comp_num = 0
	if _hand == 0
	{
		if _gun.weapon.parts.trigger != noone 
		{
			obj_item_manager.component_number += 1
			if left_modifiers[1] != 0
			{

				obj_item_manager.actual_comp_num += 1
			}
			else
			{
				show_debug_message("slow 1")
				obj_item_manager.actual_comp_num = 0
			obj_item_manager.component_number = 0
				return false
			}
		} 
		if _gun.weapon.parts.hammer != noone 
		{
			obj_item_manager.component_number += 1
			if left_modifiers[2] != 0
			{
				obj_item_manager.actual_comp_num += 1
			}
			else
			{
				show_debug_message("slow 2")
				obj_item_manager.actual_comp_num = 0
				obj_item_manager.component_number = 0
				return false
			}
		} 
		if _gun.weapon.parts.barrel != noone 
		{
			obj_item_manager.component_number += 1
			if left_modifiers[3] != 0
			{
				obj_item_manager.actual_comp_num += 1
			}
			else
			{
				show_debug_message("slow 3")
				obj_item_manager.actual_comp_num = 0
			obj_item_manager.component_number = 0
				return false
			}
		} 
		if _gun.weapon.parts.recoil_spring != noone 
		{
			obj_item_manager.component_number += 1
			if left_modifiers[4] != 0
			{
				obj_item_manager.actual_comp_num += 1
			}
			else
			{
				show_debug_message("slow 4")
				obj_item_manager.actual_comp_num = 0
			obj_item_manager.component_number = 0
				return false
			}
		} 
		if _gun.weapon.parts.firing_pin != noone 
		{
			obj_item_manager.component_number += 1
			if left_modifiers[12] != 0
			{
				obj_item_manager.actual_comp_num += 1
			}
			else
			{
				show_debug_message("slow 5")
				obj_item_manager.actual_comp_num = 0
			obj_item_manager.component_number = 0
				return false
			}
		} 
		if _gun.weapon.parts.extractor != noone 
		{
			obj_item_manager.component_number += 1
			if left_modifiers[13] != 0
			{
				obj_item_manager.actual_comp_num += 1
			}
			else
			{
				show_debug_message("slow 6")
				obj_item_manager.actual_comp_num = 0
			obj_item_manager.component_number = 0
				return false
			}
		} 
		if _gun.weapon.parts.bolt_slide != noone 
		{
			obj_item_manager.component_number += 1
			if left_modifiers[14] != 0
			{
				obj_item_manager.actual_comp_num += 1
			}
			else
			{
				show_debug_message("slow 7")
				obj_item_manager.actual_comp_num = 0
			obj_item_manager.component_number = 0
				return false
			}
		} 
		if obj_item_manager.actual_comp_num == obj_item_manager.component_number
		{
			return true
		} else
		{
			show_debug_message("slow 8")
			obj_item_manager.actual_comp_num = 0
			obj_item_manager.component_number = 0
			return false
		}
	}
	obj_item_manager.actual_comp_num = 0
	obj_item_manager.component_number = 0
	//------------------RIGHT----------------------
	if _hand == 1
	{
		if _gun.weapon.parts.trigger != noone 
		{
			obj_item_manager.component_number += 1
			if right_modifiers[1] != 0
			{
				obj_item_manager.actual_comp_num += 1
			}
			else
			{
				obj_item_manager.actual_comp_num = 0
			obj_item_manager.component_number = 0
				return false
			}
		} 
		if _gun.weapon.parts.hammer != noone 
		{
			obj_item_manager.component_number += 1
			if right_modifiers[2] != 0
			{
				obj_item_manager.actual_comp_num += 1
			}
			else
			{
				obj_item_manager.actual_comp_num = 0
			obj_item_manager.component_number = 0
				return false
			}
		} 
		if _gun.weapon.parts.barrel != noone 
		{
			obj_item_manager.component_number += 1
			if right_modifiers[3] != 0
			{
				obj_item_manager.actual_comp_num += 1
			}
			else
			{
				obj_item_manager.actual_comp_num = 0
			obj_item_manager.component_number = 0
				return false
			}
		} 
		if _gun.weapon.parts.recoil_spring != noone 
		{
			obj_item_manager.component_number += 1
			if right_modifiers[4] != 0
			{
				obj_item_manager.actual_comp_num += 1
			}
			else
			{
				obj_item_manager.actual_comp_num = 0
			obj_item_manager.component_number = 0
				return false
			}
		} 
		if _gun.weapon.parts.firing_pin != noone 
		{
			obj_item_manager.component_number += 1
			if right_modifiers[12] != 0
			{
				obj_item_manager.actual_comp_num += 1
			}
			else
			{
				
				obj_item_manager.actual_comp_num = 0
			obj_item_manager.component_number = 0
				return false
			}
		} 
		if _gun.weapon.parts.extractor != noone 
		{
			obj_item_manager.component_number += 1
			if right_modifiers[13] != 0
			{
				obj_item_manager.actual_comp_num += 1
			}
			else
			{
				obj_item_manager.actual_comp_num = 0
			obj_item_manager.component_number = 0
				return false
			}
		} 
		if _gun.weapon.parts.bolt_slide != noone 
		{
			obj_item_manager.component_number += 1
			if right_modifiers[14] != 0
			{
				obj_item_manager.actual_comp_num += 1
			}
			else
			{
				obj_item_manager.actual_comp_num = 0
				obj_item_manager.component_number = 0
				return false
			}
		} 
		if obj_item_manager.actual_comp_num == obj_item_manager.component_number
		{
			return true
		} else
		{
			obj_item_manager.actual_comp_num = 0
			obj_item_manager.component_number = 0
			return false
		}
	}
	obj_item_manager.actual_comp_num = 0
	obj_item_manager.component_number = 0
}