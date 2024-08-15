event_inherited()
type = "Object"
object = global.obj_list.urine 
image_xscale = 0.5
image_yscale = 0.5
image_alpha = random(1)

image_xscale = random_range(0, 0.5)
image_yscale = image_xscale

move_dir = random(360)
move_spd = random_range(3, 5)
fric = random_range(move_spd/8, move_spd/2)

size_change = random_range(image_xscale/10, image_xscale/3)
