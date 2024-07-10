event_inherited()

if modifier[35] == false
{
	grenade_timer += 1
	if grenade_timer >= 100
	{
		instance_destroy()
		audio_play_sound(snd_grenade_explosion, 1, 0)
		instance_create_depth(x, y, -9, obj_explosion)
	}
}
if hit == true
{
	grenade_timer += 1
	if grenade_timer >= irandom(10)
	{
		instance_destroy()
		audio_play_sound(snd_grenade_explosion, 1, 0)
		instance_create_depth(x, y, -9, obj_explosion)
	}
}