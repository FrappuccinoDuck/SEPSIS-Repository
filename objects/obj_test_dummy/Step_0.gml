
event_inherited();

if place_meeting(x, y, obj_ACP380_single)
{
	hit_count += 1
}
if hit_count >= 5
{
	instance_destroy()
}
if delay == true
{
	delay_timer += 1
	if delay_timer >= 4
	{
		delay = false
		delay_timer = 0
	}
}