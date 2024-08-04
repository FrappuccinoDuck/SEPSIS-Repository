image_xscale = random_range(0.33, 0.25*global.bleed_volume/global.bleed_amount)
image_yscale = image_xscale

move_dir = random(360)
move_spd = random_range(3, 5)
fric = random_range(move_spd/8, move_spd/2)

size_change = random_range(image_xscale/10, image_xscale/3)