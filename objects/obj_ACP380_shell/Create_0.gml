event_inherited()

ammo = 0

type = "Item"

outline_init()


item = global.item_list.ACP380_shell

selected_obj = noone

start_x = x
start_y = y

image_xscale = 0.4
image_yscale = 0.4
image_angle = irandom(360)
array = array_create(0, 0)
ammo_arr = array_create(0, 0)
mag_arr = array_create(0, 0)

shell_timer = 0

randomize()

point_gotox = start_x+random_range(-100, 100)
point_gotoy = start_y+random_range(-100, 100)

arrived = false

