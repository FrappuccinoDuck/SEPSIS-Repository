x = mouse_x + global.offset_x 
y = mouse_y + global.offset_y 
_xx = camera_get_view_x(view_camera[0]) 
_yy = camera_get_view_y(view_camera[0])

if distance_to_object(obj_player) < distance_val
{
	global.distance_from_player = distance_to_object(obj_player)
} else
{
	global.distance_from_player = distance_val-1
	
}
global.point_direction = point_direction(obj_player.x, obj_player.y, obj_mouse.x, obj_mouse.y)

if obj_item_manager.throwing == true && obj_item_manager.scoped == false
{
	if place_meeting(x, y, obj_solid)
	{
		sprite_index = spr_mouse_no
		image_xscale = 0.5
		image_yscale = 0.5
		global.can_throw = false
	} else
	{
		sprite_index = spr_mouse_throw
		image_xscale = 1
		image_yscale = 1
		global.can_throw = true
	}
} else if  obj_item_manager.throwing == false
{
	if obj_item_manager.scoped == false
	{
		image_xscale = 1
		image_yscale = 1
		if obj_item_manager.stats_open == true || obj_health_manager.health_open == true
		{
			sprite_index = spr_mouse_main
		} else
		{
			if distance_to_object(obj_player) >= distance_val
			{
				sprite_index = spr_mouse_no_drop
			} else
			{
				sprite_index = spr_mouse
			}
		}
	
		if place_meeting(x, y, obj_solid)
		{
			sprite_index = spr_mouse_main
		}
	}
}

if obj_item_manager.scoped == false
{
	depth = -infinity

	






if mouse_x >= _xx + 32 && mouse_x <= _xx + 189 && mouse_y >= _yy + 606 && mouse_y <= _yy + 734 && global.left_hand_item != global.item_list.two_hand_item && global.left_hand_item != noone
{
	sprite_index = spr_pointer
}
if mouse_x >= _xx + 224 && mouse_x <= _xx + 381 && mouse_y >= _yy + 606 && mouse_y <= _yy + 734 && global.right_hand_item != global.item_list.two_hand_item && global.right_hand_item != noone
{
	sprite_index = spr_pointer
}
}