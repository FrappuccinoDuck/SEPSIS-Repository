

if keyboard_check_pressed(obj_game_initializers.page_navigation_l) && health_tab > 0
{
	health_tab -= 1
}

if keyboard_check_pressed(obj_game_initializers.page_navigation_r) && health_tab < 2
{
	health_tab += 1	
}


global.whole_bleeding = global.bleed_amounts[0] + global.bleed_amounts[1] + global.bleed_amounts[2] + global.bleed_amounts[3] + global.bleed_amounts[4] + global.bleed_amounts[5] + global.bleed_amounts[6] + global.bleed_amounts[7] + global.bleed_amounts[8] + global.bleed_amounts[9] + global.bleed_amounts[10] + global.bleed_amounts[11] + global.bleed_amounts[12] + global.bleed_amounts[13] + global.bleed_amounts[14] + global.bleed_amounts[15] + global.bleed_amounts[16] + global.bleed_amounts[17] + global.bleed_amounts[18] + global.bleed_amounts[19] 