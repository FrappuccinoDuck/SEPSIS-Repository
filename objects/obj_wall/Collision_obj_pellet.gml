
wall_distance = distance_to_object(obj_player)
wall_gain = 100/wall_distance

if wall_gain > 1
{
	wall_gain = 1
}
audio_play_sound(snd_wood_bullet_collide, 1, false, wall_gain)

if obj_pellet.modifier[28] != 0
{
	if obj_pellet.modifier[28].specs.bullet == "EXP"
	{
		instance_create_depth(x, y, -9, obj_explosion_mini)
	}
}

instance_destroy(other)

