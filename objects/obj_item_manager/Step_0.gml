for(var i = 0; i < current_belt_size; i++)
{
	if keyboard_check_pressed(ord(string(i+1))) && global.current_hotbar_item != i+1
	{
		global.current_hotbar_item = i+1
		show_debug_message(global.current_hotbar_item)
	}
}

if global.belt != noone
{
	current_belt_size = global.belt.armor.capacity
}


if keyboard_check_pressed(obj_game_initializers.inventory_open_key) && debug_menu == false && global.mouse_item == noone && global.right_mouse_item == noone && obj_health_manager.health_open == false
{
	stats_open = !stats_open
	menu_switch = 0
}
if keyboard_check_pressed(obj_game_initializers.inventory_open_key) && obj_item_manager.debug_menu == false && obj_health_manager.health_open == true
{
	obj_health_manager.health_open = false
}
if keyboard_check_pressed(obj_game_initializers.inventory_open_key) && obj_item_manager.debug_menu == false && player_stats == true
{
	player_stats = false
}
//x = obj_player.x
//y = obj_player.y

if keyboard_check_pressed(ord("W")) && menu_switch > 0
{
	menu_switch -= 1
}
if keyboard_check_pressed(ord("S")) && menu_switch < 2
{
	menu_switch += 1
}



if stats_open == true && menu_switch == 1
{
	stats_open = false
	obj_health_manager.health_open = true
}
if obj_health_manager.health_open == true && menu_switch == 0
{
	obj_health_manager.health_open = false
	stats_open = true
}
if obj_health_manager.health_open == true && menu_switch == 2
{
	obj_health_manager.health_open = false
	player_stats = true
}
if player_stats == true && menu_switch == 1
{
	player_stats = false
	obj_health_manager.health_open = true
}

if global.left_hand_item == global.item_list.two_hand_item && global.right_hand_item == noone && using_hand == false
{
	global.left_hand_item = noone
}
if global.right_hand_item == global.item_list.two_hand_item && global.left_hand_item == noone && using_hand == true
{
	global.right_hand_item = noone
}

if global.left_hand_item != noone && keyboard_check_pressed(obj_game_initializers.bash_key)
{
	//show_debug_message(string($"Melee with LEFT HAND- {global.left_hand_item}"))
	melee(global.left_hand_item)
}
if global.right_hand_item != noone && keyboard_check_pressed(obj_game_initializers.bash_key)
{
	//show_debug_message(string($"Melee with RIGHT HAND- {global.right_hand_item}"))
	melee(global.right_hand_item)
}

if global.left_hand_item != noone && keyboard_check_pressed(obj_game_initializers.throw_key) && using_hand == 0
{
	//show_debug_message(string($"Throw with LEFT HAND- {global.left_hand_item}"))
	throw_item(global.left_hand_item)
}
if global.right_hand_item != noone && keyboard_check_pressed(obj_game_initializers.throw_key) && using_hand == 1
{
	//show_debug_message(string($"Throw with RIGHT HAND- {global.right_hand_item}"))
	throw_item(global.right_hand_item)
}


global.item_list.pistole_vz24.weapon.suppressor = global.item_list.xmini_suppressor
global.item_list.gold_pistole_vz24.weapon.suppressor = global.item_list.xmini_suppressor
global.item_list.sa23.weapon.suppressor = global.item_list.zrapid_suppressor
global.item_list.skorpion.weapon.suppressor = global.item_list.zrapid_suppressor
global.item_list.vz58.weapon.suppressor = global.item_list.yheath_suppressor
global.item_list.zbrojovka_304.weapon.suppressor = global.item_list.yheath_suppressor

global.item_list.pistole_vz24.ammo = global.item_list.ACP380_single

global.parts_list.cz24_parts.trigger = global.item_list.single_action_trigger
global.parts_list.cz24_parts.hammer = global.item_list.single_action_hammer
global.parts_list.cz24_parts.barrel = global.item_list.short_barrel
global.parts_list.cz24_parts.recoil_spring = global.item_list.spring_15lbs
global.parts_list.cz24_parts.extractor = global.item_list.claw_extractor


