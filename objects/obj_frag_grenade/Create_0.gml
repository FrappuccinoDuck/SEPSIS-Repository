

event_inherited()

ammo = 0
 
outline_init() 
 
type = "Item"
item = global.item_list.frag_grenade
selected_obj = noone

modifier[35] = true

image_xscale = 0.5
image_yscale = 0.5

array = array_create(0, 0)
ammo_arr = array_create(0, 0)
mag_arr = array_create(0, 0)


grenade_timer = 0

hit = false
