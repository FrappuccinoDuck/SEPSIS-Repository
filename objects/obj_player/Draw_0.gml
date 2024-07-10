if dead == true
{
	x = 0
	y = 0
	depth = -infinity
	layer_set_visible("death_screen", true)
	draw_set_halign(fa_middle)
	draw_text(668, 321, "You Have Died")
	draw_text(668, 353, global.death_type)
	draw_set_halign(fa_left)
	obj_viewport.x = 0
	obj_viewport.y = 0
}

draw_self()