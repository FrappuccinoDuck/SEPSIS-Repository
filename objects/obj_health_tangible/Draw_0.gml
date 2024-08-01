_xx = camera_get_view_x(view_camera[0])
_yy = camera_get_view_y(view_camera[0])

if (index > 9 && index <= 20 && obj_health_manager.health_tab == 2) && obj_health_manager.health_open == true
{
	if place_meeting(x, y, obj_mouse)
	{
		draw_self()
	}
}

if place_meeting(x, y, obj_mouse) && ((index > 9 && index <= 20 && obj_health_manager.health_tab == 2) || (index <= 9 && obj_health_manager.health_tab == 0)) && obj_health_manager.health_open == true
{
	draw_sprite_ext(spr_ui_no_grid_blue, 0, mouse_x + 25, mouse_y, 5, 5, 0, c_white, 1)
		draw_text_transformed(mouse_x + 40, mouse_y + 10, "Bleeding", 1, 1, 0)
		if bleed_amount > 0
		{
			draw_text_transformed(mouse_x + 40, mouse_y + 30, string($"{blood_loss_arr[bleed_amount-1]} mL per second"), 0.8, 0.8, 0)
		}
		for(var i = 0; i < bleed_amount; i++)
		{
			draw_sprite_ext(spr_blood_ui, 0, mouse_x + 180+25*i, mouse_y+10, 1, 1, 0, c_white, 1)
		}
		if applied_item != noone
		{
			draw_sprite(applied_item.spr, 0, x, y)
			if mouse_check_button_pressed(mb_left) && global.mouse_item == noone
			{
				global.mouse_item = applied_item
				obj_item_manager.mouse_modifiers = applied_mods
				applied_item = noone
				applied_mods = 0
			}
		}
		if global.mouse_item != noone && global.mouse_item.type == "Medical" && mouse_check_button_pressed(mb_left)
		{
			applied_item = global.mouse_item
			applied_mods = obj_item_manager.mouse_modifiers
			global.mouse_item = noone
			obj_item_manager.mouse_modifiers = 0
		}
		
		if bleeding == false
		{
			bleed_amount = 0
		}
		if bleed_amount == 0
		{
			bleeding = false
		}
		if keyboard_check_pressed(ord("2"))
		{
			if bleed_amount < 5
			{
				bleed_amount += 1
				bleeding = true
			} else
			{
				bleed_amount = 0
				bleeding = false
			}
		}
}

/*
if place_meeting(x, y, obj_mouse) && obj_health_manager.health_open == true && index == 11 && obj_health_manager.health_tab == 2
{
	draw_sprite_ext(spr_ui_no_grid_opaque, 0, _xx+896, _yy+540, 6, 1.5, 0, c_white, 1)
	draw_sprite_ext(spr_heartbeat2, heart_val, _xx+896, _yy+512, 1.5, 0.6, 0, c_white, 1)
}
*/
if timer <= fps
{
	timer += 1
} else
{
	timer = 0
	if bleeding == true
	{
		bleed_timer += 1
		
		if bleed_amount > 1
		{
			global.blood_levels -= random_range(blood_loss_arr[bleed_amount-2], blood_loss_arr[bleed_amount-1])
		} else
		{
			global.blood_levels -= random(blood_loss_arr[bleed_amount-1])
		}
	} else
	{
		bleed_timer = 0
	}
}
if bleed_timer >= 60 * bleed_amount
		{
			bleed_timer = 0
			bleed_amount -= 1
			if bleed_amount == 0
			{
				bleeding = false
			}
		}

