

_xx = camera_get_view_x(view_camera[0])
_yy = camera_get_view_y(view_camera[0])



if place_meeting(x, y, obj_mouse) && obj_health_manager.health_open == true && obj_health_manager.health_tab == 1
{
	global.selected_bone = index
	
}

if broken_amount == 0
{
	condition_max = 100
}
if broken_amount == 1
{
	condition_max = 90
}
if broken_amount == 2
{
	condition_max = 80
}
if broken_amount == 3
{
	condition_max = 70
}
if broken_amount == 4
{
	condition_max = 60
}
if broken_amount == 5
{
	condition_max = 50
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
	if permanent_fracture == false
	{
		if broken == true 
		{
			global.calcium -= 0.05*broken_amount
			broken_timer += 1
		
			if broken_amount > 1
			{
				//condition -= random_range(condition_degradation_arr[broken_amount-2], condition_degradation_arr[broken_amount-1])
			} else
			{
				//condition -= random(condition_degradation_arr[broken_amount-1])
			}
		} else
		{
			broken_timer = 0
		}
	
		if temp_heal > 0
		{
			temp_heal -= 1
			condition += 1
		}
	}
}

if broken_timer >= 60 * broken_amount && permanent_fracture == false
{
	broken_timer = 0
	broken_amount -= 1
	
	if broken_amount == 0
	{
		broken = false
		
	}	
}
	

if condition > condition_max
{
	condition = condition_max
}

if obj_player.xspd != 0 || obj_player.yspd != 0
{
	if ((index >= 12 && index <= 17) || (index == 22 || index == 23)) && condition < 100
	{
		if irandom(condition) == 1
		{
			condition -= 1
			if irandom(condition) == 1
				{
					audio_play_sound(snd_grunt, 1, 0)
				}
		}
	}
}
if ((index >= 6 && index <= 11) || (index == 20 || index == 21)) && condition < 100
	{
		global.shake = (100-condition)/100
		if obj_item_manager.arm_degrade == true
		{
			if irandom(condition) == 1
			{
				condition -= 1
				if irandom(condition) == 1
				{
					audio_play_sound(snd_grunt, 1, 0)
				}
			}
		}
		
	}