function eat(_item, _bite_total){
	if first_click == 0
	{
		if global.using_hand == 0
		{
			obj_item_manager.left_modifiers[40] -= 1
			if obj_item_manager.left_modifiers[40] <= 0
			{
				global.left_hand_item = noone
			}
		} else
		{
			 obj_item_manager.right_modifiers[40] -= 1
			if obj_item_manager.right_modifiers[40] <= 0
			{
				global.right_hand_item = noone
			}
		}
	
		if _item.minerals != noone
		{
			global.calcium += _item.minerals.calc/_bite_total
			global.phosph += _item.minerals.phosph/_bite_total
			global.magnesium += _item.minerals.mag/_bite_total
			global.potass += _item.minerals.potass/_bite_total
			global.iron += _item.minerals.iron/_bite_total
			global.zinc += _item.minerals.zinc/_bite_total
			global.copper += _item.minerals.copper/_bite_total
		}
		if _item.vit != noone
		{
			global.vit_a += _item.vit.vita/_bite_total
			global.thiamin += _item.vit.thiamin/_bite_total
			global.rivoflavin += _item.vit.ribo/_bite_total
			global.niacin += _item.vit.niacin/_bite_total
			global.vit_e += _item.vit.vite/_bite_total
			global.folate += _item.vit.fol/_bite_total
			global.vit_k += _item.vit.vitk/_bite_total
			global.vit_c += _item.vit.vitc/_bite_total
			global.vit_d += _item.vit.vitd/_bite_total
		}
		if _item.food != noone
		{
			global.player_energy += _item.food.cal/_bite_total
			global.player_fat += _item.food.fat/_bite_total
			global.player_om3 += _item.food.om3fattyacids/_bite_total
			global.player_carbohydrates += _item.food.carb/_bite_total
			global.player_free_sugars += _item.food.freesug/_bite_total
			global.player_fiber += _item.food.fiber/_bite_total
			global.player_salt += _item.food.salt/_bite_total
			global.player_protein += _item.food.prot/_bite_total
		}
	
		if global.calcium > global.calc_m
		{
			global.calcium = global.calc_m
		}
		if global.phosph > global.phosph_m
		{
			global.phosph = global.phosph_m
		}
		if global.magnesium > global.magnesium_m
		{
			global.magnesium = global.magnesium_m
		}
		if global.potass > global.potass_m
		{
			global.potass = global.potass_m
		}
		if global.iron > global.iron_m
		{
			global.iron = global.iron_m
		}
		if global.copper > global.copper_m
		{
			global.copper = global.copper_m
		}
		if global.zinc > global.zinc_m
		{
			global.zinc = global.zinc_m
		}
	
	
		if global.vit_a > global.vit_a_m
		{
			global.vit_a = global.vit_a_m
		}
		if global.thiamin > global.thiamin_m
		{
			global.thiamin = global.thiamin_m
		}
		if global.rivoflavin > global.rivo_m
		{
			global.rivoflavin = global.rivo_m
		}
		if global.niacin > global.niacin_m
		{
			global.niacin = global.niacin_m
		}
		if global.vit_e > global.vit_e_m
		{
			global.vit_e = global.vit_e_m
		}
		if global.folate > global.folate_m
		{
			global.folate = global.folate_m
		}
		if global.vit_k > global.vit_k_m
		{
			global.vit_k = global.vit_k_m
		}
		if global.vit_c > global.vit_c_m
		{
			global.vit_c = global.vit_c_m
		}
		if global.vit_d > global.vit_d_m
		{
			global.vit_d = global.vit_d_m
		}
	
	
		if global.player_energy > global.energy_m
		{
			global.player_energy = global.energy_m
		}
		if global.player_fat > global.fat_m
		{
			global.player_fat = global.fat_m
		}
		if global.player_om3 > global.om3_m
		{
			global.player_om3 = global.om3_m
		}
		if global.player_carbohydrates > global.carbohydrate_m
		{
			global.player_carbohydrates = global.carbohydrate_m
		}
		if global.player_free_sugars > global.free_sugars_m
		{
			global.player_free_sugars = global.free_sugars_m
		}
		if global.player_protein > global.protein_m
		{
			global.player_protein = global.protein_m
		}
		if global.player_fiber > global.fiber_m
		{
			global.player_fiber = global.fiber_m
		}
		if global.player_salt > global.salt_m
		{
			global.player_salt = global.salt_m
		}
	}
}