global.item_list.vz58.ammo = global.item_list.single_762x39

global.parts_list.vz58_parts.trigger = global.item_list.single_action_trigger
global.parts_list.vz58_parts.hammer = global.item_list.enclosed_hammer
global.parts_list.vz58_parts.barrel = global.item_list.medium_barrel
global.parts_list.vz58_parts.recoil_spring = global.item_list.spring_15lbs
global.parts_list.vz58_parts.firing_pin = global.item_list.spring_pin
global.parts_list.vz58_parts.extractor = global.item_list.claw_extractor
global.parts_list.vz58_parts.bolt_slide = global.item_list.rotating_bolt

global.item_list.vz54.ammo = global.item_list.single_762x45

global.parts_list.vz54_parts.trigger = global.item_list.single_action_trigger
global.parts_list.vz54_parts.barrel = global.item_list.long_barrel
global.parts_list.vz54_parts.firing_pin = global.item_list.spring_pin
global.parts_list.vz54_parts.extractor = global.item_list.claw_extractor
global.parts_list.vz54_parts.bolt_slide = global.item_list.turn_bolt

global.item_list.zbrojovka_304.ammo = global.item_list.single_12gauge

global.parts_list.zbrojovka_304_parts.trigger = global.item_list.single_action_trigger
global.parts_list.zbrojovka_304_parts.barrel = global.item_list.long_barrel
global.parts_list.zbrojovka_304_parts.firing_pin = global.item_list.spring_pin
global.parts_list.zbrojovka_304_parts.extractor = global.item_list.claw_extractor

global.item_list.sa23.ammo = global.item_list.single_762x25

global.parts_list.sa23_parts.trigger = global.item_list.single_action_trigger
global.parts_list.sa23_parts.barrel = global.item_list.short_barrel
global.parts_list.sa23_parts.recoil_spring = global.item_list.spring_25lbs
global.parts_list.sa23_parts.firing_pin = global.item_list.spring_pin
global.parts_list.sa23_parts.extractor = global.item_list.claw_extractor
global.parts_list.sa23_parts.bolt_slide = global.item_list.tilt_bolt

global.item_list.sw_model29.ammo = global.item_list.magnum44

global.parts_list.sw_model29_parts.trigger = global.item_list.double_action_trigger
global.parts_list.sw_model29_parts.hammer = global.item_list.single_action_hammer
global.parts_list.sw_model29_parts.barrel = global.item_list.short_barrel

global.item_list.skorpion.ammo = global.item_list.ACP32

global.parts_list.skorpion_parts.trigger = global.item_list.double_action_trigger
global.parts_list.skorpion_parts.barrel = global.item_list.short_barrel
global.parts_list.skorpion_parts.recoil_spring = global.item_list.spring_25lbs
global.parts_list.skorpion_parts.extractor = global.item_list.claw_extractor
global.parts_list.skorpion_parts.bolt_slide = global.item_list.tilt_bolt

global.item_list.disintegration_pistol.ammo = global.item_list.ACP380_single

global.parts_list.dis_pistol_parts.trigger = global.item_list.super_conductor_circuit
global.parts_list.dis_pistol_parts.hammer = global.item_list.overcharge_modulator
global.parts_list.dis_pistol_parts.barrel = global.item_list.electromagnetic_lenses


if keyboard_check_pressed(obj_game_initializers.switch_hands)
{
	using_hand = !using_hand
	function_wheel = false
}

/*if keyboard_check_pressed(obj_game_initializers.switch_hands) && stats_open == true
{
	if global.left_hand_item != noone && global.right_hand_item != noone
	{
		previous_left = global.left_hand_item
		global.left_hand_item = global.right_hand_item
		previous_ammo = ammo_arr
		ammo_arr = right_ammo_arr
		previous_chamber = chamber_arr
		chamber_arr = right_chamber_arr
	
		global.right_hand_item = previous_left
		right_ammo_arr = previous_ammo
		right_chamber_arr = previous_chamber
		previous_left = noone
		previous_ammo = noone 
		previous_chamber = noone
	}
}*/



