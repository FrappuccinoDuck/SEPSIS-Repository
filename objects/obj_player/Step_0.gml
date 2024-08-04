event_inherited()

space_key = keyboard_check(vk_space);
right_key = keyboard_check(vk_right) || keyboard_check(ord("D")) || gamepad_axis_value(0, gp_axislh) > 0;
up_key = keyboard_check(vk_up) || keyboard_check(ord("W")) || gamepad_axis_value(0, gp_axislv) < -0.7;
left_key = keyboard_check(vk_left) || keyboard_check(ord("A"))|| gamepad_axis_value(0, gp_axislh) < -0.7;
down_key = keyboard_check(vk_down) || keyboard_check(ord("S")) || gamepad_axis_value(0, gp_axislv) > 0

xspd = (right_key - left_key) * (move_spd + 1);
yspd = (down_key - up_key) * (move_spd + 1);
xspd = (right_key - left_key) * (move_spd + 2);
yspd = (down_key - up_key) * (move_spd + 2);

if place_meeting(x + xspd, y, obj_solid) || place_meeting(x + xspd, y, obj_window_wall) || place_meeting(x + xspd, y, obj_no_shadow_collide) || no_move == true || dead == true
	{
	xspd = 0;
	}
if place_meeting(x, y + yspd, obj_solid) || place_meeting(x, y + yspd, obj_window_wall) || place_meeting(x + xspd, y, obj_no_shadow_collide) || no_move == true || dead == true
	{
	yspd = 0;
	}

if xspd == 0 && yspd == 0
{
	image_index = 0
}

audio_listener_position(x, y, 0)
audio_listener_orientation(0, 0, 1, 0, -1, 0);

if global.blood_levels <= 0
{
	dead = true
	global.death_type = "Player lost all their blood"
}

direction = point_direction(x, y, mouse_x, mouse_y)
image_angle = direction

if place_meeting(x, y, obj_door)
{
	global.door_touch = true
} else
{
	global.door_touch = false
}

if obj_item_manager.stats_open == false && obj_health_manager.health_open == false && obj_item_manager.debug_menu == false && layer_get_visible("close_inspect_inworld_ui") == false && obj_item_manager.player_stats == false
		
{
	if global.wasd_controls == false
	{
	
		if keyboard_check_pressed(obj_game_initializers.left_foot) && r_init == false
		{
			l_init = true
			timer = 0
			move_init = true
			show_debug_message("left")
		} 
		if keyboard_check_pressed(obj_game_initializers.right_foot) && l_init == false
		{
			r_init = true
			timer = 0
			move_init = true
			show_debug_message("right")
		} 

		if l_init == true
		{
			timer += 1
			if timer < 30
			{
				if keyboard_check_pressed(obj_game_initializers.right_foot)
				{
					if timer >= 0 && timer <= 20
					{
						show_debug_message("right limp")
					}
					else
					{
					show_debug_message("right complementary")
					}
					move_init = true	
					l_init = false
					timer = 0
				} 
			} else
			{
				l_init = false
				timer = 0
				move_init = false
			}
		}
		if r_init == true
		{
			timer += 1
			if timer < 30
			{
				if keyboard_check_pressed(obj_game_initializers.left_foot)
				{
					if timer >= 0 && timer <= 20
					{
						show_debug_message("left limp")
					} else
					{
					show_debug_message("left complementary")
					}
					move_init = true	
					r_init = false
					timer = 0
				} 
			} else
			{
				r_init = false
				timer = 0
				move_init = false
			}
		}

		if move_init == true
		{
			move_timer += 1
			if move_timer < 20
			{
				mp_linear_step_object(mouse_x, mouse_y, 8, obj_solid)
		
			} else
			{
				move_timer = 0
				move_init = false
		
			}
		}
		 else
		{
			speed = 0
		}

	} else
	{
		x += xspd;
		y += yspd;
	}
}

if global.dynamic_lighting == false && global.ambientShadowIntensity > 0 
{
	global.ambientShadowIntensity = 0
}
else if global.dynamic_lighting == true && global.ambientShadowIntensity < 1
{
	global.ambientShadowIntensity = 1
}

for(var i = 0; i < array_length(global.backpack_arr); i++)
{
	current_carry += global.backpack_arr[i].specs.weight
	show_debug_message(string($"WEIGHT - {current_carry}"))
	if current_carry >= global.max_carry_weight
	{
		no_move = true
	} else
	{
		no_move = false
	}
}
present_weight = current_carry
current_carry = 0

if no_move == true
{
	with(instance_create_depth(0, 0, -9, obj_temporary_notification))
	{
		notification = string($"Too Heavy to Move [{obj_player.present_weight}/{global.max_carry_weight} lbs.]")
	}
}

if obj_item_manager.stats_open == true
{
	if init == false
	{
		prev_x = x
		prev_y = y
		init = true
	}
		show_debug_message(prev_x)
		
		x = 0
		y = 0
		obj_viewport.x = 0
		obj_viewport.y = 0
} else
{
	if init == true
	{
		x = prev_x
		y = prev_y
		init = false
		show_debug_message("test")
	}
}

