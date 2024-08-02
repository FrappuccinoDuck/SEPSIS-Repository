draw_self()

if distance_to_object(obj_player) > distance_val-1
{
	global.mouse_dropx = lengthdir_x(global.distance_from_player+50, global.point_direction)
	global.mouse_dropy = lengthdir_y(global.distance_from_player+50, global.point_direction)
} else
{
	global.mouse_dropx = x-obj_player.x
	global.mouse_dropy = y-obj_player.y
}

if place_meeting(x, y, obj_health_tangible)
{
	global.mouse_object = other
}

if obj_item_manager.stats_open == false && obj_health_manager.health_open == false && obj_item_manager.scoped == false
{
	//draw_sprite_ext(spr_mouse_second, 0, global.mouse_dropx+obj_player.x, global.mouse_dropy+obj_player.y, 1, 1, 0, c_white, 0.25)
}

//draw_line(obj_player.x, obj_player.y, global.mouse_dropx+obj_player.x, global.mouse_dropy+obj_player.y)