if keyboard_check_pressed(obj_game_initializers.page_navigation_l) && nutrition_page > 0
	{
		nutrition_page -= 1
	} 
	if keyboard_check_pressed(obj_game_initializers.page_navigation_r) && nutrition_page < 2
	{
		nutrition_page += 1
	}

if stats_open == false && function_wheel == false
{
	
	if mouse_check_button_pressed(mb_left)
	{
		//first_click = true
	}
	if mouse_check_button_released(mb_left)
	{
		first_click = 0
		fire_amount = 0
	}
	

	if throwing == false && function_wheel_strip == false && function_wheel == false && function_wheel_health == false
	{
		if mouse_check_button(mb_left) && using_hand == true && global.right_hand_item != noone
		{
			global.right_hand_item.effect.lfunc()
			first_click += 1
		}
		else if mouse_check_button_pressed(mb_right) && using_hand == true && global.right_hand_item != noone
		{
			global.right_hand_item.effect.rfunc()
		}
		else if mouse_check_button_pressed(mb_middle) && using_hand == true && global.right_hand_item != noone
		{
			global.right_hand_item.effect.mfunc()
		}

		if mouse_check_button(mb_left) && using_hand == false && global.left_hand_item != noone
		{
			global.left_hand_item.effect.lfunc()
			first_click += 1
		}
		else if mouse_check_button_pressed(mb_right) && using_hand == false && global.left_hand_item != noone
		{
			global.left_hand_item.effect.rfunc()
		}
		else if mouse_check_button_pressed(mb_middle) && using_hand == false && global.left_hand_item != noone
		{
			global.left_hand_item.effect.mfunc()
		}
	}
}

armor_array[0] = global.item_list.test_shirt

/*
if keyboard_check_pressed(obj_game_initializers.save_key)
{
	var spr_string = json_stringify(spr_arr);
	var x_string = json_stringify(x_arr);
	var y_string = json_stringify(y_arr);
	var sizex_string = json_stringify(sizex_arr);
	var sizey_string = json_stringify(sizey_arr);
	var rot_string = json_stringify(rot_arr);
	
    var fn = get_save_filename("", "sprites");
    if (fn != "") {
        var file = file_text_open_write(fn);
        file_text_write_string(file, spr_string);
		file_text_close(file);
	}
	var fn = get_save_filename("", "xvals");
    if (fn != "") {
        var file = file_text_open_write(fn);
		file_text_write_string(file, x_string);
		file_text_close(file);
	}
	var fn = get_save_filename("", "yvals");
    if (fn != "") {
        var file = file_text_open_write(fn);
		file_text_write_string(file, y_string);
		file_text_close(file);
	}
	var fn = get_save_filename("", "sizexvals");
    if (fn != "") {
        var file = file_text_open_write(fn);
		file_text_write_string(file, sizex_string);
		file_text_close(file);
	}
	var fn = get_save_filename("", "sizeyvals");
    if (fn != "") {
        var file = file_text_open_write(fn);
		file_text_write_string(file, sizey_string);
		file_text_close(file);
	}
	var fn = get_save_filename("", "rotationvals");
    if (fn != "") {
        var file = file_text_open_write(fn);
		file_text_write_string(file, rot_string);
		file_text_close(file);
	}
    
}
if keyboard_check_pressed(obj_game_initializers.load_key)
{
	var spr_file = file_text_open_read("sprites");
	var x_file = file_text_open_read("xvals");
	var y_file = file_text_open_read("yvals");
	var sizex_file = file_text_open_read("sizexvals");
	var sizey_file = file_text_open_read("sizeyvals");
	var rot_file = file_text_open_read("rotationvals");
	
	var spr_string = file_text_read_string(spr_file);
	var x_string = file_text_read_string(x_file);
	var y_string = file_text_read_string(y_file);
	var sizex_string = file_text_read_string(sizex_file);
	var sizey_string = file_text_read_string(sizey_file);
	var rot_string = file_text_read_string(rot_file);
	
	file_text_close(spr_file);
	file_text_close(x_file);
	file_text_close(y_file);
	file_text_close(sizex_file);
	file_text_close(sizey_file);
	file_text_close(rot_file);
	
	spr_arr = json_parse(spr_string)
	x_arr = json_parse(x_string)
	y_arr = json_parse(y_string)
	sizex_arr = json_parse(sizex_string)
	sizey_arr = json_parse(sizey_string)
	rot_arr = json_parse(rot_string)
	
	/*struct_foreach(global.item_list, function(_n, _attributes)
	{
		for(var i = 0; i < array_length(spr_arr); i++)
		{
			if spr_arr[i].name == _n
			{
				spr_arr[i]
			}
		}
	})
	
}*/


