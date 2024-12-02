
delay = false
delay_timer = 0
type = "Object"
ammo = 0

disarray_timer = 0
shot_at = false

hit_count = 0

event_inherited()
object = global.obj_list.test_dummy

armor_condition = 100
armor = "Light"
armor_level = 1

blood_levels = 2500

blood_loss_arr = array_create(0, 0)
array_push(blood_loss_arr, 0.2)
array_push(blood_loss_arr, 1.5)
array_push(blood_loss_arr, 5)
array_push(blood_loss_arr, 15)
array_push(blood_loss_arr, 100)

current_bleed = 0

timer = 0

global.metal_hit_arr = array_create(0, 0)
array_push(global.metal_hit_arr, snd_metal1)
array_push(global.metal_hit_arr, snd_metal2)
array_push(global.metal_hit_arr, snd_metal3)
array_push(global.metal_hit_arr, snd_metal4)
array_push(global.metal_hit_arr, snd_metal5)

global.cloth_hit_arr = array_create(0, 0)
array_push(global.cloth_hit_arr, snd_cloth1)
array_push(global.cloth_hit_arr, snd_cloth2)
array_push(global.cloth_hit_arr, snd_cloth3)