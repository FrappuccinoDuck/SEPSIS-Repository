// Inherit the parent event
event_inherited();

if global.show_enemy_stats == true
{
	draw_text(x, y-20, armor_condition)
	draw_text(x, y, armor)
	draw_text(x, y+20, armor_level)
	draw_text(x, y+40, blood_levels)
}