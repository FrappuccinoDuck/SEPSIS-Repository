type = "Object"
object = global.obj_list.test_obj
outline_init()
global.selected_obj = noone
global.selected_surface = noone



global.drop_hold_timer_l = 0
global.hold_drop_l = false
global.drop_hold_timer_r = 0
global.hold_drop_r = false

ammo = 0
chambered = false
item = noone

shot = false

depth = -9

destroy_timer = 0

mod_arr = array_create(0, 0)
modifier = array_create(obj_item_manager.modifier_amount, 0)

p_x = x
p_y = y


// 0 = clothing size

// 1 = trigger assembly / circuit
// 2 = hammer / modulator
// 3 = barrel / concentrator
// 4 = recoil spring

// 5 = trigger assembly condition
// 6 = hammer condition
// 7 = barrel condition
// 8 = recoil spring condition
// 9 = overall condition

// 10 = mag capacity 
// 11 = inserted mag capacity (0 : NO MAG PRESENT)

// 12 = firing pin
// 13 = extractor
// 14 = slide/bolt
// 15 = Sights
// 16 = Stock
// 17 = Muzzle

// 18 = firing pin condition
// 19 = extractor condition
// 20 = slide/bolt condition
// 21 = Sight condition
// 22 = Stock condition
// 23 = Muzzle condition

// 24 = Firing Mode (1 : single || 2 : short burst || 3 : full auto)

// 25 = Jam Status

// 26 = Chamber Type 
// 27 = Open (0 = false; 1 = true)

// 28 = Bullet Type

// 29 = underbarrel
// 30 = underbarrel condition

// 36 = inserted mag
// 31 = empty shell count

// 32 = suppressor
// 33 = suppressor condition

// 34 = underbarrel ON

// 35 = pin IN (grenade unarmed)

// 36 = Mag

// 37 = Battery Level

// 38 = Mag Container Array

// 39 = Fluid Content