if keyboard_check_pressed(vk_control) && global.debug_toggle == true
{
	debug_menu = !debug_menu
	keyboard_string = ""
}
if global.debug_toggle == false
{
	debug_menu = false
}

if debug_menu == true 
{
	struct_foreach(global.item_list, function(_n, _attributes)
	{
		if keyboard_string == string($"$spawn.item '{_n}'") 
		{
			if keyboard_check_pressed(vk_enter)
			{
			show_debug_message(_n)
			real_var = variable_struct_get(global.item_list, _n)
			show_debug_message(real_var)
			instance_create_depth(obj_player.x, obj_player.y, -9, real_var.obj)
			//keyboard_string = ""
			}
		}
		if keyboard_string == string($"$enable.hacks") && keyboard_check_pressed(vk_enter)
		{
			game_end()
			show_message("It did not in fact say gullible on the ceiling")
			show_message("Dumbass")
		}
		if keyboard_string == string($"$enable.debug") && keyboard_check_pressed(vk_enter)
		{
			show_debug_log(true)
		}
		if keyboard_string == string($"pr4gu3") && keyboard_check_pressed(vk_enter)
		{
			prague = true
		}
		if keyboard_string == string($"//!r33ceh34d*plz#h354b0z0") && keyboard_check_pressed(vk_enter)
		{
			obj_player.sprite_index = spr_reece_head
			obj_player.image_xscale = 0.4
			obj_player.image_yscale = 0.4
		}
		if keyboard_string == string($"$enable.mod::better_factions") && keyboard_check_pressed(vk_enter)
		{
			obj_player.sprite_index = spr_reece_head
			obj_player.image_xscale = 0.4
			obj_player.image_yscale = 0.4
			obj_test_dummy.sprite_index = spr_brennan_head
			obj_test_dummy.image_xscale = 0.07
			obj_test_dummy.image_yscale = 0.07
		}
	})
}

if keyboard_check_pressed(obj_game_initializers.aim_key)
{
	scoped = true
}
if keyboard_check_released(obj_game_initializers.aim_key)
{
	scoped = false
}

if (using_hand == 1 && global.right_hand_item == noone) && (using_hand == 0 && global.left_hand_item == noone) 
{
	scoped = false
	obj_mouse.sprite_index = spr_mouse
}

