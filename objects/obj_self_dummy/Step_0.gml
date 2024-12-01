
event_inherited();

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

if timer < fps
{
	timer += 1
} else
{
	if blood_levels > 0
	{
		blood_levels -= current_bleed
		if current_bleed > 0
		{
			/*var instance_blood = instance_create_depth(x, y, depth, obj_Particles)
			instance_blood.set_size(0, 0.1)
			instance_blood.set_sprite(spr_Blood, false, false, true)
		
			instance_blood.set_orientation(0, 380)
			instance_blood.set_color_mix(c_red, make_color_rgb(128, 0, 0))
			instance_blood.set_alpha(random_range(0.6, 1), random_range(0.6, 1))
			instance_blood.set_direction(0, 0)
			instance_blood.set_speed(0, 0, 0)
			instance_blood.set_life(0, 100000)
		
			instance_blood.burst(current_bleed/2)*/
		}
	} else
	{
		blood_levels = 0
	}
	timer = 0
}