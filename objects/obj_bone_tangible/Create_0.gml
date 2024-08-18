index = 0
global.selected_part = noone

applied_item = noone
applied_mods = 0

bleed_timer = 0

temp_heal = 0

condition = 100
condition_max = 100

open_wound = false
open_wound_amount = 0
treated = false
treated_amount = 0

bleed_timer = 0
bleeding = false
bleed_amount = 0

broken_timer = 0
broken = false
broken_amount = 0


infection = false
infection_amount = 0

radiated = false

contaminated = false
contaminant = noone
contaminated_amount = 0

bruising = false
inflammation = false

image_alpha = random_range(0.5, 1)


condition_degradation_arr = array_create(0, 0)
array_push(condition_degradation_arr, 0.01)
array_push(condition_degradation_arr, 0.05)
array_push(condition_degradation_arr, 0.1)
array_push(condition_degradation_arr, 0.2)
array_push(condition_degradation_arr, 0.5)

function create_contaminant(_name, _sprite, _every_second_effect, _effect_description, _intensity) constructor
{
	name = _name
	sprite = _sprite
	every_second_effect = _every_second_effect
	effect_description = _effect_description
	intensity = _intensity
}

global.contaminant_list =
{
	dirt : new create_contaminant(
		"Dirt",
		spr_dirt_ui,
		function(_obj)
		{
			if irandom(50) == 1
			{
				_obj.inflammation = true
			}
			if irandom(50) == 2
			{
				_obj.condition -= condition_degradation_arr[irandom(4)]
			}
		},
		"Can cause additional damage over time",
		1,
	),
}

timer = 0

blood_loss_arr = array_create(0, 0)
array_push(blood_loss_arr, 10)
array_push(blood_loss_arr, 50)
array_push(blood_loss_arr, 200)
array_push(blood_loss_arr, 500)
array_push(blood_loss_arr, 1000)


global.skel_parts = array_create(0, 0)
global.skel_parts_desc = array_create(0, 0)

array_push(global.skel_parts, "Skull")
array_push(global.skel_parts, "Cervical Vert.")
array_push(global.skel_parts, "Thoracic Vert.")
array_push(global.skel_parts, "Lumbar Vert.")
array_push(global.skel_parts, "Sacrum Vert.")
array_push(global.skel_parts, "Coccyx Vert.")
array_push(global.skel_parts, "Right Humerous")
array_push(global.skel_parts, "Left Humerous")
array_push(global.skel_parts, "Right Radius")
array_push(global.skel_parts, "Left Radius")
array_push(global.skel_parts, "Right Ulna")
array_push(global.skel_parts, "Left Ulna")
array_push(global.skel_parts, "Right Femur")
array_push(global.skel_parts, "Left Femur")
array_push(global.skel_parts, "Right Tibia")
array_push(global.skel_parts, "Left Tibia")
array_push(global.skel_parts, "Right Fibula")
array_push(global.skel_parts, "Left Fibula")
array_push(global.skel_parts, "Ribs")
array_push(global.skel_parts, "Hips")
array_push(global.skel_parts, "Right Hand")
array_push(global.skel_parts, "Left Hand")
array_push(global.skel_parts, "Right Foot")
array_push(global.skel_parts, "Left Foot")


array_push(global.skel_parts_desc, "This is your skull")
array_push(global.skel_parts_desc, "This is your skull")
array_push(global.skel_parts_desc, "This is your skull")
array_push(global.skel_parts_desc, "This is your skull")
array_push(global.skel_parts_desc, "This is your skull")
array_push(global.skel_parts_desc, "This is your skull")
array_push(global.skel_parts_desc, "This is your skull")
array_push(global.skel_parts_desc, "This is your skull")
array_push(global.skel_parts_desc, "This is your skull")
array_push(global.skel_parts_desc, "This is your skull")
array_push(global.skel_parts_desc, "This is your skull")
array_push(global.skel_parts_desc, "This is your skull")
array_push(global.skel_parts_desc, "This is your skull")
array_push(global.skel_parts_desc, "This is your skull")
array_push(global.skel_parts_desc, "This is your skull")
array_push(global.skel_parts_desc, "This is your skull")
array_push(global.skel_parts_desc, "This is your skull")
array_push(global.skel_parts_desc, "This is your skull")
array_push(global.skel_parts_desc, "This is your skull")
array_push(global.skel_parts_desc, "This is your skull")
array_push(global.skel_parts_desc, "This is your skull")
array_push(global.skel_parts_desc, "This is your skull")
array_push(global.skel_parts_desc, "This is your skull")
array_push(global.skel_parts_desc, "This is your skull")
array_push(global.skel_parts_desc, "This is your skull")
array_push(global.skel_parts_desc, "This is your skull")