if scoped == true 
{
	if left_modifiers[15] != 0 && global.left_hand_item != noone && global.left_hand_item.specs.item_type == "Firearm" && using_hand == 0 
	{
		layer_set_visible("perception_effect", false)
		obj_mouse.image_xscale = left_modifiers[15].specs.bullet
		obj_mouse.image_yscale = left_modifiers[15].specs.bullet
		//obj_mouse.layer = layer_get_id("gas_mask_overlay_ui")
		obj_mouse.sprite_index = left_modifiers[15].specs.second_sprite
		obj_viewport.L_mratio = real(left_modifiers[15].specs.short_name) * (view_get_wport(view_camera[0])/window_get_width())
		obj_player.light[| eLight.Range] = 2818 * real(left_modifiers[15].specs.short_name)
		if left_modifiers[21] > 50
		{
			obj_mouse.image_index = 0
		}
		else
		{
			obj_mouse.image_index = 1
		}
	}
	if right_modifiers[15] != 0 && global.right_hand_item != noone && global.right_hand_item.specs.item_type == "Firearm" && using_hand == 1 
	{
		layer_set_visible("perception_effect", false)
		obj_mouse.image_xscale = right_modifiers[15].specs.bullet
		obj_mouse.image_yscale = right_modifiers[15].specs.bullet
		//obj_mouse.layer = layer_get_id("gas_mask_overlay_ui")
		obj_mouse.sprite_index = right_modifiers[15].specs.second_sprite
		obj_viewport.L_mratio = real(right_modifiers[15].specs.short_name) * (view_get_wport(view_camera[0])/window_get_width())
		obj_player.light[| eLight.Range] = 2818 * real(right_modifiers[15].specs.short_name)
		if right_modifiers[21] > 50
		{
			obj_mouse.image_index = 0
		}
		else
		{
			obj_mouse.image_index = 1
		}
	}
	 
	if left_modifiers[15] == 0 && global.left_hand_item != noone && global.left_hand_item.specs.item_type == "Firearm" && using_hand == 0
	{
		
		obj_mouse.sprite_index = global.left_hand_item.specs.second_sprite
		obj_mouse.image_xscale = 1
		obj_mouse.image_yscale = 1
	}
	if right_modifiers[15] == 0 && global.right_hand_item != noone && global.right_hand_item.specs.item_type == "Firearm" && using_hand == 1
	{
		obj_mouse.sprite_index = global.right_hand_item.specs.second_sprite
		obj_mouse.image_xscale = 1
		obj_mouse.image_yscale = 1
	}
	
} else
{
	layer_set_visible("perception_effect", true)
	obj_mouse.image_xscale = 1
	obj_mouse.image_yscale = 1
	obj_mouse.layer = layer_get_id("Instances_2")
	obj_viewport.L_mratio = view_get_wport(view_camera[0])/window_get_width()
	obj_player.light[| eLight.Range] = 2818
	obj_mouse.image_xscale = 2
	obj_mouse.image_yscale = 2
}

if keyboard_check_pressed(ord("R")) && global.left_hand_item != noone && global.left_hand_item.specs.item_type == "Firearm" && using_hand == 0 
{
	audio_play_sound(snd_switch_firing_mode, 1, 0)
	if left_modifiers[24] == 1 && global.left_hand_item.weapon.short_burst == true
	{
		left_modifiers[24] = 2
	}
	else if left_modifiers[24] == 1 && global.left_hand_item.weapon.short_burst == false && global.left_hand_item.weapon.full_burst == true
	{
		left_modifiers[24] = 3
	}
	else if left_modifiers[24] == 2 && global.left_hand_item.weapon.full_burst == true
	{
		left_modifiers[24] = 3
	}
	else if left_modifiers[24] == 2 && global.left_hand_item.weapon.full_burst == false
	{
		left_modifiers[24] = 1
	}
	else if left_modifiers[24] == 3 && global.left_hand_item.weapon.single_burst == true
	{
		left_modifiers[24] = 1
	}
	
}

if keyboard_check_pressed(ord("R")) && global.right_hand_item != noone && global.right_hand_item.specs.item_type == "Firearm" && using_hand == 1 
{
	audio_play_sound(snd_switch_firing_mode, 1, 0)
	if right_modifiers[24] == 1 && global.right_hand_item.weapon.short_burst == true
	{
		right_modifiers[24] = 2
	}
	else if right_modifiers[24] == 1 && global.right_hand_item.weapon.short_burst == false && global.right_hand_item.weapon.full_burst == true
	{
		right_modifiers[24] = 3
	}
	else if right_modifiers[24] == 2 && global.right_hand_item.weapon.full_burst == true
	{
		right_modifiers[24] = 3
	}
	else if right_modifiers[24] == 2 && global.right_hand_item.weapon.full_burst == false
	{
		right_modifiers[24] = 1
	}
	else if right_modifiers[24] == 3 && global.right_hand_item.weapon.single_burst == true
	{
		right_modifiers[24] = 1
	}
	
}


if !instance_exists(obj_light_ball)
{
		layer_set_visible("gunshot_effect", false)
}

