if obj_health_manager.health_tab == 1 && index == 0
			{
				draw_sprite_ext(spr_main_character_model, 10, _xx+140.25, _yy+128, 2.5, 2.5, 0, c_white, 1)
				//draw_sprite_ext(spr_skeleton, 0, _xx+140.25, _yy+128, 2.5, 2.5, 0, c_white, 1)
			}
if obj_health_manager.health_tab == 1 && obj_health_manager.health_open == true
{
	draw_self()
}