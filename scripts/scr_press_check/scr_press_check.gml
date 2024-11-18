function press_check()
{
	with instance_create_depth(x, y, -9, obj_temporary_notification)
	{
		if obj_item_manager.selected_chamber[obj_item_manager.using_hand] == 1
		{
			notification = "Round In Chamber"
		} else
		{
			notification = "No Round In Chamber"
		}
	}
}