_xx = camera_get_view_x(view_camera[0])
_yy = camera_get_view_y(view_camera[0])

if health_open == true
{
	layer_set_visible("health_ui", true)
	
	
	if health_tab == 2
	{
		layer_set_visible("health_tangibles_organs", true)
	} else
	{
		layer_set_visible("health_tangibles_organs", false)
		layer_set_visible("health_tangibles_dermal", true)
	}
	
	layer_x("health_ui", _xx)
	layer_y("health_ui", _yy)
	layer_x("health_tangibles_dermal", _xx)
	layer_y("health_tangibles_dermal", _yy)
	layer_x("health_tangibles_organs", _xx)
	layer_y("health_tangibles_organs", _yy)
	
	// PIXEL OFFSET: 8 PIXELS
	draw_text(_xx+36, _yy+68, string($"Health: {health_sections[health_tab]}"))
	//draw_text(_xx+392, _yy+134, string($"Body Temp.           {global.body_temp} F"))
	if global.selected_part != noone
	{
		//show_message(global.selected_part)
		draw_text(_xx+872, _yy+36, string($"{global.parts[global.selected_part]}"))
		draw_text_ext(_xx+872, _yy+420, string($"Condition"), 20, 350)
		draw_text_ext(_xx+872, _yy+456, string($"{global.parts_desc[global.selected_part]}"), 20, 350)
	}
	draw_sprite(spr_dot_counter, health_tab, _xx+320, _yy+48)
	
} else
{
	layer_set_visible("health_ui", false)
	layer_set_visible("health_tangibles_organs", false)
}