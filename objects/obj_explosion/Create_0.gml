image_xscale = 2.5
image_yscale = 2.5
instance_create_layer(x, y, "Instances", obj_explosion_ball)

with(instance_create_depth(x, y, -9, obj_pellet))
{
	shot = true
	randomize()	
	direction = 0 + irandom_range(-20, 20)
	image_angle = direction 
	speed = 30
}
with(instance_create_depth(x, y, -9, obj_pellet))
{
	shot = true
	randomize()	
	direction = 45 + irandom_range(-20, 20)
	image_angle = direction
	speed = 30
}
with(instance_create_depth(x, y, -9, obj_pellet))
{
	shot = true
	randomize()	
	direction = 90 + irandom_range(-20, 20)
	image_angle = direction  
	speed = 30
}
with(instance_create_depth(x, y, -9, obj_pellet))
{
	shot = true
	randomize()	
	direction = 135 + irandom_range(-20, 20)
	image_angle = direction  
	speed = 30
}
with(instance_create_depth(x, y, -9, obj_pellet))
{
	shot = true
	randomize()	
	direction = 180 + irandom_range(-20, 20)
	image_angle = direction 
	speed = 30
}
with(instance_create_depth(x, y, -9, obj_pellet))
{
	shot = true
	randomize()	
	direction = 225 + irandom_range(-20, 20)
	image_angle = direction
	speed = 30
}
with(instance_create_depth(x, y, -9, obj_pellet))
{
	shot = true
	randomize()	
	direction = 270 + irandom_range(-20, 20)
	image_angle = direction  
	speed = 30
}
with(instance_create_depth(x, y, -9, obj_pellet))
{
	shot = true
	randomize()	
	direction = 315 + irandom_range(-20, 20)
	image_angle = direction 
	speed = 30
}