if audio_is_playing(snd_bolt_open_close)
{
	with(instance_create_depth(0, 0, -9, obj_temporary_notification))
	{
		notification = "Opening Bolt..."
		timer_max = 1
	}
}
if audio_is_playing(snd_pistol_chamber)
{
	with(instance_create_depth(0, 0, -9, obj_temporary_notification))
	{
		notification = "Chambering..."
		timer_max = 1
	}
}
if audio_is_playing(snd_small_mag_insert)
{
	with(instance_create_depth(0, 0, -9, obj_temporary_notification))
	{
		notification = "Inserting Mag..."
		timer_max = 1
	}
}
if audio_is_playing(snd_small_mag_remove)
{
	with(instance_create_depth(0, 0, -9, obj_temporary_notification))
	{
		notification = "Removing Mag..."
		timer_max = 1
	}
}
if audio_is_playing(snd_snap_open_shotgun)
{
	with(instance_create_depth(0, 0, -9, obj_temporary_notification))
	{
		notification = "Opening..."
		timer_max = 1
	}
}
if audio_is_playing(snd_close_shotgun)
{
	with(instance_create_depth(0, 0, -9, obj_temporary_notification))
	{
		notification = "Closing..."
		timer_max = 1
	}
}
if audio_is_playing(snd_load_bullet)
{
	with(instance_create_depth(0, 0, -9, obj_temporary_notification))
	{
		notification = "Loading..."
		timer_max = 1
	}
}
if audio_is_playing(snd_unload_bullet)
{
	with(instance_create_depth(0, 0, -9, obj_temporary_notification))
	{
		notification = "Unloading..."
		timer_max = 1
	}
}
if audio_is_playing(snd_revolver_open)
{
	with(instance_create_depth(0, 0, -9, obj_temporary_notification))
	{
		notification = "Opening Cylinder..."
		timer_max = 1
	}
}

if throwing == true && mouse_check_button_pressed(mb_left) && global.can_throw == true
{
	var point_x = mouse_x
	var point_y = mouse_y
	
	throwing = false
	with(instance_create_depth(obj_player.x, obj_player.y, -9, current_throw.obj))
	{
		p_x = point_x
		p_y = point_y
		
		for(var i; i < obj_item_manager.modifier_amount; i++)
		{
			
			if obj_item_manager.using_hand == 0
			{
				modifier[i] = obj_item_manager.left_modifiers[i]
			} else
			{
				modifier[i] = obj_item_manager.right_modifiers[i] 
			}
		}
		if obj_item_manager.using_hand == 0 && global.left_hand_item != noone
		{
			ammo = obj_item_manager.hand_ammo[0]
			chambered = obj_item_manager.selected_chamber[0]
			mod_arr = obj_item_manager.selected_mod[0]
		} if obj_item_manager.using_hand == 1 && global.right_hand_item != noone
		{
			ammo = obj_item_manager.hand_ammo[1]	
			chambered = obj_item_manager.selected_chamber[1]
			mod_arr = obj_item_manager.selected_mod[1]
		}
	}
	if using_hand == 0 && global.left_hand_item != noone
	{
		global.left_hand_amount -= 1
		if global.left_hand_amount == 0
		{
			current_throw = noone
			global.left_hand_item = noone
			hand_ammo[0] = 0
			selected_chamber[0] = false
			selected_mod[0] = 0
		}
	} if using_hand == 1 && global.right_hand_item != noone
	{
		global.right_hand_amount -= 1
		if global.right_hand_amount == 0
		{
			current_throw = noone
			global.right_hand_item = noone
			hand_ammo[1] = 0
			selected_chamber[1] = false
			selected_mod[1] = 0
		}
	}
	
}
	
if mouse_check_button_pressed(mb_side2)
{
	//show_debug_message("test")
	if left_modifiers[29] != 0 && using_hand == 0
	{
		toggle_underbarrel()
		
	}
	if right_modifiers[29] != 0 && using_hand == 1
	{
		toggle_underbarrel()
	}
}



depth = -200