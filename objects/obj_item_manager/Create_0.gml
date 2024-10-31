stats_open = false
backpack = false

main_ticks = 0

player_stats = false

scoped = false

menu_switch = 0

model_index = 0

urinating = false

global.urine_volume = 250
global.urine_speed = 2

debug_menu = false
prague = false

sound_init = false

global.clothing_arr = array_create(0, 0)

first_click = 0

global.current_hotbar_item = 1

current_belt_size = 0

comp_num = 0

global.degredation_value = 0.3

arm_degrade = false

global.shake = 0
shake_val = 2

global.left_hand_amount = 0
global.right_hand_amount = 0

global.max_carry_weight = 35

modifier_amount = 50
left_modifiers = array_create(modifier_amount, 0)
right_modifiers = array_create(modifier_amount, 0)
mouse_modifiers = array_create(modifier_amount, 0)

selected_array = array_create(1, 0)
selected_ammo = array_create(1, 0)
selected_chamber = array_create(1, 0)
selected_mag = array_create(1, 0)

selected_mod = array_create(1, 0)

throwing = false
current_throw = noone

hand_ammo = array_create(2, 0) // AMMO CURRENTLY HELD IN BOTH HANDS
global.mouse_ammo = 0

temp_arr = noone
temp_ammo = noone
temp_chamber = noone
temp_mod_arr = noone

global.using_hand = 0

chamber_timer = 0

fire_amount = 0

sound_start = false

ammo_array = array_create(0, 0)
array_push(ammo_array, "test_val")


magazine_condition_array = array_create(0, 0)

function_wheel = false
function_wheel_health = false
function_wheel_combine = false
function_wheel_strip = false

previous_left = noone
previous_right = noone

_xx = camera_get_view_x(view_camera[0])
_yy = camera_get_view_y(view_camera[0])

prev_x = 0
prev_y = 0
init_prev = false

using_hand = false // false = LEFT; true = RIGHT

nutrition_page = 0

close_inspect = false
inspection_item = noone

global.hover_item = noone
global.hover_timer = 0
global.hover_modifiers = array_create(modifier_amount, 0)

global.hover_obj = noone
global.hover_obj_timer = 0

global.lshoulder = noone
global.lshoulder_arr = array_create(0, 0)
global.lshoulder_ammo = array_create(0, 0)
global.lshoulder_capacity = 0
global.shoulder_mods = array_create(modifier_amount, 0)
global.shoulder_mod_arr = array_create(0, 0)

global.backpack = noone
global.backpack_arr = array_create(0, 0)
global.backpack_ammo = array_create(0, 0)
global.backpack_capacity = 0
global.backpack_mods = array_create(modifier_amount, 0)
global.backpack_mod_arr = array_create(0, 0)

global.vest = noone
global.vest_arr = array_create(0, 0)
global.vest_ammo = array_create(0, 0)
global.vest_capacity = 0
global.vest_mods = array_create(modifier_amount, 0) 
global.vest_mod_arr = array_create(0, 0)

global.top_head_wear = noone
global.top_head_arr = array_create(0, 0)
global.top_head_ammo = array_create(0, 0)
global.head_capacity = 0
global.head_mods = array_create(modifier_amount, 0)
global.head_mod_arr = array_create(0, 0)

global.face_wear = noone
global.face_arr = array_create(0, 0)
global.face_ammo = array_create(0, 0)
global.face_capacity = 0
global.face_mods = array_create(modifier_amount, 0)
global.face_mod_arr = array_create(0, 0)

global.belt = noone
global.belt_arr = array_create(0, 0)
global.belt_ammo = array_create(0, 0)
global.belt_capacity = 0
global.belt_mods = array_create(modifier_amount, 0)
global.belt_mod_arr = array_create(0, 0)

global.torso_wear = noone
global.torso_arr = array_create(0, 0)
global.torso_ammo = array_create(0, 0)
global.torso_capacity = 0
global.torso_mods = array_create(modifier_amount, 0)
global.torso_mod_arr = array_create(0, 0)

global.left_leg_wear = noone
global.right_leg_wear = noone
global.left_leg_arr = array_create(0, 0)
global.right_leg_arr = array_create(0, 0)
global.leg_capacity = 0
global.leg_mods = array_create(modifier_amount, 0)
global.leg_mod_arr = array_create(0, 0)

global.left_leg_ammo = array_create(0, 0)
global.right_leg_ammo = array_create(0, 0)

global.left_hand_wear = noone
global.right_hand_wear = noone
global.left_hand_arr = array_create(0, 0)
global.right_hand_arr = array_create(0, 0)
global.left_hand_capacity = 0
global.right_hand_capacity = 0
global.left_hand_mods = array_create(modifier_amount, 0)
global.right_hand_mods = array_create(modifier_amount, 0)
global.left_hand_mod_arr = array_create(0, 0)
global.right_hand_mod_arr = array_create(0, 0)

global.left_hand_ammo = array_create(0, 0)
global.right_hand_ammo = array_create(0, 0)

global.left_foot_wear = noone
global.right_foot_wear = noone
global.left_foot_arr = array_create(0, 0)
global.right_foot_arr = array_create(0, 0)
global.left_foot_ammo = array_create(0, 0)
global.right_foot_ammo = array_create(0, 0)
global.left_foot_capacity = 0
global.right_foot_capacity = 0
global.left_foot_mods = array_create(modifier_amount, 0)
global.right_foot_mods = array_create(modifier_amount, 0)
global.left_foot_mod_arr = array_create(0, 0)
global.right_foot_mod_arr = array_create(0, 0)

global.left_wrist = noone
global.right_wrist = noone
global.left_wrist_arr = array_create(0, 0)
global.right_wrist_arr = array_create(0, 0)
global.left_wrist_capacity = 0
global.right_wrist_capacity = 0
global.left_wrist_mods = array_create(modifier_amount, 0)
global.right_wrist_mods = array_create(modifier_amount, 0)
global.left_wrist_mod_arr = array_create(0, 0)
global.right_wrist_mod_arr = array_create(0, 0)

global.left_wrist_ammo = array_create(0, 0)
global.right_wrist_ammo = array_create(0, 0)

//-------------------STATS-------------------------
global.blood_levels = 5000
global.blood_levels_m = 5000

global.consioucness = 100
global.consioucness_m = 100

global.adrenaline = 250
global.adrenaline_m = 2500

global.oxy = 96
global.oxy_m = 100

global.left_hand_item = noone
global.right_hand_item = noone

global.mouse_item = noone
global.right_mouse_item = noone

global.player_energy = 2500
global.energy_m = 2500

global.player_fat = 97
global.fat_m = 97

global.player_om3 = 350
global.om3_m = 350

global.player_carbohydrates = 333
global.carbohydrate_m = 333

global.player_free_sugars = 33
global.free_sugars_m = 33

global.player_protein = 75
global.protein_m = 75

global.player_fiber = 30
global.fiber_m = 30

global.player_salt = 6
global.salt_m = 6

// VITAMINS

global.vit_a = 1000 // mcg
global.vit_a_bad = 100
global.vit_a_good = 1000 // mcg
global.vit_a_m = 1750 // mcg

global.thiamin = 50 // milligrams
global.thiamin_good = 50 // milligrams
global.thiamin_bad = 5
global.thiamin_m = 75 // milligrams

global.rivoflavin = 25 // milligrams
global.rivoflavin_good = 25
global.rivoflavin_bad = 5
global.rivo_m = 40 // milligrams

global.niacin = 25 // milligrams
global.niacin_good = 25
global.niacin_bad = 5
global.niacin_m = 40

global.vit_e = 1000 // milligrams
global.vit_e_good = 1000
global.vit_e_bad = 100
global.vit_e_m = 1750

global.folate = 10 // milligrams
global.folate_good = 10
global.folate_bad = 0.5
global.folate_m = 15

global.vit_k = 200 // mcg
global.vit_k_good = 200
global.vit_k_bad = 30
global.vit_k_m = 335

global.vit_c = 2000 // milligrams
global.vit_c_good = 2000
global.vit_c_bad = 50
global.vit_c_m = 3350 // milligrams

global.vit_d = 500
global.vit_d_good = 500
global.vit_d_bad = 20
global.vit_d_m = 750 //micrograms

global.calcium = 1150
global.calc_good = 1150
global.calc_bad = 200
global.calc_m = 2000

global.phosph = 750
global.phosph_good = 750
global.phosph_bad = 100
global.phosph_m = 1100

global.magnesium = 25000
global.mag_good = 25000
global.mag_bad = 100
global.magnesium_m = 30000

global.potass = 140
global.potass_good = 140
global.potass_bad = 1
global.potass_m = 200

global.iron = 4000
global.iron_good = 4000
global.iron_bad = 100
global.iron_m = 6000

global.zinc = 2500  // milligrams
global.zinc_good = 2500
global.zinc_bad = 30
global.zinc_m = 4000 // milligrams

global.copper = 100000 // milligrams
global.copper_good = 100000
global.copper_bad = 20
global.copper_m = 150000 // milligrams

global.body_temp = 98
global.body_temp_m = 106

global.thirst = 3700
global.thirst_m = 3700

global.tiredness = 0
global.tiredness_m = 100

global.hygiene = 100
global.hygiene_m = 100

global.metabolism = 3
global.metabolism_m = 30

global.arms_weight = 0

inv_rotation = 0

component_number = 0
actual_comp_num = 0

spr_arr = array_create(0, 0)
x_arr = array_create(0, 0)
y_arr = array_create(0, 0)
sizex_arr = array_create(0, 0)
sizey_arr = array_create(0, 0)
rot_arr = array_create(0, 0)

main_ammo_arr = array_create(0, 0)

ammo_arr = 0
right_ammo_arr = 0

main_chamber_arr = array_create(0, 0)

chamber_arr = 0
right_chamber_arr = 0

function save_item(_spr, _x, _y, _sx, _sy, _rot, _ammo, _chamber)
{
	array_push(spr_arr, _spr)
	array_push(x_arr, _x-_xx)
	array_push(y_arr, _y-_yy)
	array_push(sizex_arr, _sx)
	array_push(sizey_arr, _sy)
	array_push(rot_arr, _rot)
	array_push(main_ammo_arr, _ammo)
	array_push(main_chamber_arr, _chamber)
}

function create_obj(_name, _description, _obj, _spr) constructor
{
	name = _name
	description = _description
	obj = _obj
	spr = _spr
}

function create_item(_name, _description, _spr, _obj, _specs, _effect, _rotation, _sizey, _food, _vit, _min, _weapon, _ammo, _hold_size, _armor, _cont_size) constructor
{ 
	name = _name
	description = _description
	spr = _spr
	obj = _obj
	specs = _specs
	effect = _effect
	rotation = _rotation
	sizey = _sizey
	food = _food
	vit = _vit
	minerals = _min
	weapon = _weapon
	ammo = _ammo
	hold_size = _hold_size
	armor = _armor
	cont_size = _cont_size
	


}

function create_food(_cal, _fat, _om3acids, _carb, _freesug, _prot, _fiber, _salt) constructor
{
	cal = _cal
	fat = _fat
	om3fattyacids = _om3acids
	carb = _carb
	freesug = _freesug
	prot = _prot
	fiber = _fiber
	salt = _salt
}

function create_vit(_vita, _thiamin, _ribo, _niacin, _vite, _fol, _vitk, _vitc, _vitd) constructor
{
	vita = _vita
	thiamin = _thiamin
	ribo = _ribo
	niacin = _niacin
	vite = _vite
	fol = _fol
	vitk = _vitk
	vitc = _vitc
	vitd = _vitd
}

function create_min(_calc, _phosph, _mag, _potass, _iron, _zinc, _copper) constructor
{
	calc = _calc
	phosph = _phosph
	mag = _mag
	potass = _potass
	iron = _iron
	zinc = _zinc
	copper = _copper
}

function create_weapon(_damage, _ammo_count, _fire_rate, _parts, _sights, _scopes, _underbarrel, _innaccuracy, _chamber_sound, _shoot_sound, _shoot_sound2, _single_burst, _short_burst, _full_burst, _short_burst_amount, _suppressor) constructor
{
	damage = _damage
	ammo_count = _ammo_count
	fire_rate = _fire_rate // Rounds P/m
	parts = _parts
	sights = _sights
	scopes = _scopes
	underbarrel = _underbarrel
	innaccuracy = _innaccuracy
	chamber_sound = _chamber_sound
	shoot_sound = _shoot_sound
	shoot_sound2 = _shoot_sound2
	single_burst = _single_burst
	short_burst = _short_burst
	full_burst = _full_burst
	short_burst_amount = _short_burst_amount
	suppressor = _suppressor
}

function create_parts(_trigger, _hammer, _barrel, _recoil_spring, _firing_pin, _extractor, _bolt_slide) constructor
{
	trigger = _trigger
	hammer = _hammer
	barrel = _barrel
	recoil_spring = _recoil_spring
	firing_pin = _firing_pin
	extractor = _extractor
	bolt_slide = _bolt_slide
}

function create_effect(_leftc_function, _rightc_function, _midm_function, _leftc_function_name, _rightc_function_name, _midc_function_name, _w4, _w5, _w6, _w7, _w8, _w4n, _w5n, _w6n, _w7n, _w8n) constructor
{
	lfunc = _leftc_function
	lfunc_name = _leftc_function_name
	rfunc = _rightc_function
	rfunc_name = _rightc_function_name
	mfunc = _midm_function
	mfunc_name = _midc_function_name

	w4 = _w4
	w4n = _w4n
	w5 = _w5
	w5n = _w5n
	w6 = _w6
	w6n = _w6n
	w7 = _w7
	w7n = _w7n
	w8 = _w8
	w8n = _w8n
	
}
function create_specs(_cost, _amount, _weight, _item_type, _chambered, _stack_max, _beltable, _short_name, _bullet, _second_sprite, _misc_sound, _misc_val, _medical) constructor
{
	cost = _cost
	amount = _amount
	weight = _weight
	item_type = _item_type
	chambered = _chambered
	stack_max = _stack_max
	beltable = _beltable
	short_name = _short_name
	bullet = _bullet
	second_sprite = _second_sprite
	misc_sound = _misc_sound
	misc_val = _misc_val
	medical = _medical
}

function create_medical(_bleeding, _broken, _bleed_remedy, _condition_increase, _continuous_heal, _limbs, _organs, _injection, _injection_loss) constructor
{
	bleeding = _bleeding
	broken = _broken
	bleed_remedy = _bleed_remedy
	condition_increase = _condition_increase
	continuous_heal = _continuous_heal
	limbs = _limbs
	organs = _organs
	injection = _injection
	injection_loss = _injection_loss
}

function create_surface(_name, _description, _sprite) constructor
{
	name = _name
	description = _description
	sprite = _sprite
}

function create_armor(_protection, _type, _material, _location, _capacity, _overlay) constructor
{
	protection = _protection
	type = _type
	material = _material
	location = _location
	capacity = _capacity
	overlay = _overlay
}

global.medical_list = 
{
	dipstick_medical : new create_medical(
		false,
		false,
		0,
		15,
		5,
		true,
		false,
		true,
		50,
	),
}

global.specs_list = 
{
	apple_specs : new create_specs(
		10,
		1,
		0.33,
		"Food",
		false,
		1,
		false,
		"Apple",
		noone,
		noone,
		noone,
		0,
		noone,
	),
	orange_specs : new create_specs(
		10,
		1,
		0.31,
		"Food",
		false,
		1,
		false,
		"Orange",
		noone,
		noone,
		noone,
		0,
		noone,
	),
	pipe_specs : new create_specs(
		10,
		1,
		2.5,
		"Weapon",
		false,
		1,
		true,
		"Pipe",
		noone,
		noone,
		noone,
		0,
		noone,
	),
	rolex_specs : new create_specs(
		10,
		1,
		0.2,
		"Armor",
		false,
		3,
		false,
		"Rolex",
		noone,
		noone,
		noone,
		0,
		noone,
	),
	ACP380_single_specs : new create_specs(
		1,
		1,
		0.1,
		"Ammunition",
		false,
		10,
		false,
		".380",
		"HP",
		noone,
		noone,
		0,
		noone,
	),
	ACP380_exp_specs : new create_specs(
		1,
		1,
		0.1,
		"Ammunition",
		false,
		10,
		false,
		".380",
		"EXP",
		noone,
		noone,
		10,
		noone,
	),
	ACP380_fmj_specs : new create_specs(
		1,
		1,
		0.1,
		"Ammunition",
		false,
		10,
		false,
		".380",
		"FMJ",
		noone,
		noone,
		4,
		noone,
	),
	ACP380_du_specs : new create_specs(
		1,
		1,
		0.1,
		"Ammunition",
		false,
		10,
		false,
		".380",
		"DU",
		noone,
		noone,
		8,
		noone,
	),
	ACP380_ap_specs : new create_specs(
		1,
		1,
		0.1,
		"Ammunition",
		false,
		10,
		false,
		".380",
		"AP",
		noone,
		noone,
		6,
		noone,
		
	),
	ACP32_specs : new create_specs(
		1,
		1,
		0.1,
		"Ammunition",
		false,
		10,
		false,
		".32",
		"HP",
		noone,
		noone,
		0,
		noone,
	),
	ACP32_exp_specs : new create_specs(
		1,
		1,
		0.1,
		"Ammunition",
		false,
		10,
		false,
		".32",
		"EXP",
		noone,
		noone,
		10,
		noone,
	),
	ACP32_fmj_specs : new create_specs(
		1,
		1,
		0.1,
		"Ammunition",
		false,
		10,
		false,
		".32",
		"FMJ",
		noone,
		noone,
		4,
		noone,
	),
	ACP32_du_specs : new create_specs(
		1,
		1,
		0.1,
		"Ammunition",
		false,
		10,
		false,
		".32",
		"DU",
		noone,
		noone,
		8,
		noone,
	),
	ACP32_ap_specs : new create_specs(
		1,
		1,
		0.1,
		"Ammunition",
		false,
		10,
		false,
		".32",
		"AP",
		noone,
		noone,
		6,
		noone,
	),
	single_762x25_specs : new create_specs(
		1,
		1,
		0.1,
		"Ammunition",
		false,
		10,
		false,
		"7.62x25",
		"HP",
		noone,
		noone,
		0,
		noone,
	),
	single_762x25_exp_specs : new create_specs(
		1,
		1,
		0.1,
		"Ammunition",
		false,
		10,
		false,
		"7.62x25",
		"EXP",
		noone,
		noone,
		10,
		noone,
	),
	single_762x25_fmj_specs : new create_specs(
		1,
		1,
		0.1,
		"Ammunition",
		false,
		10,
		false,
		"7.62x25",
		"FMJ",
		noone,
		noone,
		4,
		noone,
	),
	single_762x25_du_specs : new create_specs(
		1,
		1,
		0.1,
		"Ammunition",
		false,
		10,
		false,
		"7.62x25",
		"DU",
		noone,
		noone,
		8,
		noone,
	),
	single_762x25_ap_specs : new create_specs(
		1,
		1,
		0.1,
		"Ammunition",
		false,
		10,
		false,
		"7.62x25",
		"AP",
		noone,
		noone,
		6,
		noone,
	),
	magnum44_specs : new create_specs(
		1,
		1,
		0.1,
		"Ammunition",
		false,
		10,
		false,
		"44M",
		"HP",
		noone,
		noone,
		0,
		noone,
	),
	magnum44_exp_specs : new create_specs(
		1,
		1,
		0.1,
		"Ammunition",
		false,
		10,
		false,
		"44M",
		"EXP",
		noone,
		noone,
		10,
		noone,
	),
	magnum44_fmj_specs : new create_specs(
		1,
		1,
		0.1,
		"Ammunition",
		false,
		10,
		false,
		"44M",
		"FMJ",
		noone,
		noone,
		4,
		noone,
	),
	magnum44_du_specs : new create_specs(
		1,
		1,
		0.1,
		"Ammunition",
		false,
		10,
		false,
		"44M",
		"DU",
		noone,
		noone,
		8,
		noone,
	),
	magnum44_ap_specs : new create_specs(
		1,
		1,
		0.1,
		"Ammunition",
		false,
		10,
		false,
		"44M",
		"AP",
		noone,
		noone,
		6,
		noone,
	),
	single_762x39_specs : new create_specs(
		1,
		1,
		0.1,
		"Ammunition",
		false,
		10,	
		false,
		"7.62x39",
		"HP",
		noone,
		noone,
		0,
		noone,
	),
	single_762x39_exp_specs : new create_specs(
		1,
		1,
		0.1,
		"Ammunition",
		false,
		10,	
		false,
		"7.62x39",
		"EXP",
		noone,
		noone,
		10,
		noone,
	),
	single_762x39_fmj_specs : new create_specs(
		1,
		1,
		0.1,
		"Ammunition",
		false,
		10,	
		false,
		"7.62x39",
		"FMJ",
		noone,
		noone,
		4,
		noone,
	),
	single_762x39_du_specs : new create_specs(
		1,
		1,
		0.1,
		"Ammunition",
		false,
		10,	
		false,
		"7.62x39",
		"DU",
		noone,
		noone,
		8,
		noone,
	),
	single_762x39_ap_specs : new create_specs(
		1,
		1,
		0.1,
		"Ammunition",
		false,
		10,	
		false,
		"7.62x39",
		"AP",
		noone,
		noone,
		6,
		noone,
	),
	single_762x45_specs : new create_specs(
		1,
		1,
		0.1,
		"Ammunition",
		false,
		10,	
		false,
		"7.62x45",
		"HP",
		noone,
		noone,
		0,
		noone,
	),
	single_762x45_exp_specs : new create_specs(
		1,
		1,
		0.1,
		"Ammunition",
		false,
		10,	
		false,
		"7.62x45",
		"EXP",
		noone,
		noone,
		10,
		noone,
	),
	single_762x45_fmj_specs : new create_specs(
		1,
		1,
		0.1,
		"Ammunition",
		false,
		10,	
		false,
		"7.62x45",
		"FMJ",
		noone,
		noone,
		4,
		noone,
	),
	single_762x45_du_specs : new create_specs(
		1,
		1,
		0.1,
		"Ammunition",
		false,
		10,	
		false,
		"7.62x45",
		"DU",
		noone,
		noone,
		8,
		noone,
	),
	single_762x45_ap_specs : new create_specs(
		1,
		1,
		0.1,
		"Ammunition",
		false,
		10,	
		false,
		"7.62x45",
		"AP",
		noone,
		noone,
		6,
		noone,
	),
	single_12gauge_specs : new create_specs(
		1,
		1,
		0.1,
		"Ammunition",
		false,
		10,	
		false,
		"12G",
		"BIRD",
		noone,
		noone,
		0,
		noone,
	),
	single_12gauge_buck_specs : new create_specs(
		1,
		1,
		0.1,
		"Ammunition",
		false,
		10,	
		false,
		"12G",
		"BUCK",
		noone,
		noone,
		3,
		noone,
	),
	single_12gauge_slug_specs : new create_specs(
		1,
		1,
		0.1,
		"Ammunition",
		false,
		10,	
		false,
		"12G",
		"SLUG",
		noone,
		noone,
		3,
		noone,
	),
	single_12gauge_exp_specs : new create_specs(
		1,
		1,
		0.1,
		"Ammunition",
		false,
		10,	
		false,
		"12G",
		"EXP",
		noone,
		noone,
		3,
		noone,
	),
	pistole_vz24_specs : new create_specs(
		30,
		1,
		1.2,
		"Firearm",
		false,
		1,
		true,
		"Vz 24",
		noone,
		spr_pistol_sights,
		snd_suppressed,
		0,
		noone,
	),
	sa23_specs : new create_specs(
		30,
		1,
		6,
		"Firearm",
		false,
		1,
		true,
		"SA23",
		noone,
		spr_rifle_sights1,
		snd_suppressed,
		0,
		noone,
	),
	skorpion_specs : new create_specs(
		30,
		1,
		2.5,
		"Firearm",
		false,
		1,
		true,
		"Skorpion",
		noone,
		spr_rifle_sights1,
		snd_suppressed,
		0,
		noone,
	),
	sw_model29_specs : new create_specs(
		30,
		1,
		3,
		"Firearm",
		false,
		1,
		true,
		"S&W M-29",
		"44M",
		spr_pistol_sights,
		noone,
		0,
		noone,
	),
	dis_pistol_specs : new create_specs(
		30,
		1,
		3,
		"Firearm",
		false,
		1,
		true,
		"Disintegration Pistol",
		"Capacitor",
		spr_pistol_sights,
		noone,
		0,
		noone,
	),
	pistole_vz24_mag_specs : new create_specs(
		1,
		1,
		0.5,
		"Magazine",
		false,
		1,
		true,
		"Vz 24 Mag",
		".380",
		noone,
		noone,
		0,
		noone,
	),
	sa23_mag_specs : new create_specs(
		1,
		1,
		0.5,
		"Magazine",
		false,
		1,
		true,
		"SA23 Mag",
		"7.62x25",
		noone,
		noone,
		0,
		noone,
	),
	skorpion_mag_specs : new create_specs(
		1,
		1,
		0.5,
		"Magazine",
		false,
		1,
		true,
		"Skorpion Mag",
		".32",
		noone,
		noone,
		0,
		noone,
	),
	capacitor_specs : new create_specs(
		1,
		1,
		0.5,
		"Magazine",
		false,
		1,
		true,
		"Capacitor",
		"Energy",
		noone,
		noone,
		0,
		noone,
	),
	energy_specs : new create_specs(
		1,
		1,
		0.5,
		"Ammunition",
		false,
		1,
		true,
		"Energy",
		"Energy",
		noone,
		noone,
		0,
		noone,
	),
	ACP380_shell_specs : new create_specs(
		1,
		1,
		0.1,
		"Shell",
		false,
		10,
		false,
		".380 Shell",
		noone,
		noone,
		noone,
		0,
		noone,
	),
	ACP32_shell_specs : new create_specs(
		1,
		1,
		0.1,
		"Shell",
		false,
		10,
		false,
		".32 Shell",
		noone,
		noone,
		noone,
		0,
		noone,
	),
	single_762x25_shell_specs : new create_specs(
		1,
		1,
		0.1,
		"Shell",
		false,
		10,
		false,
		"7.62x25 Shell",
		noone,
		noone,
		noone,
		0,
		noone,
	),
	magnum44_shell_specs : new create_specs(
		1,
		1,
		0.1,
		"Shell",
		false,
		10,
		false,
		"44 Magnum Shell",
		noone,
		noone,
		noone,
		0,
		noone,
	),
	test_key_specs : new create_specs(
		1,
		1,
		0.5,
		"Key",
		false,
		3,
		false,
		"Test Key",
		noone,
		noone,
		noone,
		0,
		noone,
	),
	test_shirt_specs : new create_specs(
		1,
		1,
		0.5,
		"Armor",
		false,
		1,
		false,
		"Test Shirt",
		noone,
		noone,
		noone,
		0,
		noone,
	),
	test_pants_specs : new create_specs(
		1,
		1,
		2,
		"Armor",
		false,
		1,
		false,
		"Pants",
		noone,
		noone,
		noone,
		0,
		noone,
	),
	left_pant_specs : new create_specs(
		1,
		1,
		1,
		"Armor",
		false,
		1,
		false,
		noone,
		noone,
		noone,
		noone,
		0,
		noone,
	),
	right_pant_specs : new create_specs(
		1,
		1,
		1,
		"Armor",
		false,
		1,
		false,
		noone,
		noone,
		noone,
		noone,
		0,
		noone,
	),
	left_glove_specs : new create_specs(
		1,
		1,
		0.2,
		"Armor",
		false,
		1,
		false,
		"L Glove",
		noone,
		noone,
		noone,
		0,
		noone,
	),
	right_glove_specs : new create_specs(
		1,
		1,
		0.2,
		"Armor",
		false,
		1,
		false,
		"R Glove",
		noone,
		noone,
		noone,
		0,
		noone,
	),
	gas_mask_specs : new create_specs(
		1,
		1,
		4,
		"Armor",
		false,
		1,
		false,
		"Gas Mask",
		noone,
		noone,
		noone,
		0,
		noone,
	),
	military_helmet_specs : new create_specs(
		1,
		1,
		4,
		"Armor",
		false,
		1,
		false,
		"Helmet",
		noone,
		noone,
		noone,
		0,
		noone,
	),
	right_boot_specs : new create_specs(
		1,
		1,
		5,
		"Armor",
		false,
		1,
		false,
		"R Boot",
		noone,
		noone,
		noone,
		0,
		noone,
	),
	left_boot_specs : new create_specs(
		1,
		1,
		5,
		"Armor",
		false,
		1,
		false,
		"L Boot",
		noone,
		noone,
		noone,
		0,
		noone,
	),
	coat_specs : new create_specs(
		1,
		1,
		6,
		"Armor",
		false,
		1,
		false,
		"Coat",
		noone,
		noone,
		noone,
		0,
		noone,
	),
	backpack_specs : new create_specs(
		1,
		1,
		4,
		"Armor",
		false,
		1,
		false,
		"Backpack",
		noone,
		noone,
		noone,
		0,
		noone,
	),
	strapped_stick_specs : new create_specs(
		1,
		1,
		1,
		"Armor",
		false,
		1,
		false,
		"Strapped Stick",
		noone,
		noone,
		noone,
		0,
		noone,
	),
	copper_band_specs : new create_specs(
		1,
		1,
		0.1,
		"Armor",
		false,
		1,	
		false,
		"Copper Band",
		noone,
		noone,
		noone,
		0,
		noone,
	),
	small_belt_specs : new create_specs(
		1,
		1,
		1,
		"Armor",
		false,
		1,	
		false,
		"Belt",
		noone,
		noone,
		noone,
		0,
		noone,
	),
	single_action_trigger_specs : new create_specs(
		1,
		1,
		0.1,
		"Trigger",
		false,
		1,	
		false,
		"S-Action",
		noone,
		noone,
		noone,
		0,
		noone,
	),
	double_action_trigger_specs : new create_specs(
		1,
		1,
		0.1,
		"Trigger",
		false,
		1,	
		false,
		"D-Action",
		noone,
		noone,
		noone,
		0,
		noone,
	),
	super_conductor_circuit_specs : new create_specs(
		1,
		1,
		0.1,
		"Trigger",
		false,
		1,	
		false,
		"SC-Circuit",
		noone,
		noone,
		noone,
		0,
		noone,
	),
	single_action_hammer_specs : new create_specs(
		1,
		1,
		0.1,
		"Hammer",
		false,
		1,	
		false,
		"Spurred",
		noone,
		noone,
		noone,
		0,
		noone,
	),
	overcharge_modulator_specs : new create_specs(
		1,
		1,
		0.1,
		"Hammer",
		false,
		1,	
		false,
		"O-Modulator",
		noone,
		noone,
		noone,
		0,
		noone,
	),
	short_barrel_specs : new create_specs(
		1,
		1,
		0.1,
		"Barrel",
		false,
		1,	
		false,
		"Short",
		noone,
		noone,
		noone,
		0,
		noone,
	),
	electromagnetic_lenses_specs : new create_specs(
		1,
		1,
		0.1,
		"Barrel",
		false,
		1,	
		false,
		"E-Lenses",
		noone,
		noone,
		noone,
		0,
		noone,
	),
	spring_15lbs_specs : new create_specs(
		1,
		1,
		0.1,
		"Spring",
		false,
		1,	
		false,
		"15 lbs.",
		noone,
		noone,
		noone,
		0,
		noone,
	),
	spring_25lbs_specs : new create_specs(
		1,
		1,
		0.1,
		"Spring",
		false,
		1,	
		false,
		"25 lbs.",
		noone,
		noone,
		noone,
		0,
		noone,
	),
	claw_extractor_specs : new create_specs(
		1,
		1,
		0.1,
		"Extractor",
		false,
		1,	
		false,
		"Claw",
		noone,
		noone,
		noone,
		0,
		noone,
	),
	medium_barrel_specs : new create_specs(
		1,
		1,
		0.1,
		"Barrel",
		false,
		1,	
		false,
		"Medium",
		noone,
		noone,
		noone,
		0,
		noone,
	),
	long_barrel_specs : new create_specs(
		1,
		1,
		0.1,
		"Barrel",
		false,
		1,	
		false,
		"Long",
		noone,
		noone,
		noone,
		0,
		noone,
	),
	rotating_bolt_specs : new create_specs(
		1,
		1,
		0.1,
		"Bolt",
		false,
		1,	
		false,
		"Rotating",
		noone,
		noone,
		noone,
		0,
		noone,
	),
	turn_bolt_specs : new create_specs(
		1,
		1,
		0.1,
		"Bolt",
		false,
		1,	
		false,
		"Turn",
		noone,
		noone,
		noone,
		0,
		noone,
	),
	tilt_bolt_specs : new create_specs(
		1,
		1,
		0.1,
		"Bolt",
		false,
		1,	
		false,
		"Blowback",
		noone,
		noone,
		noone,
		0,
		noone,
	),
	spring_pin_specs : new create_specs(
		1,
		1,
		0.1,
		"Firing Pin",
		false,
		1,	
		false,
		"Spring",
		noone,
		noone,
		noone,
		0,
		noone,
	),
	enclosed_hammer_specs : new create_specs(
		1,
		1,
		0.1,
		"Hammer",
		false,
		1,	
		false,
		"Enclosed",
		noone,
		noone,
		noone,
		0,
		noone,
	),
	
	vz58_mag_specs : new create_specs(
		1,
		1,
		0.5,
		"Magazine",
		false,
		1,	
		true,
		"Mag",
		"7.62x39",
		noone,
		noone,
		0,
		noone,
	),
	vz54_mag_specs : new create_specs(
		1,
		1,
		0.5,
		"Magazine",
		false,
		1,	
		true,
		"Mag",
		"7.62x45",
		noone,
		noone,
		0,
		noone,
	),
	single_762x39_shell_specs : new create_specs(
		1,
		1,
		0.1,
		"Shell",
		false,
		10,	
		false,
		"7.62x39",
		noone,
		noone,
		noone,
		0,
		noone,
	),
	single_762x45_shell_specs : new create_specs(
		1,
		1,
		0.1,
		"Shell",
		false,
		10,	
		false,
		"7.62x45",
		noone,
		noone,
		noone,
		0,
		noone,
	),
	single_12gauge_shell_specs : new create_specs(
		1,
		1,
		0.1,
		"Shell",
		false,
		10,	
		false,
		"12G",
		noone,
		noone,
		noone,
		0,
		noone,
	),
	vz58_specs : new create_specs(
		1,
		1,
		6.5,
		"Firearm",
		false,
		1,	
		false,
		"VZ58",
		"7.62x39",
		spr_rifle_sights1,
		snd_rifle_suppressed,
		0,
		noone,
	),
	vz54_specs : new create_specs(
		1,
		1,
		10,
		"Firearm",
		false,
		1,	
		false,
		"VZ54",
		"7.62x45",
		spr_rifle_sights2,
		noone,
		0,
		noone,
	),
	zbrojovka_304_specs : new create_specs(
		1,
		1,
		6,
		"Firearm",
		false,
		1,	
		false,
		"Zbrojovka 304",
		"12G",
		spr_shotgun_sights1,
		snd_shotgun_suppressed,
		0,
		noone,
	),
	scope_2x_specs : new create_specs(
		1,
		1,
		1,
		"Scope",
		false,
		1,	
		false,
		"2",
		2,
		spr_scope_overlay_small,
		noone,
		0,
		noone,
	),
	zenith_optic_specs : new create_specs(
		1,
		1,
		1,
		"Sight",
		false,
		1,	
		false,
		"1",
		1,
		spr_zenith_overlay,
		noone,
		0,
		noone,
	),
	goliath_optic_specs : new create_specs(
		1,
		1,
		1,
		"Sight",
		false,
		1,	
		false,
		"1",
		1,
		spr_goliath_red_dot_overlay,
		noone,
		0,
		noone,
	),
	laser_specs : new create_specs(
		1,
		1,
		1,
		"Underbarrel",
		false,
		1,	
		false,
		"Laser",
		1,
		noone,
		noone,
		0,
		noone,
	),
	xmini_specs : new create_specs(
		1,
		1,
		1,
		"Suppressor",
		false,
		1,	
		false,
		"X-MINI",
		1,
		noone,
		noone,
		0,
		noone,
	),
	zrapid_specs : new create_specs(
		1,
		1,
		1,
		"Suppressor",
		false,
		1,	
		false,
		"Z-RAPID",
		1,
		noone,
		noone,
		0,
		noone,
	),
	yheath_specs : new create_specs(
		1,
		1,
		1,
		"Suppressor",
		false,
		1,	
		false,
		"Y-Heath",
		1,
		noone,
		noone,
		0,
		noone,
	),
	sw_model29_speedloader_specs : new create_specs(
		1,
		1,
		0.5,
		"Speedloader",
		false,
		1,	
		true,
		"Speedloader",
		"44M",
		noone,
		noone,
		0,
		noone,
	),
	frag_grenade_specs : new create_specs(
		1,
		1,
		1,
		"Grenade",
		false,
		1,	
		true,
		"URG-86",
		1,
		noone,
		noone,
		0,
		noone,
	),
	inc_grenade_specs : new create_specs(
		1,
		1,
		1,
		"Grenade",
		false,
		1,	
		true,
		"RG-34",
		1,
		noone,
		noone,
		0,
		noone,
	),
	pin_specs : new create_specs(
		1,
		1,
		1,
		"Pin",
		false,
		1,	
		true,
		"Pin",
		1,
		noone,
		noone,
		0,
		noone,
	),
	box_12gauge_specs : new create_specs(
		1,
		1,
		1,
		"Box",
		false,
		1,	
		false,
		"Box",
		"12G",
		noone,
		noone,
		0,
		noone,
	),
	box_44magnum_specs : new create_specs(
		1,
		1,
		1,
		"Box",
		false,
		1,	
		false,
		"Box",
		"44M",
		noone,
		noone,
		0,
		noone,
	),
	box_762x25_specs : new create_specs(
		1,
		1,
		1,
		"Box",
		false,
		1,	
		false,
		"Box",
		"7.62x25",
		noone,
		noone,
		0,
		noone,
	),
	box_762x39_specs : new create_specs(
		1,
		1,
		1,
		"Box",
		false,
		1,	
		false,
		"Box",
		"7.62x39",
		noone,
		noone,
		0,
		noone,
	),
	box_762x45_specs : new create_specs(
		1,
		1,
		1,
		"Box",
		false,
		1,	
		false,
		"Box",
		"7.62x45",
		noone,
		noone,
		0,
		noone,
	),
	box_ACP32_specs : new create_specs(
		1,
		1,
		1,
		"Box",
		false,
		1,	
		false,
		"Box",
		".32",
		noone,
		noone,
		0,
		noone,
	),
	box_ACP380_specs : new create_specs(
		1,
		1,
		1,
		"Box",
		false,
		1,	
		false,
		"Box",
		".380",
		noone,
		noone,
		0,
		noone,
	),
	dipstick_specs : new create_specs(
		1,
		1,
		1,
		"Medical",
		false,
		1,	
		true,
		"DIPSTICK",
		noone,
		noone,
		snd_inject,
		0,
		global.medical_list.dipstick_medical,
	),
}

global.effect_list =
{
	apple_effect : new create_effect(
		function(){
			show_debug_message("left click");
			eat(global.item_list.apple, 8)
		},
		function(){
			show_debug_message("right click")
		},
		function(){
			show_debug_message("middle mouse click")
		},
		"Bite out of apple",
		"N/A",
		"N/A",
		
		function(){
			show_debug_message("w4")
		},
		function(){
			show_debug_message("w5")
		},
		function(){
			show_debug_message("w6")
		},
		function(){
			show_debug_message("w7")
		},
		function(){
			show_debug_message("w8")
		},
		"NA",
		"NA",
		"NA",
		"NA",
		"NA",
		
	),
	orange_effect : new create_effect(
		function(){
			show_debug_message("left click");
			eat(global.item_list.orange, 8)
		},
		function(){
			show_debug_message("right click")
		},
		function(){
			show_debug_message("middle mouse click")
		},
		"Bite out of orange",
		"N/A",
		"N/A",
		
		function(){
			show_debug_message("w4")
		},
		function(){
			show_debug_message("w5")
		},
		function(){
			show_debug_message("w6")
		},
		function(){
			show_debug_message("w7")
		},
		function(){
			show_debug_message("w8")
		},
		"NA",
		"NA",
		"NA",
		"NA",
		"NA",
		
	),
	pipe_effect : new create_effect(
		function(){
			show_debug_message("left click");
		},
		function(){
			show_debug_message("right click")
		},
		function(){
			show_debug_message("middle mouse click")
		},
		"N/A",
		"N/A",
		"N/A",
		
		function(){
			show_debug_message("w4")
		},
		function(){
			show_debug_message("w5")
		},
		function(){
			show_debug_message("w6")
		},
		function(){
			show_debug_message("w7")
		},
		function(){
			show_debug_message("w8")
		},
		"NA",
		"NA",
		"NA",
		"NA",
		"NA",
		
	),
	watch_effect : new create_effect(
		function(){
			show_debug_message("left click");
		},
		function(){
			show_debug_message("right click")
		},
		function(){
			show_debug_message("middle mouse click")
		},
		"N/A",
		"N/A",
		"N/A",
		
		function(){
			show_debug_message("w4")
		},
		function(){
			show_debug_message("w5")
		},
		function(){
			show_debug_message("w6")
		},
		function(){
			show_debug_message("w7")
		},
		function(){
			show_debug_message("w8")
		},
		"NA",
		"NA",
		"NA",
		"NA",
		"NA",
		
	),
	
	
	pistole_vz24_effect : new create_effect(
	function(){
			shoot(global.item_list.pistole_vz24, global.item_list.ACP380_single, global.item_list.ACP380_shell, 64, false)
		},
		function(){
			chamber(global.item_list.pistole_vz24, global.item_list.ACP380_shell)
		},
		function(){
			mag_release(global.item_list.pistole_vz24, global.item_list.pistole_vz24_mag)
		},
		"Shoot",
		"Chamber",
		"Mag Release",
		
		
		function(){
			remove_suppressor()
		},
		function(){
			show_debug_message("w5")
			
		},
		function(){
			show_debug_message("w6")
		},
		function(){
			show_debug_message("w7")
		},
		function(){
			show_debug_message("w8")
		},
		"Remove Supp.",
		"NA",
		"NA",
		"NA",
		"NA",
		
	),
	
	sa23_effect : new create_effect(
	function(){
			shoot(global.item_list.sa23, global.item_list.single_762x25, global.item_list.single_762x25_shell, 64, false)
		},
		function(){
			chamber(global.item_list.sa23, global.item_list.single_762x25_shell)
		},
		function(){
			mag_release(global.item_list.sa23, global.item_list.sa23_mag)
		},
		"Shoot",
		"Chamber",
		"Mag Release",
		
		
		function(){
				remove_optic()
		},
		function(){
			remove_suppressor()
		},
		function(){
			show_debug_message("w6")
		},
		function(){
			show_debug_message("w7")
		},
		function(){
			show_debug_message("w8")
		},
		"Remove Optic",
		"Remove Supp.",
		"NA",
		"NA",
		"NA",
		
	),
	
	skorpion_effect : new create_effect(
	function(){
			shoot(global.item_list.skorpion, global.item_list.ACP32, global.item_list.ACP32_shell, 64, false)
		},
		function(){
			chamber(global.item_list.skorpion, global.item_list.ACP32_shell)
		},
		function(){
			mag_release(global.item_list.skorpion, global.item_list.skorpion_mag)
		},
		"Shoot",
		"Chamber",
		"Mag Release",
		
		
		function(){
				remove_optic()
		},
		function(){
			remove_suppressor()
		},
		function(){
			show_debug_message("w6")
		},
		function(){
			show_debug_message("w7")
		},
		function(){
			show_debug_message("w8")
		},
		"Remove Optic",
		"Remove Supp.",
		"NA",
		"NA",
		"NA",
		
	),
	
	sw_model29_effect : new create_effect(
	function(){
			shoot(global.item_list.sw_model29, global.item_list.magnum44, global.item_list.magnum44_shell, 64, false)
		},
		function(){
			hammer_back(global.item_list.sw_model29)
		},
		function(){
			chamber(global.item_list.sw_model29, global.item_list.magnum44_shell)
		},
		"Shoot",
		"Pull Back Hammer",
		"Open/Close",
		
		
		function(){
			unload_internal_mag(global.item_list.sw_model29, global.item_list.magnum44)
		},
		function(){
			
		},
		function(){
			show_debug_message("w6")
		},
		function(){
			show_debug_message("w7")
		},
		function(){
			show_debug_message("w8")
		},
		"Unload",
		"NA",
		"NA",
		"NA",
		"NA",
		
	),
	
	gold_pistole_vz24_effect : new create_effect(
	function(){
			shoot(global.item_list.gold_pistole_vz24, global.item_list.ACP380_single, global.item_list.ACP380_shell, 64, false)
		},
		function(){
			chamber(global.item_list.gold_pistole_vz24, global.item_list.ACP380_shell)
		},
		function(){
			mag_release(global.item_list.gold_pistole_vz24, global.item_list.pistole_vz24_mag)
		},
		"Shoot",
		"Chamber",
		"Mag Release",
		
		
		function(){
		},
		function(){
			show_debug_message("w5")
			remove_suppressor()
		},
		function(){
			show_debug_message("w6")
		},
		function(){
			show_debug_message("w7")
		},
		function(){
			show_debug_message("w8")
		},
		"Remove Supp.",
		"NA",
		"NA",
		"NA",
		"NA",
		
	),
	vz54_effect : new create_effect(
	function(){
			shoot(global.item_list.vz54, global.item_list.single_762x45, global.item_list.single_762x45_shell, 64, true)
		},
		function(){
			chamber(global.item_list.vz54, global.item_list.single_762x45_shell)
		},
		function(){
			mag_release(global.item_list.vz54, global.item_list.vz54_mag)
		},
		"Shoot",
		"Open/Close Bolt",
		"Release Mag",
		
		
		function(){
			remove_optic()
		},
		function(){
			show_debug_message("w5")
		},
		function(){
			show_debug_message("w6")
		},
		function(){
			show_debug_message("w7")
		},
		function(){
			show_debug_message("w8")
		},
		"Remove Optic",
		"NA",
		"NA",
		"NA",
		"NA",
		
	),
	
	zbrojovka_304_effect : new create_effect(
		function(){
			shoot(global.item_list.zbrojovka_304, global.item_list.single_12gauge, global.item_list.single_12gauge_shell, 64, false)
		},
		function(){
			chamber(global.item_list.zbrojovka_304, global.item_list.single_12gauge_shell)
		},
		function(){
			unload_internal_mag(global.item_list.zbrojovka_304, global.item_list.single_12gauge)
		},
		"Shoot",
		"Open/Close",
		"Remove Bullet",
		
		function(){
			remove_optic()
		},
		function(){
			remove_suppressor()
		},
		function(){
			show_debug_message("w6")
		},
		function(){
			show_debug_message("w7")
		},
		function(){
			show_debug_message("w8")
		},
		"Remove Optic",
		"Remove Suppressor",
		"NA",
		"NA",
		"NA",
		
	),
	dis_pistol_effect : new create_effect(
		function(){
			shoot(global.item_list.disintegration_pistol, global.item_list.disintegration_pistol, noone, 64, false)
		},
		function(){
			chamber(global.item_list.disintegration_pistol, noone)
		},
		function(){
			mag_release(global.item_list.disintegration_pistol, global.item_list.capacitor)
		},
		"Shoot",
		"Charge",
		"Remove Capacitor",
		
		function(){
			remove_optic()
		},
		function(){
			toggle_underbarrel()
		},
		function(){
			show_debug_message("w6")
		},
		function(){
			show_debug_message("w7")
		},
		function(){
			show_debug_message("w8")
		},
		"Remove Optic",
		"Toggle Laser",
		"NA",
		"NA",
		"NA",
		
	),
	
	ACP380_single_effect : new create_effect(
	function()
	{
		load_bullet(global.item_list.ACP380_single, ".380", false)
	},
		function(){
			show_debug_message("acp380single right click")
		},
		function(){
			show_debug_message("acp380single middle mouse click")
		},
		"Put in mag",
		"NA",
		"NA",
		
		function(){
			show_debug_message("w4")
		},
		function(){
			show_debug_message("w5")
		},
		function(){
			show_debug_message("w6")
		},
		function(){
			show_debug_message("w7")
		},
		function(){
			show_debug_message("w8")
		},
		"NA",
		"NA",
		"NA",
		"NA",
		"NA",
	),
	ACP380_exp_effect : new create_effect(
	function()
	{
		load_bullet(global.item_list.ACP380_exp, ".380", false)
	},
		function(){
			show_debug_message("acp380single right click")
		},
		function(){
			show_debug_message("acp380single middle mouse click")
		},
		"Put in mag",
		"NA",
		"NA",
		
		function(){
			show_debug_message("w4")
		},
		function(){
			show_debug_message("w5")
		},
		function(){
			show_debug_message("w6")
		},
		function(){
			show_debug_message("w7")
		},
		function(){
			show_debug_message("w8")
		},
		"NA",
		"NA",
		"NA",
		"NA",
		"NA",
	),
	ACP380_fmj_effect : new create_effect(
	function()
	{
		load_bullet(global.item_list.ACP380_fmj, ".380", false)
	},
		function(){
			show_debug_message("acp380single right click")
		},
		function(){
			show_debug_message("acp380single middle mouse click")
		},
		"Put in mag",
		"NA",
		"NA",
		
		function(){
			show_debug_message("w4")
		},
		function(){
			show_debug_message("w5")
		},
		function(){
			show_debug_message("w6")
		},
		function(){
			show_debug_message("w7")
		},
		function(){
			show_debug_message("w8")
		},
		"NA",
		"NA",
		"NA",
		"NA",
		"NA",
	),
	ACP380_du_effect : new create_effect(
	function()
	{
		load_bullet(global.item_list.ACP380_du, ".380", false)
	},
		function(){
			show_debug_message("acp380single right click")
		},
		function(){
			show_debug_message("acp380single middle mouse click")
		},
		"Put in mag",
		"NA",
		"NA",
		
		function(){
			show_debug_message("w4")
		},
		function(){
			show_debug_message("w5")
		},
		function(){
			show_debug_message("w6")
		},
		function(){
			show_debug_message("w7")
		},
		function(){
			show_debug_message("w8")
		},
		"NA",
		"NA",
		"NA",
		"NA",
		"NA",
	),
	ACP380_ap_effect : new create_effect(
	function()
	{
		load_bullet(global.item_list.ACP380_ap, ".380", false)
	},
		function(){
			show_debug_message("acp380single right click")
		},
		function(){
			show_debug_message("acp380single middle mouse click")
		},
		"Put in mag",
		"NA",
		"NA",
		
		function(){
			show_debug_message("w4")
		},
		function(){
			show_debug_message("w5")
		},
		function(){
			show_debug_message("w6")
		},
		function(){
			show_debug_message("w7")
		},
		function(){
			show_debug_message("w8")
		},
		"NA",
		"NA",
		"NA",
		"NA",
		"NA",
	),
	
	ACP32_single_effect : new create_effect(
	function()
	{
		load_bullet(global.item_list.ACP32, ".32", false)
	},
		function(){
			show_debug_message("acp380single right click")
		},
		function(){
			show_debug_message("acp380single middle mouse click")
		},
		"Put in mag",
		"NA",
		"NA",
		
		function(){
			show_debug_message("w4")
		},
		function(){
			show_debug_message("w5")
		},
		function(){
			show_debug_message("w6")
		},
		function(){
			show_debug_message("w7")
		},
		function(){
			show_debug_message("w8")
		},
		"NA",
		"NA",
		"NA",
		"NA",
		"NA",
	),
	ACP32_exp_effect : new create_effect(
	function()
	{
		load_bullet(global.item_list.ACP32_exp, ".32", false)
	},
		function(){
			show_debug_message("acp380single right click")
		},
		function(){
			show_debug_message("acp380single middle mouse click")
		},
		"Put in mag",
		"NA",
		"NA",
		
		function(){
			show_debug_message("w4")
		},
		function(){
			show_debug_message("w5")
		},
		function(){
			show_debug_message("w6")
		},
		function(){
			show_debug_message("w7")
		},
		function(){
			show_debug_message("w8")
		},
		"NA",
		"NA",
		"NA",
		"NA",
		"NA",
	),
	ACP32_fmj_effect : new create_effect(
	function()
	{
		load_bullet(global.item_list.ACP32_fmj, ".32", false)
	},
		function(){
			show_debug_message("acp380single right click")
		},
		function(){
			show_debug_message("acp380single middle mouse click")
		},
		"Put in mag",
		"NA",
		"NA",
		
		function(){
			show_debug_message("w4")
		},
		function(){
			show_debug_message("w5")
		},
		function(){
			show_debug_message("w6")
		},
		function(){
			show_debug_message("w7")
		},
		function(){
			show_debug_message("w8")
		},
		"NA",
		"NA",
		"NA",
		"NA",
		"NA",
	),
	ACP32_du_effect : new create_effect(
	function()
	{
		load_bullet(global.item_list.ACP32_du, ".32", false)
	},
		function(){
			show_debug_message("acp380single right click")
		},
		function(){
			show_debug_message("acp380single middle mouse click")
		},
		"Put in mag",
		"NA",
		"NA",
		
		function(){
			show_debug_message("w4")
		},
		function(){
			show_debug_message("w5")
		},
		function(){
			show_debug_message("w6")
		},
		function(){
			show_debug_message("w7")
		},
		function(){
			show_debug_message("w8")
		},
		"NA",
		"NA",
		"NA",
		"NA",
		"NA",
	),
	ACP32_ap_effect : new create_effect(
	function()
	{
		load_bullet(global.item_list.ACP32_ap, ".32", false)
	},
		function(){
			show_debug_message("acp380single right click")
		},
		function(){
			show_debug_message("acp380single middle mouse click")
		},
		"Put in mag",
		"NA",
		"NA",
		
		function(){
			show_debug_message("w4")
		},
		function(){
			show_debug_message("w5")
		},
		function(){
			show_debug_message("w6")
		},
		function(){
			show_debug_message("w7")
		},
		function(){
			show_debug_message("w8")
		},
		"NA",
		"NA",
		"NA",
		"NA",
		"NA",
	),
	
	single_762x25_effect : new create_effect(
	function()
	{
		load_bullet(global.item_list.single_762x25, "7.62x25", false)
	},
		function(){
			show_debug_message("acp380single right click")
		},
		function(){
			show_debug_message("acp380single middle mouse click")
		},
		"Put in mag",
		"NA",
		"NA",
		
		function(){
			show_debug_message("w4")
		},
		function(){
			show_debug_message("w5")
		},
		function(){
			show_debug_message("w6")
		},
		function(){
			show_debug_message("w7")
		},
		function(){
			show_debug_message("w8")
		},
		"NA",
		"NA",
		"NA",
		"NA",
		"NA",
	),
	single_762x25_exp_effect : new create_effect(
	function()
	{
		load_bullet(global.item_list.single_762x25_exp, "7.62x25", false)
	},
		function(){
			show_debug_message("acp380single right click")
		},
		function(){
			show_debug_message("acp380single middle mouse click")
		},
		"Put in mag",
		"NA",
		"NA",
		
		function(){
			show_debug_message("w4")
		},
		function(){
			show_debug_message("w5")
		},
		function(){
			show_debug_message("w6")
		},
		function(){
			show_debug_message("w7")
		},
		function(){
			show_debug_message("w8")
		},
		"NA",
		"NA",
		"NA",
		"NA",
		"NA",
	),
	single_762x25_fmj_effect : new create_effect(
	function()
	{
		load_bullet(global.item_list.single_762x25_fmj, "7.62x25", false)
	},
		function(){
			show_debug_message("acp380single right click")
		},
		function(){
			show_debug_message("acp380single middle mouse click")
		},
		"Put in mag",
		"NA",
		"NA",
		
		function(){
			show_debug_message("w4")
		},
		function(){
			show_debug_message("w5")
		},
		function(){
			show_debug_message("w6")
		},
		function(){
			show_debug_message("w7")
		},
		function(){
			show_debug_message("w8")
		},
		"NA",
		"NA",
		"NA",
		"NA",
		"NA",
	),
	single_762x25_du_effect : new create_effect(
	function()
	{
		load_bullet(global.item_list.single_762x25_du, "7.62x25", false)
	},
		function(){
			show_debug_message("acp380single right click")
		},
		function(){
			show_debug_message("acp380single middle mouse click")
		},
		"Put in mag",
		"NA",
		"NA",
		
		function(){
			show_debug_message("w4")
		},
		function(){
			show_debug_message("w5")
		},
		function(){
			show_debug_message("w6")
		},
		function(){
			show_debug_message("w7")
		},
		function(){
			show_debug_message("w8")
		},
		"NA",
		"NA",
		"NA",
		"NA",
		"NA",
	),
	single_762x25_ap_effect : new create_effect(
	function()
	{
		load_bullet(global.item_list.single_762x25_ap, "7.62x25", false)
	},
		function(){
			show_debug_message("acp380single right click")
		},
		function(){
			show_debug_message("acp380single middle mouse click")
		},
		"Put in mag",
		"NA",
		"NA",
		
		function(){
			show_debug_message("w4")
		},
		function(){
			show_debug_message("w5")
		},
		function(){
			show_debug_message("w6")
		},
		function(){
			show_debug_message("w7")
		},
		function(){
			show_debug_message("w8")
		},
		"NA",
		"NA",
		"NA",
		"NA",
		"NA",
	),
	single_762x45_effect : new create_effect(
	function()
	{
		load_bullet(global.item_list.single_762x45, "7.62x45", false)
	},
		function(){
			show_debug_message("acp380single right click")
		},
		function(){
			show_debug_message("acp380single middle mouse click")
		},
		"Put in mag",
		"NA",
		"NA",
		
		function(){
			show_debug_message("w4")
		},
		function(){
			show_debug_message("w5")
		},
		function(){
			show_debug_message("w6")
		},
		function(){
			show_debug_message("w7")
		},
		function(){
			show_debug_message("w8")
		},
		"NA",
		"NA",
		"NA",
		"NA",
		"NA",
	),
	single_762x45_exp_effect : new create_effect(
	function()
	{
		load_bullet(global.item_list.single_762x45_exp, "7.62x45", false)
	},
		function(){
			show_debug_message("acp380single right click")
		},
		function(){
			show_debug_message("acp380single middle mouse click")
		},
		"Put in mag",
		"NA",
		"NA",
		
		function(){
			show_debug_message("w4")
		},
		function(){
			show_debug_message("w5")
		},
		function(){
			show_debug_message("w6")
		},
		function(){
			show_debug_message("w7")
		},
		function(){
			show_debug_message("w8")
		},
		"NA",
		"NA",
		"NA",
		"NA",
		"NA",
	),
	single_762x45_fmj_effect : new create_effect(
	function()
	{
		load_bullet(global.item_list.single_762x45_fmj, "7.62x45", false)
	},
		function(){
			show_debug_message("acp380single right click")
		},
		function(){
			show_debug_message("acp380single middle mouse click")
		},
		"Put in mag",
		"NA",
		"NA",
		
		function(){
			show_debug_message("w4")
		},
		function(){
			show_debug_message("w5")
		},
		function(){
			show_debug_message("w6")
		},
		function(){
			show_debug_message("w7")
		},
		function(){
			show_debug_message("w8")
		},
		"NA",
		"NA",
		"NA",
		"NA",
		"NA",
	),
	single_762x45_du_effect : new create_effect(
	function()
	{
		load_bullet(global.item_list.single_762x45_du, "7.62x45", false)
	},
		function(){
			show_debug_message("acp380single right click")
		},
		function(){
			show_debug_message("acp380single middle mouse click")
		},
		"Put in mag",
		"NA",
		"NA",
		
		function(){
			show_debug_message("w4")
		},
		function(){
			show_debug_message("w5")
		},
		function(){
			show_debug_message("w6")
		},
		function(){
			show_debug_message("w7")
		},
		function(){
			show_debug_message("w8")
		},
		"NA",
		"NA",
		"NA",
		"NA",
		"NA",
	),
	single_762x45_ap_effect : new create_effect(
	function()
	{
		load_bullet(global.item_list.single_762x45_ap, "7.62x45", false)
	},
		function(){
			show_debug_message("acp380single right click")
		},
		function(){
			show_debug_message("acp380single middle mouse click")
		},
		"Put in mag",
		"NA",
		"NA",
		
		function(){
			show_debug_message("w4")
		},
		function(){
			show_debug_message("w5")
		},
		function(){
			show_debug_message("w6")
		},
		function(){
			show_debug_message("w7")
		},
		function(){
			show_debug_message("w8")
		},
		"NA",
		"NA",
		"NA",
		"NA",
		"NA",
	),
	single_12gauge_effect : new create_effect(
	function()
	{
		load_bullet(global.item_list.single_12gauge, "12G", false)
	},
		function(){
			show_debug_message("acp380single right click")
		},
		function(){
			show_debug_message("acp380single middle mouse click")
		},
		"Put in mag/weapon",
		"NA",
		"NA",
		
		function(){
			show_debug_message("w4")
		},
		function(){
			show_debug_message("w5")
		},
		function(){
			show_debug_message("w6")
		},
		function(){
			show_debug_message("w7")
		},
		function(){
			show_debug_message("w8")
		},
		"NA",
		"NA",
		"NA",
		"NA",
		"NA",
	),
	single_12gauge_buck_effect : new create_effect(
	function()
	{
		load_bullet(global.item_list.single_12gauge_buck, "12G", false)
	},
		function(){
			show_debug_message("acp380single right click")
		},
		function(){
			show_debug_message("acp380single middle mouse click")
		},
		"Put in mag/weapon",
		"NA",
		"NA",
		
		function(){
			show_debug_message("w4")
		},
		function(){
			show_debug_message("w5")
		},
		function(){
			show_debug_message("w6")
		},
		function(){
			show_debug_message("w7")
		},
		function(){
			show_debug_message("w8")
		},
		"NA",
		"NA",
		"NA",
		"NA",
		"NA",
	),
	single_12gauge_slug_effect : new create_effect(
	function()
	{
		load_bullet(global.item_list.single_12gauge_slug, "12G", false)
	},
		function(){
			show_debug_message("acp380single right click")
		},
		function(){
			show_debug_message("acp380single middle mouse click")
		},
		"Put in mag/weapon",
		"NA",
		"NA",
		
		function(){
			show_debug_message("w4")
		},
		function(){
			show_debug_message("w5")
		},
		function(){
			show_debug_message("w6")
		},
		function(){
			show_debug_message("w7")
		},
		function(){
			show_debug_message("w8")
		},
		"NA",
		"NA",
		"NA",
		"NA",
		"NA",
	),
	single_12gauge_exp_effect : new create_effect(
	function()
	{
		load_bullet(global.item_list.single_12gauge_exp, "12G", false)
	},
		function(){
			show_debug_message("acp380single right click")
		},
		function(){
			show_debug_message("acp380single middle mouse click")
		},
		"Put in mag/weapon",
		"NA",
		"NA",
		
		function(){
			show_debug_message("w4")
		},
		function(){
			show_debug_message("w5")
		},
		function(){
			show_debug_message("w6")
		},
		function(){
			show_debug_message("w7")
		},
		function(){
			show_debug_message("w8")
		},
		"NA",
		"NA",
		"NA",
		"NA",
		"NA",
	),
	magnum44_effect : new create_effect(
	function()
	{
		load_bullet(global.item_list.magnum44, "44M", false)
	},
		function(){
			show_debug_message("acp380single right click")
		},
		function(){
			show_debug_message("acp380single middle mouse click")
		},
		"Put in mag/weapon",
		"NA",
		"NA",
		
		function(){
			show_debug_message("w4")
		},
		function(){
			show_debug_message("w5")
		},
		function(){
			show_debug_message("w6")
		},
		function(){
			show_debug_message("w7")
		},
		function(){
			show_debug_message("w8")
		},
		"NA",
		"NA",
		"NA",
		"NA",
		"NA",
	),
	magnum44_exp_effect : new create_effect(
	function()
	{
		load_bullet(global.item_list.magnum44_exp, "44M", false)
	},
		function(){
			show_debug_message("acp380single right click")
		},
		function(){
			show_debug_message("acp380single middle mouse click")
		},
		"Put in mag/weapon",
		"NA",
		"NA",
		
		function(){
			show_debug_message("w4")
		},
		function(){
			show_debug_message("w5")
		},
		function(){
			show_debug_message("w6")
		},
		function(){
			show_debug_message("w7")
		},
		function(){
			show_debug_message("w8")
		},
		"NA",
		"NA",
		"NA",
		"NA",
		"NA",
	),
	magnum44_fmj_effect : new create_effect(
	function()
	{
		load_bullet(global.item_list.magnum44_fmj, "44M", false)
	},
		function(){
			show_debug_message("acp380single right click")
		},
		function(){
			show_debug_message("acp380single middle mouse click")
		},
		"Put in mag/weapon",
		"NA",
		"NA",
		
		function(){
			show_debug_message("w4")
		},
		function(){
			show_debug_message("w5")
		},
		function(){
			show_debug_message("w6")
		},
		function(){
			show_debug_message("w7")
		},
		function(){
			show_debug_message("w8")
		},
		"NA",
		"NA",
		"NA",
		"NA",
		"NA",
	),
	magnum44_du_effect : new create_effect(
	function()
	{
		load_bullet(global.item_list.magnum44_du, "44M", false)
	},
		function(){
			show_debug_message("acp380single right click")
		},
		function(){
			show_debug_message("acp380single middle mouse click")
		},
		"Put in mag/weapon",
		"NA",
		"NA",
		
		function(){
			show_debug_message("w4")
		},
		function(){
			show_debug_message("w5")
		},
		function(){
			show_debug_message("w6")
		},
		function(){
			show_debug_message("w7")
		},
		function(){
			show_debug_message("w8")
		},
		"NA",
		"NA",
		"NA",
		"NA",
		"NA",
	),
	magnum44_ap_effect : new create_effect(
	function()
	{
		load_bullet(global.item_list.magnum44_ap, "44M", false)
	},
		function(){
			show_debug_message("acp380single right click")
		},
		function(){
			show_debug_message("acp380single middle mouse click")
		},
		"Put in mag/weapon",
		"NA",
		"NA",
		
		function(){
			show_debug_message("w4")
		},
		function(){
			show_debug_message("w5")
		},
		function(){
			show_debug_message("w6")
		},
		function(){
			show_debug_message("w7")
		},
		function(){
			show_debug_message("w8")
		},
		"NA",
		"NA",
		"NA",
		"NA",
		"NA",
	),
	pistole_vz24_mag_effect : new create_effect(
	function(){
			mag_insert(global.item_list.pistole_vz24, global.item_list.pistole_vz24_mag)
		},
		function(){
			unload_bullet(global.item_list.pistole_vz24_mag, global.item_list.ACP380_single)
		},
		function(){
			show_debug_message("mag middle mouse click")
		},
		"Put in gun",
		"Unload",
		"NA",
		
		
		function(){
			show_debug_message("w4")
		},
		function(){
			show_debug_message("w5")
		},
		function(){
			show_debug_message("w6")
		},
		function(){
			show_debug_message("w7")
		},
		function(){
			show_debug_message("w8")
		},
		"NA",
		"NA",
		"NA",
		"NA",
		"NA",
	),
	sa23_mag_effect : new create_effect(
	function(){
			mag_insert(global.item_list.sa23, global.item_list.sa23_mag)
		},
		function(){
			unload_bullet(global.item_list.sa23_mag, global.item_list.single_762x25)
		},
		function(){
			show_debug_message("mag middle mouse click")
		},
		"Put in gun",
		"Unload",
		"NA",
		
		
		function(){
			
		},
		function(){
			show_debug_message("w5")
		},
		function(){
			show_debug_message("w6")
		},
		function(){
			show_debug_message("w7")
		},
		function(){
			show_debug_message("w8")
		},
		
		"NA",
		"NA",
		"NA",
		"NA",
		"NA",
	),
	skorpion_mag_effect : new create_effect(
	function(){
			mag_insert(global.item_list.skorpion, global.item_list.skorpion_mag)
		},
		function(){
			unload_bullet(global.item_list.skorpion_mag, global.item_list.ACP32)
		},
		function(){
			show_debug_message("mag middle mouse click")
		},
		"Put in gun",
		"Unload",
		"NA",
		
		
		function(){
			
		},
		function(){
			show_debug_message("w5")
		},
		function(){
			show_debug_message("w6")
		},
		function(){
			show_debug_message("w7")
		},
		function(){
			show_debug_message("w8")
		},
		
		"NA",
		"NA",
		"NA",
		"NA",
		"NA",
	),
	vz54_mag_effect : new create_effect(
	function(){
			mag_insert(global.item_list.vz54, global.item_list.vz54_mag)
		},
		function(){
			unload_bullet(global.item_list.vz54_mag, global.item_list.single_762x45)
		},
		function(){
			show_debug_message("mag middle mouse click")
		},
		"Put in gun",
		"Unload",
		"NA",
		
		
		function(){
			show_debug_message("w4")
		},
		function(){
			show_debug_message("w5")
		},
		function(){
			show_debug_message("w6")
		},
		function(){
			show_debug_message("w7")
		},
		function(){
			show_debug_message("w8")
		},
		"NA",
		"NA",
		"NA",
		"NA",
		"NA",
	),
	capacitor_effect : new create_effect(
	function(){
			mag_insert(global.item_list.disintegration_pistol, global.item_list.capacitor)
		},
		function(){
		},
		function(){
			show_debug_message("mag middle mouse click")
		},
		"Attach to Gun",
		"NA",
		"NA",
		
		
		function(){
			show_debug_message("w4")
		},
		function(){
			show_debug_message("w5")
		},
		function(){
			show_debug_message("w6")
		},
		function(){
			show_debug_message("w7")
		},
		function(){
			show_debug_message("w8")
		},
		"NA",
		"NA",
		"NA",
		"NA",
		"NA",
	),
	sw_model29_speedloader_effect : new create_effect(
	function(){
			speedload(global.item_list.sw_model29, global.item_list.sw_model29_speedloader)
		},
		function(){
			unload_bullet(global.item_list.sw_model29_speedloader, global.item_list.magnum44)
		},
		function(){
			show_debug_message("mag middle mouse click")
		},
		"Speedload Revolver",
		"Unload",
		"NA",
		
		
		function(){
			show_debug_message("w4")
		},
		function(){
			show_debug_message("w5")
		},
		function(){
			show_debug_message("w6")
		},
		function(){
			show_debug_message("w7")
		},
		function(){
			show_debug_message("w8")
		},
		"NA",
		"NA",
		"NA",
		"NA",
		"NA",
	),
	ACP380_shell_effect : new create_effect(
		function(){
			show_debug_message("left click");
		},
		function(){
			show_debug_message("right click")
		},
		function(){
			show_debug_message("middle mouse click")
		},
		"N/A",
		"N/A",
		"N/A",
		
		function(){
			show_debug_message("w4")
		},
		function(){
			show_debug_message("w5")
		},
		function(){
			show_debug_message("w6")
		},
		function(){
			show_debug_message("w7")
		},
		function(){
			show_debug_message("w8")
		},
		"NA",
		"NA",
		"NA",
		"NA",
		"NA",
		
	),
	ACP32_shell_effect : new create_effect(
		function(){
			show_debug_message("left click");
		},
		function(){
			show_debug_message("right click")
		},
		function(){
			show_debug_message("middle mouse click")
		},
		"N/A",
		"N/A",
		"N/A",
		
		function(){
			show_debug_message("w4")
		},
		function(){
			show_debug_message("w5")
		},
		function(){
			show_debug_message("w6")
		},
		function(){
			show_debug_message("w7")
		},
		function(){
			show_debug_message("w8")
		},
		"NA",
		"NA",
		"NA",
		"NA",
		"NA",
		
	),
	magnum44_shell_effect : new create_effect(
		function(){
			show_debug_message("left click");
		},
		function(){
			show_debug_message("right click")
		},
		function(){
			show_debug_message("middle mouse click")
		},
		"N/A",
		"N/A",
		"N/A",
		
		function(){
			show_debug_message("w4")
		},
		function(){
			show_debug_message("w5")
		},
		function(){
			show_debug_message("w6")
		},
		function(){
			show_debug_message("w7")
		},
		function(){
			show_debug_message("w8")
		},
		"NA",
		"NA",
		"NA",
		"NA",
		"NA",
		
	),
	single_762x25_shell_effect : new create_effect(
		function(){
			show_debug_message("left click");
		},
		function(){
			show_debug_message("right click")
		},
		function(){
			show_debug_message("middle mouse click")
		},
		"N/A",
		"N/A",
		"N/A",
		
		function(){
			show_debug_message("w4")
		},
		function(){
			show_debug_message("w5")
		},
		function(){
			show_debug_message("w6")
		},
		function(){
			show_debug_message("w7")
		},
		function(){
			show_debug_message("w8")
		},
		"NA",
		"NA",
		"NA",
		"NA",
		"NA",
		
	),
	single_762x45_shell_effect : new create_effect(
		function(){
			show_debug_message("left click");
		},
		function(){
			show_debug_message("right click")
		},
		function(){
			show_debug_message("middle mouse click")
		},
		"N/A",
		"N/A",
		"N/A",
		
		function(){
			show_debug_message("w4")
		},
		function(){
			show_debug_message("w5")
		},
		function(){
			show_debug_message("w6")
		},
		function(){
			show_debug_message("w7")
		},
		function(){
			show_debug_message("w8")
		},
		"NA",
		"NA",
		"NA",
		"NA",
		"NA",
		
	),
	single_12gauge_shell_effect : new create_effect(
		function(){
			show_debug_message("left click");
		},
		function(){
			show_debug_message("right click")
		},
		function(){
			show_debug_message("middle mouse click")
		},
		"N/A",
		"N/A",
		"N/A",
		
		function(){
			show_debug_message("w4")
		},
		function(){
			show_debug_message("w5")
		},
		function(){
			show_debug_message("w6")
		},
		function(){
			show_debug_message("w7")
		},
		function(){
			show_debug_message("w8")
		},
		"NA",
		"NA",
		"NA",
		"NA",
		"NA",
		
	),
	test_key_effect : new create_effect(
	function(){
			if instance_exists(obj_door)
			{
				with(obj_door)
				{
					if distance_to_object(obj_player) < 20 
					{
						instance_destroy()
					}
				}
			}
		},
		function(){
			show_debug_message("test key right click")
		},
		function(){
			show_debug_message("test key middle mouse click")
		},
		"Open door",
		"NA",
		"NA",
		
		
		function(){
			show_debug_message("w4")
		},
		function(){
			show_debug_message("w5")
		},
		function(){
			show_debug_message("w6")
		},
		function(){
			show_debug_message("w7")
		},
		function(){
			show_debug_message("w8")
		},
		"NA",
		"NA",
		"NA",
		"NA",
		"NA",
	),
	test_shirt_effect : new create_effect(
		function(){
			show_debug_message("left click");
		},
		function(){
			show_debug_message("right click")
		},
		function(){
			show_debug_message("middle mouse click")
		},
		"N/A",
		"N/A",
		"N/A",
		
		function(){
			show_debug_message("w4")
		},
		function(){
			show_debug_message("w5")
		},
		function(){
			show_debug_message("w6")
		},
		function(){
			show_debug_message("w7")
		},
		function(){
			show_debug_message("w8")
		},
		"NA",
		"NA",
		"NA",
		"NA",
		"NA",
		
	),
	test_pants_effect : new create_effect(
		function(){
			show_debug_message("left click");
		},
		function(){
			show_debug_message("right click")
		},
		function(){
			show_debug_message("middle mouse click")
		},
		"N/A",
		"N/A",
		"N/A",
		
		function(){
			show_debug_message("w4")
		},
		function(){
			show_debug_message("w5")
		},
		function(){
			show_debug_message("w6")
		},
		function(){
			show_debug_message("w7")
		},
		function(){
			show_debug_message("w8")
		},
		"NA",
		"NA",
		"NA",
		"NA",
		"NA",
		
	),
	right_pant_effect : new create_effect(
		function(){
			show_debug_message("left click");
		},
		function(){
			show_debug_message("right click")
		},
		function(){
			show_debug_message("middle mouse click")
		},
		"N/A",
		"N/A",
		"N/A",
		
		function(){
			show_debug_message("w4")
		},
		function(){
			show_debug_message("w5")
		},
		function(){
			show_debug_message("w6")
		},
		function(){
			show_debug_message("w7")
		},
		function(){
			show_debug_message("w8")
		},
		"NA",
		"NA",
		"NA",
		"NA",
		"NA",
		
	),
	left_pant_effect : new create_effect(
		function(){
			show_debug_message("left click");
		},
		function(){
			show_debug_message("right click")
		},
		function(){
			show_debug_message("middle mouse click")
		},
		"N/A",
		"N/A",
		"N/A",
		
		function(){
			show_debug_message("w4")
		},
		function(){
			show_debug_message("w5")
		},
		function(){
			show_debug_message("w6")
		},
		function(){
			show_debug_message("w7")
		},
		function(){
			show_debug_message("w8")
		},
		"NA",
		"NA",
		"NA",
		"NA",
		"NA",
		
	),
	left_glove_effect : new create_effect(
		function(){
			show_debug_message("left click");
		},
		function(){
			show_debug_message("right click")
		},
		function(){
			show_debug_message("middle mouse click")
		},
		"N/A",
		"N/A",
		"N/A",
		
		function(){
			show_debug_message("w4")
		},
		function(){
			show_debug_message("w5")
		},
		function(){
			show_debug_message("w6")
		},
		function(){
			show_debug_message("w7")
		},
		function(){
			show_debug_message("w8")
		},
		"NA",
		"NA",
		"NA",
		"NA",
		"NA",
		
	),
	right_glove_effect : new create_effect(
		function(){
			show_debug_message("left click");
		},
		function(){
			show_debug_message("right click")
		},
		function(){
			show_debug_message("middle mouse click")
		},
		"N/A",
		"N/A",
		"N/A",
		
		function(){
			show_debug_message("w4")
		},
		function(){
			show_debug_message("w5")
		},
		function(){
			show_debug_message("w6")
		},
		function(){
			show_debug_message("w7")
		},
		function(){
			show_debug_message("w8")
		},
		"NA",
		"NA",
		"NA",
		"NA",
		"NA",
		
	),
	gas_mask_effect : new create_effect(
		function(){
			show_debug_message("left click");
		},
		function(){
			show_debug_message("right click")
		},
		function(){
			show_debug_message("middle mouse click")
		},
		"N/A",
		"N/A",
		"N/A",
		
		function(){
			show_debug_message("w4")
		},
		function(){
			show_debug_message("w5")
		},
		function(){
			show_debug_message("w6")
		},
		function(){
			show_debug_message("w7")
		},
		function(){
			show_debug_message("w8")
		},
		"NA",
		"NA",
		"NA",
		"NA",
		"NA",
		
	),
	military_helmet_effect :new create_effect(
		function(){
			show_debug_message("left click");
		},
		function(){
			show_debug_message("right click")
		},
		function(){
			show_debug_message("middle mouse click")
		},
		"N/A",
		"N/A",
		"N/A",
		
		function(){
			show_debug_message("w4")
		},
		function(){
			show_debug_message("w5")
		},
		function(){
			show_debug_message("w6")
		},
		function(){
			show_debug_message("w7")
		},
		function(){
			show_debug_message("w8")
		},
		"NA",
		"NA",
		"NA",
		"NA",
		"NA",
		
	),
	right_boot_effect : new create_effect(
		function(){
			show_debug_message("left click");
		},
		function(){
			show_debug_message("right click")
		},
		function(){
			show_debug_message("middle mouse click")
		},
		"N/A",
		"N/A",
		"N/A",
		
		function(){
			show_debug_message("w4")
		},
		function(){
			show_debug_message("w5")
		},
		function(){
			show_debug_message("w6")
		},
		function(){
			show_debug_message("w7")
		},
		function(){
			show_debug_message("w8")
		},
		"NA",
		"NA",
		"NA",
		"NA",
		"NA",
		
	),
	left_boot_effect : new create_effect(
		function(){
			show_debug_message("left click");
		},
		function(){
			show_debug_message("right click")
		},
		function(){
			show_debug_message("middle mouse click")
		},
		"N/A",
		"N/A",
		"N/A",
		
		function(){
			show_debug_message("w4")
		},
		function(){
			show_debug_message("w5")
		},
		function(){
			show_debug_message("w6")
		},
		function(){
			show_debug_message("w7")
		},
		function(){
			show_debug_message("w8")
		},
		"NA",
		"NA",
		"NA",
		"NA",
		"NA",
		
	),
	coat_effect : new create_effect(
		function(){
			show_debug_message("left click");
		},
		function(){
			show_debug_message("right click")
		},
		function(){
			show_debug_message("middle mouse click")
		},
		"N/A",
		"N/A",
		"N/A",
		
		function(){
			show_debug_message("w4")
		},
		function(){
			show_debug_message("w5")
		},
		function(){
			show_debug_message("w6")
		},
		function(){
			show_debug_message("w7")
		},
		function(){
			show_debug_message("w8")
		},
		"NA",
		"NA",
		"NA",
		"NA",
		"NA",
		
	),
	backpack_effect : new create_effect(
		function(){
			show_debug_message("left click");
		},
		function(){
			show_debug_message("right click")
		},
		function(){
			show_debug_message("middle mouse click")
		},
		"N/A",
		"N/A",
		"N/A",
		
		function(){
			show_debug_message("w4")
		},
		function(){
			show_debug_message("w5")
		},
		function(){
			show_debug_message("w6")
		},
		function(){
			show_debug_message("w7")
		},
		function(){
			show_debug_message("w8")
		},
		"NA",
		"NA",
		"NA",
		"NA",
		"NA",
		
	),
	strapped_stick_effect : new create_effect(
		function(){
			show_debug_message("left click");
		},
		function(){
			show_debug_message("right click")
		},
		function(){
			show_debug_message("middle mouse click")
		},
		"N/A",
		"N/A",
		"N/A",
		
		function(){
			show_debug_message("w4")
		},
		function(){
			show_debug_message("w5")
		},
		function(){
			show_debug_message("w6")
		},
		function(){
			show_debug_message("w7")
		},
		function(){
			show_debug_message("w8")
		},
		"NA",
		"NA",
		"NA",
		"NA",
		"NA",
		
	),
	copper_band_effect : new create_effect(
		function(){
			show_debug_message("left click");
		},
		function(){
			show_debug_message("right click")
		},
		function(){
			show_debug_message("middle mouse click")
		},
		"N/A",
		"N/A",
		"N/A",
		
		function(){
			show_debug_message("w4")
		},
		function(){
			show_debug_message("w5")
		},
		function(){
			show_debug_message("w6")
		},
		function(){
			show_debug_message("w7")
		},
		function(){
			show_debug_message("w8")
		},
		"NA",
		"NA",
		"NA",
		"NA",
		"NA",
		
	),
	small_belt_effect : new create_effect(
		function(){
			show_debug_message("left click");
		},
		function(){
			show_debug_message("right click")
		},
		function(){
			show_debug_message("middle mouse click")
		},
		"N/A",
		"N/A",
		"N/A",
		
		function(){
			show_debug_message("w4")
		},
		function(){
			show_debug_message("w5")
		},
		function(){
			show_debug_message("w6")
		},
		function(){
			show_debug_message("w7")
		},
		function(){
			show_debug_message("w8")
		},
		"NA",
		"NA",
		"NA",
		"NA",
		"NA",
		
	),
	single_action_trigger_effect : new create_effect(
		function(){
			if global.right_hand_item != noone && global.right_hand_item.specs.item_type == "Firearm"
			{
				swap_component(global.item_list.single_action_trigger, 1, 5, global.right_hand_item.weapon.parts.trigger, noone)
			}
			if global.left_hand_item != noone && global.left_hand_item.specs.item_type == "Firearm"
			{
				swap_component(global.item_list.single_action_trigger, 1, 5, noone, global.left_hand_item.weapon.parts.trigger)
			}
		},
		function(){
			show_debug_message("right click")
		},
		function(){
			show_debug_message("middle mouse click")
		},
		"Replace",
		"N/A",
		"N/A",
		
		function(){
			show_debug_message("w4")
		},
		function(){
			show_debug_message("w5")
		},
		function(){
			show_debug_message("w6")
		},
		function(){
			show_debug_message("w7")
		},
		function(){
			show_debug_message("w8")
		},
		"NA",
		"NA",
		"NA",
		"NA",
		"NA",
		
	),
	double_action_trigger_effect : new create_effect(
		function(){
			if global.right_hand_item != noone && global.right_hand_item.specs.item_type == "Firearm"
			{
				swap_component(global.item_list.double_action_trigger, 1, 5, global.right_hand_item.weapon.parts.trigger, noone)
			}
			if global.left_hand_item != noone && global.left_hand_item.specs.item_type == "Firearm"
			{
				swap_component(global.item_list.double_action_trigger, 1, 5, noone, global.left_hand_item.weapon.parts.trigger)
			}
		},
		function(){
			show_debug_message("right click")
		},
		function(){
			show_debug_message("middle mouse click")
		},
		"Replace",
		"N/A",
		"N/A",
		
		function(){
			show_debug_message("w4")
		},
		function(){
			show_debug_message("w5")
		},
		function(){
			show_debug_message("w6")
		},
		function(){
			show_debug_message("w7")
		},
		function(){
			show_debug_message("w8")
		},
		"NA",
		"NA",
		"NA",
		"NA",
		"NA",
		
	),
	super_conductor_circuit_effect : new create_effect(
		function(){
			if global.right_hand_item != noone && global.right_hand_item.specs.item_type == "Firearm"
			{
				swap_component(global.item_list.super_conductor_circuit, 1, 5, global.right_hand_item.weapon.parts.trigger, noone)
			}
			if global.left_hand_item != noone && global.left_hand_item.specs.item_type == "Firearm"
			{
				swap_component(global.item_list.super_conductor_circuit, 1, 5, noone, global.left_hand_item.weapon.parts.trigger)
			}
		},
		function(){
			show_debug_message("right click")
		},
		function(){
			show_debug_message("middle mouse click")
		},
		"Replace",
		"N/A",
		"N/A",
		
		function(){
			show_debug_message("w4")
		},
		function(){
			show_debug_message("w5")
		},
		function(){
			show_debug_message("w6")
		},
		function(){
			show_debug_message("w7")
		},
		function(){
			show_debug_message("w8")
		},
		"NA",
		"NA",
		"NA",
		"NA",
		"NA",
		
	),
	single_action_hammer_effect : new create_effect(
		function(){
			if global.right_hand_item != noone && global.right_hand_item.specs.item_type == "Firearm"
			{
				swap_component(global.item_list.single_action_hammer, 2, 6, global.right_hand_item.weapon.parts.hammer, noone)
			}
			if global.left_hand_item != noone && global.left_hand_item.specs.item_type == "Firearm"
			{
				swap_component(global.item_list.single_action_hammer, 2, 6, noone, global.left_hand_item.weapon.parts.hammer)
			}
		},
		function(){
			show_debug_message("right click")
		},
		function(){
			show_debug_message("middle mouse click")
		},
		"Replace",
		"N/A",
		"N/A",
		
		function(){
			show_debug_message("w4")
		},
		function(){
			show_debug_message("w5")
		},
		function(){
			show_debug_message("w6")
		},
		function(){
			show_debug_message("w7")
		},
		function(){
			show_debug_message("w8")
		},
		"NA",
		"NA",
		"NA",
		"NA",
		"NA",
		
	),
	overcharge_modulator_effect : new create_effect(
		function(){
			if global.right_hand_item != noone && global.right_hand_item.specs.item_type == "Firearm"
			{
				swap_component(global.item_list.overcharge_modulator, 2, 6, global.right_hand_item.weapon.parts.hammer, noone)
			}
			if global.left_hand_item != noone && global.left_hand_item.specs.item_type == "Firearm"
			{
				swap_component(global.item_list.overcharge_modulator, 2, 6, noone, global.left_hand_item.weapon.parts.hammer)
			}
		},
		function(){
			show_debug_message("right click")
		},
		function(){
			show_debug_message("middle mouse click")
		},
		"Replace",
		"N/A",
		"N/A",
		
		function(){
			show_debug_message("w4")
		},
		function(){
			show_debug_message("w5")
		},
		function(){
			show_debug_message("w6")
		},
		function(){
			show_debug_message("w7")
		},
		function(){
			show_debug_message("w8")
		},
		"NA",
		"NA",
		"NA",
		"NA",
		"NA",
		
	),
	short_barrel_effect : new create_effect(
		function(){
			if global.right_hand_item != noone && global.right_hand_item.specs.item_type == "Firearm"
			{
				swap_component(global.item_list.short_barrel, 3, 7, global.right_hand_item.weapon.parts.barrel, noone)
			}
			if global.left_hand_item != noone && global.left_hand_item.specs.item_type == "Firearm"
			{
				swap_component(global.item_list.short_barrel, 3, 7, noone, global.left_hand_item.weapon.parts.barrel)
			}
		},
		function(){
			show_debug_message("right click")
		},
		function(){
			show_debug_message("middle mouse click")
		},
		"Replace",
		"N/A",
		"N/A",
		
		function(){
			show_debug_message("w4")
		},
		function(){
			show_debug_message("w5")
		},
		function(){
			show_debug_message("w6")
		},
		function(){
			show_debug_message("w7")
		},
		function(){
			show_debug_message("w8")
		},
		"NA",
		"NA",
		"NA",
		"NA",
		"NA",
		
	),
	electromagnetic_lenses_effect : new create_effect(
		function(){
			if global.right_hand_item != noone && global.right_hand_item.specs.item_type == "Firearm"
			{
				swap_component(global.item_list.electromagnetic_lenses, 3, 7, global.right_hand_item.weapon.parts.barrel, noone)
			}
			if global.left_hand_item != noone && global.left_hand_item.specs.item_type == "Firearm"
			{
				swap_component(global.item_list.electromagnetic_lenses, 3, 7, noone, global.left_hand_item.weapon.parts.barrel)
			}
		},
		function(){
			show_debug_message("right click")
		},
		function(){
			show_debug_message("middle mouse click")
		},
		"Replace",
		"N/A",
		"N/A",
		
		function(){
			show_debug_message("w4")
		},
		function(){
			show_debug_message("w5")
		},
		function(){
			show_debug_message("w6")
		},
		function(){
			show_debug_message("w7")
		},
		function(){
			show_debug_message("w8")
		},
		"NA",
		"NA",
		"NA",
		"NA",
		"NA",
		
	),
	long_barrel_effect : new create_effect(
		function(){
			if global.right_hand_item != noone && global.right_hand_item.specs.item_type == "Firearm"
			{
				swap_component(global.item_list.long_barrel, 3, 7, global.right_hand_item.weapon.parts.barrel, noone)
			}
			if global.left_hand_item != noone && global.left_hand_item.specs.item_type == "Firearm"
			{
				swap_component(global.item_list.long_barrel, 3, 7, noone, global.left_hand_item.weapon.parts.barrel)
			}
		},
		function(){
			show_debug_message("right click")
		},
		function(){
			show_debug_message("middle mouse click")
		},
		"Replace",
		"N/A",
		"N/A",
		
		function(){
			show_debug_message("w4")
		},
		function(){
			show_debug_message("w5")
		},
		function(){
			show_debug_message("w6")
		},
		function(){
			show_debug_message("w7")
		},
		function(){
			show_debug_message("w8")
		},
		"NA",
		"NA",
		"NA",
		"NA",
		"NA",
		
	),
	spring_15lbs_effect : new create_effect(
		function(){
			if global.right_hand_item != noone && global.right_hand_item.specs.item_type == "Firearm"
			{
				swap_component(global.item_list.spring_15lbs, 4, 8, global.right_hand_item.weapon.parts.recoil_spring, noone)
			}
			if global.left_hand_item != noone && global.left_hand_item.specs.item_type == "Firearm"
			{
				swap_component(global.item_list.spring_15lbs, 4, 8, noone, global.left_hand_item.weapon.parts.recoil_spring)
			}
		},
		function(){
			show_debug_message("right click")
		},
		function(){
			show_debug_message("middle mouse click")
		},
		"Replace",
		"N/A",
		"N/A",
		
		function(){
			show_debug_message("w4")
		},
		function(){
			show_debug_message("w5")
		},
		function(){
			show_debug_message("w6")
		},
		function(){
			show_debug_message("w7")
		},
		function(){
			show_debug_message("w8")
		},
		"NA",
		"NA",
		"NA",
		"NA",
		"NA",
		
	),
	spring_25lbs_effect : new create_effect(
		function(){
			if global.right_hand_item != noone && global.right_hand_item.specs.item_type == "Firearm"
			{
				swap_component(global.item_list.spring_25lbs, 4, 8, global.right_hand_item.weapon.parts.recoil_spring, noone)
			}
			if global.left_hand_item != noone && global.left_hand_item.specs.item_type == "Firearm"
			{
				swap_component(global.item_list.spring_25lbs, 4, 8, noone, global.left_hand_item.weapon.parts.recoil_spring)
			}
		},
		function(){
			show_debug_message("right click")
		},
		function(){
			show_debug_message("middle mouse click")
		},
		"Replace",
		"N/A",
		"N/A",
		
		function(){
			show_debug_message("w4")
		},
		function(){
			show_debug_message("w5")
		},
		function(){
			show_debug_message("w6")
		},
		function(){
			show_debug_message("w7")
		},
		function(){
			show_debug_message("w8")
		},
		"NA",
		"NA",
		"NA",
		"NA",
		"NA",
		
	),
	claw_extractor_effect : new create_effect(
		function(){
			if global.right_hand_item != noone && global.right_hand_item.specs.item_type == "Firearm"
			{
				swap_component(global.item_list.claw_extractor, 13, 19, global.right_hand_item.weapon.parts.extractor, noone)
			}
			if global.left_hand_item != noone && global.left_hand_item.specs.item_type == "Firearm"
			{
				swap_component(global.item_list.claw_extractor, 13, 19, noone, global.left_hand_item.weapon.parts.extractor)
			}
		},
		function(){
			show_debug_message("right click")
		},
		function(){
			show_debug_message("middle mouse click")
		},
		"Replace",
		"N/A",
		"N/A",
		
		function(){
			show_debug_message("w4")
		},
		function(){
			show_debug_message("w5")
		},
		function(){
			show_debug_message("w6")
		},
		function(){
			show_debug_message("w7")
		},
		function(){
			show_debug_message("w8")
		},
		"NA",
		"NA",
		"NA",
		"NA",
		"NA",
		
	),
	single_762x39_effect : new create_effect(
		function(){
			load_bullet(global.item_list.single_762x39, "7.62x39", false)
		},
		function(){
			show_debug_message("right click")
		},
		function(){
			show_debug_message("middle mouse click")
		},
		"Load Mag",
		"N/A",
		"N/A",
		
		function(){
			show_debug_message("w4")
		},
		function(){
			show_debug_message("w5")
		},
		function(){
			show_debug_message("w6")
		},
		function(){
			show_debug_message("w7")
		},
		function(){
			show_debug_message("w8")
		},
		"NA",
		"NA",
		"NA",
		"NA",
		"NA",
		
	),
	single_762x39_exp_effect : new create_effect(
		function(){
			load_bullet(global.item_list.single_762x39_exp, "7.62x39", false)
		},
		function(){
			show_debug_message("right click")
		},
		function(){
			show_debug_message("middle mouse click")
		},
		"Load Mag",
		"N/A",
		"N/A",
		
		function(){
			show_debug_message("w4")
		},
		function(){
			show_debug_message("w5")
		},
		function(){
			show_debug_message("w6")
		},
		function(){
			show_debug_message("w7")
		},
		function(){
			show_debug_message("w8")
		},
		"NA",
		"NA",
		"NA",
		"NA",
		"NA",
		
	),
	single_762x39_ap_effect : new create_effect(
		function(){
			load_bullet(global.item_list.single_762x39_ap, "7.62x39", false)
		},
		function(){
			show_debug_message("right click")
		},
		function(){
			show_debug_message("middle mouse click")
		},
		"Load Mag",
		"N/A",
		"N/A",
		
		function(){
			show_debug_message("w4")
		},
		function(){
			show_debug_message("w5")
		},
		function(){
			show_debug_message("w6")
		},
		function(){
			show_debug_message("w7")
		},
		function(){
			show_debug_message("w8")
		},
		"NA",
		"NA",
		"NA",
		"NA",
		"NA",
		
	),
	single_762x39_du_effect : new create_effect(
		function(){
			load_bullet(global.item_list.single_762x39_du, "7.62x39", false)
		},
		function(){
			show_debug_message("right click")
		},
		function(){
			show_debug_message("middle mouse click")
		},
		"Load Mag",
		"N/A",
		"N/A",
		
		function(){
			show_debug_message("w4")
		},
		function(){
			show_debug_message("w5")
		},
		function(){
			show_debug_message("w6")
		},
		function(){
			show_debug_message("w7")
		},
		function(){
			show_debug_message("w8")
		},
		"NA",
		"NA",
		"NA",
		"NA",
		"NA",
		
	),
	single_762x39_fmj_effect : new create_effect(
		function(){
			load_bullet(global.item_list.single_762x39_fmj, "7.62x39", false)
		},
		function(){
			show_debug_message("right click")
		},
		function(){
			show_debug_message("middle mouse click")
		},
		"Load Mag",
		"N/A",
		"N/A",
		
		function(){
			show_debug_message("w4")
		},
		function(){
			show_debug_message("w5")
		},
		function(){
			show_debug_message("w6")
		},
		function(){
			show_debug_message("w7")
		},
		function(){
			show_debug_message("w8")
		},
		"NA",
		"NA",
		"NA",
		"NA",
		"NA",
		
	),
	enclosed_hammer_effect : new create_effect(
		function(){
			if global.right_hand_item != noone && global.right_hand_item.specs.item_type == "Firearm"
			{
				swap_component(global.item_list.enclosed_hammer, 2, 6, global.right_hand_item.weapon.parts.hammer, noone)
			}
			if global.left_hand_item != noone && global.left_hand_item.specs.item_type == "Firearm"
			{
				swap_component(global.item_list.enclosed_hammer, 2, 6, noone, global.left_hand_item.weapon.parts.hammer)
			}
		},
		function(){
			show_debug_message("right click")
		},
		function(){
			show_debug_message("middle mouse click")
		},
		"Replace",
		"N/A",
		"N/A",
		
		function(){
			show_debug_message("w4")
		},
		function(){
			show_debug_message("w5")
		},
		function(){
			show_debug_message("w6")
		},
		function(){
			show_debug_message("w7")
		},
		function(){
			show_debug_message("w8")
		},
		"NA",
		"NA",
		"NA",
		"NA",
		"NA",
		
	),
	medium_barrel_effect : new create_effect(
		function(){
			if global.right_hand_item != noone && global.right_hand_item.specs.item_type == "Firearm"
			{
				swap_component(global.item_list.medium_barrel, 3, 7, global.right_hand_item.weapon.parts.barrel, noone)
			}
			if global.left_hand_item != noone && global.left_hand_item.specs.item_type == "Firearm"
			{
				swap_component(global.item_list.medium_barrel, 3, 7, noone, global.left_hand_item.weapon.parts.barrel)
			}
		},
		function(){
			show_debug_message("right click")
		},
		function(){
			show_debug_message("middle mouse click")
		},
		"Replace",
		"N/A",
		"N/A",
		
		function(){
			show_debug_message("w4")
		},
		function(){
			show_debug_message("w5")
		},
		function(){
			show_debug_message("w6")
		},
		function(){
			show_debug_message("w7")
		},
		function(){
			show_debug_message("w8")
		},
		"NA",
		"NA",
		"NA",
		"NA",
		"NA",
		
	),
	rotating_bolt_effect : new create_effect(
		function(){
			if global.right_hand_item != noone && global.right_hand_item.specs.item_type == "Firearm"
			{
				swap_component(global.item_list.rotating_bolt, 14, 20, global.right_hand_item.weapon.parts.bolt_slide, noone)
			}
			if global.left_hand_item != noone && global.left_hand_item.specs.item_type == "Firearm"
			{
				swap_component(global.item_list.rotating_bolt, 14, 20, noone, global.left_hand_item.weapon.parts.bolt_slide)
			}
		},
		function(){
			show_debug_message("right click")
		},
		function(){
			show_debug_message("middle mouse click")
		},
		"Replace",
		"N/A",
		"N/A",
		
		function(){
			show_debug_message("w4")
		},
		function(){
			show_debug_message("w5")
		},
		function(){
			show_debug_message("w6")
		},
		function(){
			show_debug_message("w7")
		},
		function(){
			show_debug_message("w8")
		},
		"NA",
		"NA",
		"NA",
		"NA",
		"NA",
		
	),
	turn_bolt_effect : new create_effect(
		function(){
			if global.right_hand_item != noone && global.right_hand_item.specs.item_type == "Firearm"
			{
				swap_component(global.item_list.turn_bolt, 14, 20, global.right_hand_item.weapon.parts.bolt_slide, noone)
			}
			if global.left_hand_item != noone && global.left_hand_item.specs.item_type == "Firearm"
			{
				swap_component(global.item_list.turn_bolt, 14, 20, noone, global.left_hand_item.weapon.parts.bolt_slide)
			}
		},
		function(){
			show_debug_message("right click")
		},
		function(){
			show_debug_message("middle mouse click")
		},
		"Replace",
		"N/A",
		"N/A",
		
		function(){
			show_debug_message("w4")
		},
		function(){
			show_debug_message("w5")
		},
		function(){
			show_debug_message("w6")
		},
		function(){
			show_debug_message("w7")
		},
		function(){
			show_debug_message("w8")
		},
		"NA",
		"NA",
		"NA",
		"NA",
		"NA",
		
	),
	tilt_bolt_effect : new create_effect(
		function(){
			if global.right_hand_item != noone && global.right_hand_item.specs.item_type == "Firearm"
			{
				swap_component(global.item_list.tilt_bolt, 14, 20, global.right_hand_item.weapon.parts.bolt_slide, noone)
			}
			if global.left_hand_item != noone && global.left_hand_item.specs.item_type == "Firearm"
			{
				swap_component(global.item_list.tilt_bolt, 14, 20, noone, global.left_hand_item.weapon.parts.bolt_slide)
			}
		},
		function(){
			show_debug_message("right click")
		},
		function(){
			show_debug_message("middle mouse click")
		},
		"Replace",
		"N/A",
		"N/A",
		
		function(){
			show_debug_message("w4")
		},
		function(){
			show_debug_message("w5")
		},
		function(){
			show_debug_message("w6")
		},
		function(){
			show_debug_message("w7")
		},
		function(){
			show_debug_message("w8")
		},
		"NA",
		"NA",
		"NA",
		"NA",
		"NA",
		
	),
	spring_pin_effect : new create_effect(
		function(){
			if global.right_hand_item != noone && global.right_hand_item.specs.item_type == "Firearm"
			{
				swap_component(global.item_list.spring_pin, 12, 18, global.right_hand_item.weapon.parts.firing_pin, noone)
			}
			if global.left_hand_item != noone && global.left_hand_item.specs.item_type == "Firearm"
			{
				swap_component(global.item_list.spring_pin, 12, 18, noone, global.left_hand_item.weapon.parts.firing_pin)
			}
		},
		function(){
			show_debug_message("right click")
		},
		function(){
			show_debug_message("middle mouse click")
		},
		"Replace",
		"N/A",
		"N/A",
		
		function(){
			show_debug_message("w4")
		},
		function(){
			show_debug_message("w5")
		},
		function(){
			show_debug_message("w6")
		},
		function(){
			show_debug_message("w7")
		},
		function(){
			show_debug_message("w8")
		},
		"NA",
		"NA",
		"NA",
		"NA",
		"NA",
		
	),
	vz58_mag_effect : new create_effect(
		function(){
			mag_insert(global.item_list.vz58, global.item_list.vz58_mag)
		},
		function(){
			unload_bullet(global.item_list.vz58_mag, global.item_list.single_762x39)
		},
		function(){
			show_debug_message("middle mouse click")
		},
		"Put in Gun",
		"Unload",
		"N/A",
		
		function(){
			show_debug_message("w4")
		},
		function(){
			show_debug_message("w5")
		},
		function(){
			show_debug_message("w6")
		},
		function(){
			show_debug_message("w7")
		},
		function(){
			show_debug_message("w8")
		},
		"NA",
		"NA",
		"NA",
		"NA",
		"NA",
		
	),
	vz58_ext_mag_effect : new create_effect(
		function(){
			mag_insert(global.item_list.vz58, global.item_list.vz58_ext_mag)
		},
		function(){
			unload_bullet(global.item_list.vz58_ext_mag, global.item_list.single_762x39)
		},
		function(){
			show_debug_message("middle mouse click")
		},
		"Put in Gun",
		"Unload",
		"N/A",
		
		function(){
			show_debug_message("w4")
		},
		function(){
			show_debug_message("w5")
		},
		function(){
			show_debug_message("w6")
		},
		function(){
			show_debug_message("w7")
		},
		function(){
			show_debug_message("w8")
		},
		"NA",
		"NA",
		"NA",
		"NA",
		"NA",
		
	),
	single_762x39_shell_effect : new create_effect(
		function(){
			
		},
		function(){
			
		},
		function(){
			show_debug_message("middle mouse click")
		},
		"N/A",
		"N/A",
		"N/A",
		
		function(){
			show_debug_message("w4")
		},
		function(){
			show_debug_message("w5")
		},
		function(){
			show_debug_message("w6")
		},
		function(){
			show_debug_message("w7")
		},
		function(){
			show_debug_message("w8")
		},
		"NA",
		"NA",
		"NA",
		"NA",
		"NA",
		
	),
	vz58_effect : new create_effect(
		function(){
			shoot(global.item_list.vz58, global.item_list.single_762x39, global.item_list.single_762x39_shell, 164, false)
		},
		function(){
			chamber(global.item_list.vz58, global.item_list.single_762x39_shell)
		},
		function(){
			mag_release(global.item_list.vz58, global.item_list.vz58_mag)
		},
		"Shoot",
		"Chamber",
		"Unload Mag",
		
		function(){
			remove_optic()
		},
		function(){
			remove_laser()
		},
		function(){
			toggle_underbarrel()
		},
		function(){
			remove_suppressor()
		},
		function(){
			show_debug_message("w8")
		},
		"Remove Optic",
		"Remove Lower",
		"Toggle Lower",
		"Remove Supp.",
		"NA",
		
	),
	scope_2x_effect : new create_effect(
		function(){
			equip_optic(global.item_list.scope_2x)
		},
		function(){
			
		},
		function(){
			
		},
		"Put Scope On",
		"",
		"",
		
		function(){
			show_debug_message("w4")
		},
		function(){
			show_debug_message("w5")
		},
		function(){
			show_debug_message("w6")
		},
		function(){
			show_debug_message("w7")
		},
		function(){
			show_debug_message("w8")
		},
		"NA",
		"NA",
		"NA",
		"NA",
		"NA",
		
	),
	zenith_optic_effect : new create_effect(
		function(){
			equip_optic(global.item_list.zenith_optic)
		},
		function(){
			
		},
		function(){
			
		},
		"Put Scope On",
		"",
		"",
		
		function(){
			show_debug_message("w4")
		},
		function(){
			show_debug_message("w5")
		},
		function(){
			show_debug_message("w6")
		},
		function(){
			show_debug_message("w7")
		},
		function(){
			show_debug_message("w8")
		},
		"NA",
		"NA",
		"NA",
		"NA",
		"NA",
		
	),
	goliath_optic_effect : new create_effect(
		function(){
			equip_optic(global.item_list.goliath_optic)
		},
		function(){
			
		},
		function(){
			
		},
		"Put Scope On",
		"",
		"",
		
		function(){
			show_debug_message("w4")
		},
		function(){
			show_debug_message("w5")
		},
		function(){
			show_debug_message("w6")
		},
		function(){
			show_debug_message("w7")
		},
		function(){
			show_debug_message("w8")
		},
		"NA",
		"NA",
		"NA",
		"NA",
		"NA",
		
	),
	laser_effect : new create_effect(
		function(){
			equip_laser(global.item_list.laser)
		},
		function(){
			
		},
		function(){
			
		},
		"Put Scope On",
		"",
		"",
		
		function(){
			show_debug_message("w4")
		},
		function(){
			show_debug_message("w5")
		},
		function(){
			show_debug_message("w6")
		},
		function(){
			show_debug_message("w7")
		},
		function(){
			show_debug_message("w8")
		},
		"NA",
		"NA",
		"NA",
		"NA",
		"NA",
		
	),
	xmini_effect : new create_effect(
		function(){
			equip_suppressor(global.item_list.xmini_suppressor)
		},
		function(){
			
		},
		function(){
			
		},
		"Put Suppressor On",
		"",
		"",
		
		function(){
			show_debug_message("w4")
		},
		function(){
			show_debug_message("w5")
		},
		function(){
			show_debug_message("w6")
		},
		function(){
			show_debug_message("w7")
		},
		function(){
			show_debug_message("w8")
		},
		"NA",
		"NA",
		"NA",
		"NA",
		"NA",
		
	),
	zrapid_effect : new create_effect(
		function(){
			equip_suppressor(global.item_list.zrapid_suppressor)
		},
		function(){
			
		},
		function(){
			
		},
		"Put Suppressor On",
		"",
		"",
		
		function(){
			show_debug_message("w4")
		},
		function(){
			show_debug_message("w5")
		},
		function(){
			show_debug_message("w6")
		},
		function(){
			show_debug_message("w7")
		},
		function(){
			show_debug_message("w8")
		},
		"NA",
		"NA",
		"NA",
		"NA",
		"NA",
		
	),
	yheath_effect : new create_effect(
		function(){
			equip_suppressor(global.item_list.yheath_suppressor)
		},
		function(){
			
		},
		function(){
			
		},
		"Put Suppressor On",
		"",
		"",
		
		function(){
			show_debug_message("w4")
		},
		function(){
			show_debug_message("w5")
		},
		function(){
			show_debug_message("w6")
		},
		function(){
			show_debug_message("w7")
		},
		function(){
			show_debug_message("w8")
		},
		"NA",
		"NA",
		"NA",
		"NA",
		"NA",
		
	),
	frag_grenade_effect : new create_effect(
		function(){
			if using_hand == 0 && global.right_hand_item == noone && left_modifiers[35] == true
			{
				left_modifiers[35] = false
				global.right_hand_item = global.item_list.pin
				right_modifiers = array_create(modifier_amount, 0)
				audio_play_sound(snd_grenade_pin, 1, 0)
				selected_ammo[1] = 0
				selected_array[1] = array_create(0, 0)
				selected_chamber[1] = 0
				selected_mod[1] = array_create(0, 0)
				global.right_hand_amount += 1
			}
			if using_hand == 1 && global.left_hand_item == noone && right_modifiers[35] == true
			{
				right_modifiers[35] = false
				global.left_hand_item = global.item_list.pin
				left_modifiers = array_create(modifier_amount, 0)
				audio_play_sound(snd_grenade_pin, 1, 0)
				selected_ammo[0] = 0
				selected_array[0] = array_create(0, 0)
				selected_chamber[0] = 0
				selected_mod[0] = array_create(0, 0)
				global.left_hand_amount += 1
			}
		},
		function(){
			if using_hand == 0 && left_modifiers[35] == true
			{
				left_modifiers[35] = false
				instance_create_depth(obj_player.x, obj_player.y, -9, obj_pin)
				audio_play_sound(snd_grenade_pin, 1, 0)
				audio_play_sound(snd_shell_drop, 1, 0)
			}
			if using_hand == 1 && right_modifiers[35] == true
			{
				right_modifiers[35] = false
				instance_create_depth(obj_player.x, obj_player.y, -9, obj_pin)
				audio_play_sound(snd_grenade_pin, 1, 0)
				audio_play_sound(snd_shell_drop, 1, 0)
			}
		},
		function(){
			
		},
		"Pull Pin (w/ empty hand)",
		"Pull Pin (w/ teeth)",
		"",
		
		function(){
			show_debug_message("w4")
		},
		function(){
			show_debug_message("w5")
		},
		function(){
			show_debug_message("w6")
		},
		function(){
			show_debug_message("w7")
		},
		function(){
			show_debug_message("w8")
		},
		"NA",
		"NA",
		"NA",
		"NA",
		"NA",
		
	),
	inc_grenade_effect : new create_effect(
		function(){
			if using_hand == 0 && global.right_hand_item == noone && left_modifiers[35] == true
			{
				left_modifiers[35] = false
				global.right_hand_item = global.item_list.pin
				right_modifiers = array_create(modifier_amount, 0)
				audio_play_sound(snd_grenade_pin, 1, 0)
				selected_ammo[1] = 0
				selected_array[1] = array_create(0, 0)
				selected_chamber[1] = 0
				selected_mod[1] = array_create(0, 0)
				global.right_hand_amount += 1
			}
			if using_hand == 1 && global.left_hand_item == noone && right_modifiers[35] == true
			{
				right_modifiers[35] = false
				global.left_hand_item = global.item_list.pin
				left_modifiers = array_create(modifier_amount, 0)
				audio_play_sound(snd_grenade_pin, 1, 0)
				selected_ammo[0] = 0
				selected_array[0] = array_create(0, 0)
				selected_chamber[0] = 0
				selected_mod[0] = array_create(0, 0)
				global.left_hand_amount += 1
			}
		},
		function(){
			if using_hand == 0 && left_modifiers[35] == true
			{
				left_modifiers[35] = false
				instance_create_depth(obj_player.x, obj_player.y, -9, obj_pin)
				audio_play_sound(snd_grenade_pin, 1, 0)
				audio_play_sound(snd_shell_drop, 1, 0)
			}
			if using_hand == 1 && right_modifiers[35] == true
			{
				right_modifiers[35] = false
				instance_create_depth(obj_player.x, obj_player.y, -9, obj_pin)
				audio_play_sound(snd_grenade_pin, 1, 0)
				audio_play_sound(snd_shell_drop, 1, 0)
			}
		},
		function(){
			
		},
		"Pull Pin (w/ empty hand)",
		"Pull Pin (w/ teeth)",
		"",
		
		function(){
			show_debug_message("w4")
		},
		function(){
			show_debug_message("w5")
		},
		function(){
			show_debug_message("w6")
		},
		function(){
			show_debug_message("w7")
		},
		function(){
			show_debug_message("w8")
		},
		"NA",
		"NA",
		"NA",
		"NA",
		"NA",
		
	),
	pin_effect : new create_effect(
		function(){
			if using_hand == 0 && global.right_hand_item.specs.item_type == "Grenade" && right_modifiers[35] == false
			{
				right_modifiers[35] = true
				global.left_hand_item = noone
				audio_play_sound(snd_grenade_pin, 1, 0)
				global.left_hand_amount -= 1
				left_modifiers = array_create(modifier_amount, 0)
			}
			if using_hand == 1 && global.left_hand_item.specs.item_type == "Grenade" && left_modifiers[35] == false
			{
				left_modifiers[35] = true
				global.right_hand_item = noone
				audio_play_sound(snd_grenade_pin, 1, 0)
				global.right_hand_amount -= 1
				right_modifiers = array_create(modifier_amount, 0)
			}
		},
		function(){
		},
		function(){
			
		},
		"Disarm Grenade",
		"",
		"",
		
		function(){
			show_debug_message("w4")
		},
		function(){
			show_debug_message("w5")
		},
		function(){
			show_debug_message("w6")
		},
		function(){
			show_debug_message("w7")
		},
		function(){
			show_debug_message("w8")
		},
		"NA",
		"NA",
		"NA",
		"NA",
		"NA",
		
	),
	box_12gauge_effect : new create_effect(
	function(){
			unload_bullet(global.item_list.box_12gauge, global.item_list.single_12gauge)
		},
		function(){
			//load_bullet_from_box(global.item_list.box_12gauge, global.item_list.single_12gauge, "12G", false)
		},
		function(){
			show_debug_message("mag middle mouse click")
		},
		"Unload",
		"NA",
		"NA",
		
		
		function(){
			show_debug_message("w4")
		},
		function(){
			show_debug_message("w5")
		},
		function(){
			show_debug_message("w6")
		},
		function(){
			show_debug_message("w7")
		},
		function(){
			show_debug_message("w8")
		},
		"NA",
		"NA",
		"NA",
		"NA",
		"NA",
	),
	box_44mag_effect : new create_effect(
	function(){
			unload_bullet(global.item_list.box_44magnum, global.item_list.magnum44)
		},
		function(){
			
		},
		function(){
			show_debug_message("mag middle mouse click")
		},
		"Unload",
		"NA",
		"NA",
		
		
		function(){
			show_debug_message("w4")
		},
		function(){
			show_debug_message("w5")
		},
		function(){
			show_debug_message("w6")
		},
		function(){
			show_debug_message("w7")
		},
		function(){
			show_debug_message("w8")
		},
		"NA",
		"NA",
		"NA",
		"NA",
		"NA",
	),
	box_762x25_effect : new create_effect(
	function(){
			unload_bullet(global.item_list.box_762x25, global.item_list.single_762x25)
		},
		function(){
			
		},
		function(){
			show_debug_message("mag middle mouse click")
		},
		"Unload",
		"NA",
		"NA",
		
		
		function(){
			show_debug_message("w4")
		},
		function(){
			show_debug_message("w5")
		},
		function(){
			show_debug_message("w6")
		},
		function(){
			show_debug_message("w7")
		},
		function(){
			show_debug_message("w8")
		},
		"NA",
		"NA",
		"NA",
		"NA",
		"NA",
	),
	box_762x39_effect : new create_effect(
	function(){
			unload_bullet(global.item_list.box_762x39, global.item_list.single_762x39)
		},
		function(){
			
		},
		function(){
			show_debug_message("mag middle mouse click")
		},
		"Unload",
		"NA",
		"NA",
		
		
		function(){
			show_debug_message("w4")
		},
		function(){
			show_debug_message("w5")
		},
		function(){
			show_debug_message("w6")
		},
		function(){
			show_debug_message("w7")
		},
		function(){
			show_debug_message("w8")
		},
		"NA",
		"NA",
		"NA",
		"NA",
		"NA",
	),
	box_762x45_effect : new create_effect(
	function(){
			unload_bullet(global.item_list.box_762x45, global.item_list.single_762x45)
		},
		function(){
			
		},
		function(){
			show_debug_message("mag middle mouse click")
		},
		"Unload",
		"NA",
		"NA",
		
		
		function(){
			show_debug_message("w4")
		},
		function(){
			show_debug_message("w5")
		},
		function(){
			show_debug_message("w6")
		},
		function(){
			show_debug_message("w7")
		},
		function(){
			show_debug_message("w8")
		},
		"NA",
		"NA",
		"NA",
		"NA",
		"NA",
	),
	box_ACP32_effect : new create_effect(
	function(){
			unload_bullet(global.item_list.box_ACP32, global.item_list.ACP32)
		},
		function(){
			
		},
		function(){
			show_debug_message("mag middle mouse click")
		},
		"Unload",
		"NA",
		"NA",
		
		
		function(){
			show_debug_message("w4")
		},
		function(){
			show_debug_message("w5")
		},
		function(){
			show_debug_message("w6")
		},
		function(){
			show_debug_message("w7")
		},
		function(){
			show_debug_message("w8")
		},
		"NA",
		"NA",
		"NA",
		"NA",
		"NA",
	),
	box_ACP380_effect : new create_effect(
	function(){
			unload_bullet(global.item_list.box_ACP380, global.item_list.ACP380_single)
		},
		function(){
			
		},
		function(){
			show_debug_message("mag middle mouse click")
		},
		"Unload",
		"NA",
		"NA",
		
		
		function(){
			show_debug_message("w4")
		},
		function(){
			show_debug_message("w5")
		},
		function(){
			show_debug_message("w6")
		},
		function(){
			show_debug_message("w7")
		},
		function(){
			show_debug_message("w8")
		},
		"NA",
		"NA",
		"NA",
		"NA",
		"NA",
	),
	dipstick_effect : new create_effect(
	function(){
			
		},
		function(){
			
		},
		function(){
			show_debug_message("mag middle mouse click")
		},
		"NA",
		"NA",
		"NA",
		
		
		function(){
			show_debug_message("w4")
		},
		function(){
			show_debug_message("w5")
		},
		function(){
			show_debug_message("w6")
		},
		function(){
			show_debug_message("w7")
		},
		function(){
			show_debug_message("w8")
		},
		"NA",
		"NA",
		"NA",
		"NA",
		"NA",
	),
}

global.min_list =
{
	apple_min : new create_min(
		7,
		25,
		10,
		195,
		0.2,
		0.05,
		0.05,
	),
	orange_min : new create_min(
		43,
		15,
		11,
		235,
		0.1,
		0.1,
		0.05,
	),
	
}

global.vit_list =
{
	apple_vit : new create_vit(
		6,
		0.03,
		0.02,
		0.1,
		0.18,
		3.5,
		2.2,
		9,
		0,
	),
	orange_vit : new create_vit(
		11,
		0.09,
		0.04,
		0.6,
		0.18,
		29,
		0,
		80,
		0,
	),
}

global.food_list =
{
	apple_food : new create_food(
		95,
		0.5,
		0,
		25,
		19,
		0.5,
		4,
		2,
	),
	orange_food : new create_food(
		62,
		0.2,
		0,
		15,
		12,
		1.2,
		3.1,
		1,
	),
}

global.parts_list =
{
	cz24_parts : new create_parts(
		obj_single_action_trigger,
		obj_single_action_hammer,
		obj_short_barrel,
		obj_15lb_spring,
		noone,
		noone,
		noone,
		
	),
	vz58_parts : new create_parts(
		obj_single_action_trigger,
		obj_enclosed_hammer,
		obj_medium_barrel,
		obj_15lb_spring,
		obj_spring_pin,
		obj_claw_extractor,
		obj_rotating_bolt,
		
	),
	vz54_parts : new create_parts(
		obj_single_action_trigger,
		noone,
		obj_long_barrel,
		noone,
		obj_spring_pin,
		obj_claw_extractor,
		obj_turn_bolt,
		
	),
	zbrojovka_304_parts : new create_parts(
		obj_single_action_trigger,
		noone,
		obj_long_barrel,
		noone,
		obj_spring_pin,
		obj_claw_extractor,
		noone,
		
	),
	sa23_parts : new create_parts(
		obj_single_action_trigger,
		noone,
		obj_short_barrel,
		obj_25lb_spring,
		obj_spring_pin,
		obj_claw_extractor,
		obj_tilt_bolt,
		
	),
	skorpion_parts : new create_parts(
		obj_single_action_trigger,
		noone,
		obj_short_barrel,
		obj_15lb_spring,
		noone,
		obj_claw_extractor,
		obj_tilt_bolt,
		
	),
	sw_model29_parts : new create_parts(
		obj_double_action_trigger,
		obj_single_action_hammer,
		obj_short_barrel,
		noone,
		noone,
		noone,
		noone,
		
	),
	
	dis_pistol_parts : new create_parts(
		obj_super_conductor_circuit,
		obj_overcharge_modulator,
		obj_electromagnetic_lenses,
		noone,
		noone,
		noone,
		noone,
		
	),
}

burst_delay = 0

global.weapon_list =
{
	pipe_weapon : new create_weapon(
		10,
		noone,
		noone,
		noone,
		false,
		false,
		false,
		0,
		noone,
		noone,
		noone,
		false,
		false,
		false,
		0,
		false,
	),
	pistole_vz24_weapon : new create_weapon(
		10,
		8,
		noone, // Each press = 1 shot
		global.parts_list.cz24_parts,
		false,
		false,
		false,
		5,
		snd_pistol_chamber,
		snd_pistol_shoot,
		snd_pistol_shoot,
		true,
		false,
		false,
		0,
		false,
	),
	gold_pistole_vz24_weapon : new create_weapon(
		10,
		8,
		1, 
		global.parts_list.cz24_parts,
		false,
		false,
		false,
		1,
		snd_pistol_chamber,
		snd_pistol_shoot,
		snd_pistol_shoot,
		true,
		false,
		true,
		0,
		false,
	),
	vz58_weapon : new create_weapon(
		10,
		30,
		5, 
		global.parts_list.vz58_parts,
		true,
		false,
		true,
		10,
		snd_rifle_chamber,
		snd_rifle_single_shot,
		snd_rifle_single_shot2,
		true,
		true,
		true,
		3,
		false,
	),
	
	vz54_weapon : new create_weapon(
		10,
		30,
		10, 
		global.parts_list.vz54_parts,
		false,
		true,
		false,
		5,
		snd_bolt_open_close,
		snd_bolt_action_shoot,
		snd_bolt_action_shoot,
		true,
		false,
		false,
		0,
		false,
	),
	zbrojovka_304_weapon : new create_weapon(
		10,
		1,
		noone, 
		global.parts_list.zbrojovka_304_parts,
		true,
		false,
		false,
		5,
		snd_snap_open_shotgun,
		snd_shotgun_shot,
		snd_shotgun_shot,
		true,
		false,
		false,
		0,
		false,
	),
	sa23_weapon : new create_weapon(
		10,
		32,
		7, 
		global.parts_list.sa23_parts,
		true,
		false,
		false,
		5,
		snd_pistol_chamber,
		snd_pistol_shoot,
		snd_pistol_shoot,
		true,
		false,
		true,
		0,
		false,
	),
	skorpion_weapon : new create_weapon(
		10,
		20,
		3, 
		global.parts_list.skorpion_parts,
		true,
		false,
		false,
		8,
		snd_pistol_chamber,
		snd_pistol_shoot,
		snd_pistol_shoot,
		true,
		false,
		true,
		0,
		false,
	),
	sw_model29_weapon : new create_weapon(
		10,
		6,
		noone, 
		global.parts_list.sw_model29_parts,
		true,
		false,
		false,
		8,
		snd_revolver_open,
		snd_revolver_shoot,
		snd_revolver_shoot,
		true,
		false,
		false,
		0,
		false,
	),
	dis_pistol_weapon : new create_weapon(
		10,
		6,
		1, 
		global.parts_list.dis_pistol_parts,
		true,
		false,
		true,
		4,
		snd_charge,
		snd_laser_shoot,
		snd_laser_shoot,
		true,
		false,
		false,
		5,
		false,
	),
}

global.armor_list =
{
	test_shirt_armor : new create_armor(
		5, 
		"Blunt",
		"Cloth",
		"Torso",
		2,
		noone,
		
	),
	test_pants_armor : new create_armor(
		5, 
		"Blunt",
		"Cloth",
		"Legs",
		117, //(NO BACK POCKETS)
		noone,
		
	),
	right_pant_armor : new create_armor(
		5, 
		"Blunt",
		"Cloth",
		"Right Leg",
		58.24,
		noone,
		
	),
	left_pant_armor : new create_armor(
		5, 
		"Blunt",
		"Cloth",
		"Left Leg",
		58.24,
		noone,
		
	),
	rolex_armor : new create_armor(
		0, 
		"None",
		"Scrap",
		"Either Wrist",
		0,
		noone,
		
	),
	left_glove_armor: new create_armor(
		5, 
		"Blunt",
		"Cloth",
		"Left Hand",
		0,
		noone,
		
	),
	right_glove_armor: new create_armor(
		5, 
		"Blunt",
		"Cloth",
		"Right Hand",
		0,
		noone,
		
	),
	gas_mask_armor: new create_armor(
		5, 
		"Blunt",
		"Scrap",
		"Face",
		0,
		spr_gas_mask_overlay1,
		
	),
	military_helmet_armor: new create_armor(
		5, 
		"Blunt",
		"Scrap",
		"Head",
		0,
		noone,
		
	),
	right_boot_armor: new create_armor(
		5, 
		"Blunt",
		"Leather",
		"Right Foot",
		5,
		noone,
		
	),
	left_boot_armor: new create_armor(
		5, 
		"Blunt",
		"Leather",
		"Left Foot",
		5,
		noone,
		
	),
	coat_armor: new create_armor(
		10, 
		"Blunt",
		"Plastic",
		"Vest",
		117,
		noone,
		
	),
	backpack_armor: new create_armor(
		10, 
		"Piercing",
		"Cloth",
		"Backpack",
		122500,
		noone,
		
	),
	strapped_stick_armor: new create_armor(
		0, 
		"None",
		"Wood",
		"Shoulder",
		0,
		noone,
		
	),
	vz54_armor: new create_armor(
		0, 
		"None",
		"Wood",
		"Shoulder",
		0,
		noone,
		
	),
	copper_band_armor: new create_armor(
		0, 
		"None",
		"Copper",
		"Either Wrist",
		0,
		noone,
		
	),
	small_belt_armor: new create_armor(
		0, 
		"None",
		"Leather",
		"Belt",
		4,
		noone,
		
	),
}

global.item_list = 
{
	apple : new create_item(
		"Apple",
		"This is an apple",
		spr_apple,
		obj_apple,
		global.specs_list.apple_specs,
		global.effect_list.apple_effect,
		0,
		63,
		global.food_list.apple_food,
		global.vit_list.apple_vit,
		global.min_list.apple_min,
		noone,
		noone,
		1.6,
		noone,
		100, // CUBIC CM
	),
	orange : new create_item(
		"Orange",
		"This is an orange",
		spr_orange,
		obj_orange,
		global.specs_list.orange_specs,
		global.effect_list.orange_effect,
		0, 
		63,
		global.food_list.orange_food,
		global.vit_list.orange_vit,
		global.min_list.orange_min,
		noone,
		noone,
		2,
		noone,
		100,
	),
	pipe : new create_item(
		"Bat",
		"This is a bat",
		spr_pipe,
		obj_pipe,
		global.specs_list.pipe_specs, 
		global.effect_list.pipe_effect,
		45,
		31,
		noone,
		noone,
		noone,
		global.weapon_list.pipe_weapon,
		noone,
		0.5,
		noone,
		4942.2,
	),
	watch : new create_item(
		"Rolex Watch",
		"This is a rolex watch",
		spr_watch,
		obj_watch,
		global.specs_list.rolex_specs,
		global.effect_list.watch_effect,
		0,
		32,
		noone,
		noone,
		noone,
		noone,
		noone,
		2,
		global.armor_list.rolex_armor,
		61.3,
	),
	test_key : new create_item(
		"Test Key",
		"This is a test key",
		spr_test_key,
		obj_test_key,
		global.specs_list.test_key_specs,
		global.effect_list.test_key_effect,
		0,
		32,
		noone,
		noone,
		noone,
		noone,
		noone,
		4,
		noone,
		6,
	),
	
	
	// AMMO -----------------------------------------------------------------------------------------------
	ACP380_single : new create_item(
		".380 ACP (HP)",
		"This is a Hollow Point .380 ACP (9x17mm) bullet used as ammunition for a variety of ranged weapons",
		spr_ACP380_single,
		obj_ACP380_single,
		global.specs_list.ACP380_single_specs,
		global.effect_list.ACP380_single_effect,
		0,
		32,
		noone,
		noone,
		noone,
		noone,
		noone,
		4,
		noone,
		0.9,
	),
	ACP380_exp : new create_item(
		".380 ACP (EXP)",
		"This is an explosive .380 ACP (9x17mm) bullet used as ammunition for a variety of ranged weapons",
		spr_ACP380_exp,
		obj_ACP380_exp,
		global.specs_list.ACP380_exp_specs,
		global.effect_list.ACP380_exp_effect,
		0,
		32,
		noone,
		noone,
		noone,
		noone,
		noone,
		4,
		noone,
		0.9,
	),
	ACP380_fmj : new create_item(
		".380 ACP (FMJ)",
		"This is a Full Metal Jacket .380 ACP (9x17mm) bullet used as ammunition for a variety of ranged weapons",
		spr_ACP380_fmj,
		obj_ACP380_fmj,
		global.specs_list.ACP380_fmj_specs,
		global.effect_list.ACP380_fmj_effect,
		0,
		32,
		noone,
		noone,
		noone,
		noone,
		noone,
		4,
		noone,
		0.9,
	),
	ACP380_du : new create_item(
		".380 ACP (DU)",
		"This is a Depleted Uranium .380 ACP (9x17mm) bullet used as ammunition for a variety of ranged weapons",
		spr_ACP380_du,
		obj_ACP380_du,
		global.specs_list.ACP380_du_specs,
		global.effect_list.ACP380_du_effect,
		0,
		32,
		noone,
		noone,
		noone,
		noone,
		noone,
		4,
		noone,
		0.9,
	),
	ACP380_ap : new create_item(
		".380 ACP (AP)",
		"This is an Armor Piercing .380 ACP (9x17mm) bullet used as ammunition for a variety of ranged weapons",
		spr_ACP380_ap,
		obj_ACP380_ap,
		global.specs_list.ACP380_ap_specs,
		global.effect_list.ACP380_ap_effect,
		0,
		32,
		noone,
		noone,
		noone,
		noone,
		noone,
		4,
		noone,
		0.9,
	),
	ACP32 : new create_item(
		".32 ACP (HP)",
		"This is a Hollow Point .32 ACP bullet used as ammunition for a variety of ranged weapons",
		spr_ACP32,
		obj_ACP32,
		global.specs_list.ACP32_specs,
		global.effect_list.ACP32_single_effect,
		0,
		32,
		noone,
		noone,
		noone,
		noone,
		noone,
		4,
		noone,
		0.9,
	),
	ACP32_ap : new create_item(
		".32 ACP (AP)",
		"This is an Armor Piercing .32 ACP bullet used as ammunition for a variety of ranged weapons",
		spr_ACP32_ap,
		obj_ACP32_ap,
		global.specs_list.ACP32_ap_specs,
		global.effect_list.ACP32_ap_effect,
		0,
		32,
		noone,
		noone,
		noone,
		noone,
		noone,
		4,
		noone,
		0.9,
	),
	ACP32_du : new create_item(
		".32 ACP (DU)",
		"This is a Depleted Uranium .32 ACP bullet used as ammunition for a variety of ranged weapons",
		spr_ACP32_du,
		obj_ACP32_du,
		global.specs_list.ACP32_du_specs,
		global.effect_list.ACP32_du_effect,
		0,
		32,
		noone,
		noone,
		noone,
		noone,
		noone,
		4,
		noone,
		0.9,
	),
	ACP32_fmj : new create_item(
		".32 ACP (FMJ)",
		"This is a Full Metal Jacket .32 ACP bullet used as ammunition for a variety of ranged weapons",
		spr_ACP32_fmj,
		obj_ACP32_fmj,
		global.specs_list.ACP32_fmj_specs,
		global.effect_list.ACP32_fmj_effect,
		0,
		32,
		noone,
		noone,
		noone,
		noone,
		noone,
		4,
		noone,
		0.9,
	),
	ACP32_exp : new create_item(
		".32 ACP (EXP.)",
		"This is an explosive .32 ACP bullet used as ammunition for a variety of ranged weapons that explodes upon impact",
		spr_ACP32_exp,
		obj_ACP32_exp,
		global.specs_list.ACP32_exp_specs,
		global.effect_list.ACP32_exp_effect,
		0,
		32,
		noone,
		noone,
		noone,
		noone,
		noone,
		4,
		noone,
		0.9,
	),
	single_762x39 : new create_item(
		"7.62x39 Round (HP)",
		"This is a Hollow Point 7.62x39 bullet used as ammunition for a variety of high-power firearms",
		spr_762x39_single,
		obj_762x39_single,
		global.specs_list.single_762x39_specs,
		global.effect_list.single_762x39_effect,
		0,
		32,
		noone,
		noone,
		noone,
		noone,
		noone,
		2,
		noone,
		0.9,
	),
	single_762x39_ap : new create_item(
		"7.62x39 Round (AP)",
		"This is a Armor Piercing 7.62x39 bullet used as ammunition for a variety of high-power firearms",
		spr_762x39_ap,
		obj_762x39_ap,
		global.specs_list.single_762x39_ap_specs,
		global.effect_list.single_762x39_ap_effect,
		0,
		32,
		noone,
		noone,
		noone,
		noone,
		noone,
		2,
		noone,
		0.9,
	),
	single_762x39_du : new create_item(
		"7.62x39 Round (DU)",
		"This is a Depleted Uranium 7.62x39 bullet used as ammunition for a variety of high-power firearms",
		spr_762x39_du,
		obj_762x39_du,
		global.specs_list.single_762x39_du_specs,
		global.effect_list.single_762x39_du_effect,
		0,
		32,
		noone,
		noone,
		noone,
		noone,
		noone,
		2,
		noone,
		0.9,
	),
	single_762x39_fmj : new create_item(
		"7.62x39 Round (FMJ)",
		"This is a Full Metal Jacket 7.62x39 bullet used as ammunition for a variety of high-power firearms",
		spr_762x39_fmj,
		obj_762x39_fmj,
		global.specs_list.single_762x39_fmj_specs,
		global.effect_list.single_762x39_fmj_effect,
		0,
		32,
		noone,
		noone,
		noone,
		noone,
		noone,
		2,
		noone,
		0.9,
	),
	single_762x39_exp : new create_item(
		"7.62x39 Round (EXP.)",
		"This is an explosive 7.62x39 bullet used as ammunition for a variety of high-power firearms that explodes upon impact",
		spr_762x39_exp,
		obj_762x39_exp,
		global.specs_list.single_762x39_exp_specs,
		global.effect_list.single_762x39_exp_effect,
		0,
		32,
		noone,
		noone,
		noone,
		noone,
		noone,
		2,
		noone,
		0.9,
	),
	single_762x45 : new create_item(
		"7.62x45 Round (HP)",
		"This is a Hollow Point 7.62x45 bullet used as ammunition for a variety of high-power firearms",
		spr_762x45_single,
		obj_762x45_single,
		global.specs_list.single_762x45_specs,
		global.effect_list.single_762x45_effect,
		0,
		32,
		noone,
		noone,
		noone,
		noone,
		noone,
		2,
		noone,
		0.9,
	),
	single_762x45_ap : new create_item(
		"7.62x45 Round (AP)",
		"This is an Armor Piercing 7.62x45 bullet used as ammunition for a variety of high-power firearms",
		spr_762x45_ap,
		obj_762x45_ap,
		global.specs_list.single_762x45_ap_specs,
		global.effect_list.single_762x45_ap_effect,
		0,
		32,
		noone,
		noone,
		noone,
		noone,
		noone,
		2,
		noone,
		0.9,
	),
	single_762x45_du : new create_item(
		"7.62x45 Round (DU)",
		"This is a Depleted Uranium 7.62x45 bullet used as ammunition for a variety of high-power firearms",
		spr_762x45_du,
		obj_762x45_du,
		global.specs_list.single_762x45_du_specs,
		global.effect_list.single_762x45_du_effect,
		0,
		32,
		noone,
		noone,
		noone,
		noone,
		noone,
		2,
		noone,
		0.9,
	),
	single_762x45_fmj : new create_item(
		"7.62x45 Round (FMJ)",
		"This is a Full Metal Jacket 7.62x45 bullet used as ammunition for a variety of high-power firearms",
		spr_762x45_fmj,
		obj_762x45_fmj,
		global.specs_list.single_762x45_fmj_specs,
		global.effect_list.single_762x45_fmj_effect,
		0,
		32,
		noone,
		noone,
		noone,
		noone,
		noone,
		2,
		noone,
		0.9,
	),
	single_762x45_exp : new create_item(
		"7.62x45 Round (EXP.)",
		"This is an explosive 7.62x45 bullet used as ammunition for a variety of high-power firearms that explodes upon impact",
		spr_762x45_exp,
		obj_762x45_exp,
		global.specs_list.single_762x45_exp_specs,
		global.effect_list.single_762x45_exp_effect,
		0,
		32,
		noone,
		noone,
		noone,
		noone,
		noone,
		2,
		noone,
		0.9,
	),
	single_762x25 : new create_item(
		"7.62x25 Round (HP)",
		"This is a Hollow Point 7.62x25 bullet used as ammunition for a variety of high-power firearms",
		spr_762x25,
		obj_762x25,
		global.specs_list.single_762x25_specs,
		global.effect_list.single_762x25_effect,
		0,
		32,
		noone,
		noone,
		noone,
		noone,
		noone,
		4,
		noone,
		0.9,
	),
	single_762x25_ap : new create_item(
		"7.62x25 Round (AP)",
		"This is an Armor Piercing 7.62x25 bullet used as ammunition for a variety of high-power firearms",
		spr_762x25_ap,
		obj_762x25_ap,
		global.specs_list.single_762x25_ap_specs,
		global.effect_list.single_762x25_ap_effect,
		0,
		32,
		noone,
		noone,
		noone,
		noone,
		noone,
		4,
		noone,
		0.9,
	),
	single_762x25_du : new create_item(
		"7.62x25 Round (DU)",
		"This is a Depleted Uranium 7.62x25 bullet used as ammunition for a variety of high-power firearms",
		spr_762x25_du,
		obj_762x25_du,
		global.specs_list.single_762x25_du_specs,
		global.effect_list.single_762x25_du_effect,
		0,
		32,
		noone,
		noone,
		noone,
		noone,
		noone,
		4,
		noone,
		0.9,
	),
	single_762x25_fmj : new create_item(
		"7.62x25 Round (FMJ)",
		"This is a Full Metal Jacket 7.62x25 bullet used as ammunition for a variety of high-power firearms",
		spr_762x25_fmj,
		obj_762x25_fmj,
		global.specs_list.single_762x25_fmj_specs,
		global.effect_list.single_762x25_fmj_effect,
		0,
		32,
		noone,
		noone,
		noone,
		noone,
		noone,
		4,
		noone,
		0.9,
	),
	single_762x25_exp : new create_item(
		"7.62x25 Round (EXP.)",
		"This is an explosive 7.62x25 bullet used as ammunition for a variety of high-power firearms that explodes upon impact",
		spr_762x25_exp,
		obj_762x25_exp,
		global.specs_list.single_762x25_exp_specs,
		global.effect_list.single_762x25_exp_effect,
		0,
		32,
		noone,
		noone,
		noone,
		noone,
		noone,
		4,
		noone,
		0.9,
	),
	magnum44 : new create_item(
		"44 Magnum Round (HP)",
		"This is a Hollow Point 44 Magnum bullet used as ammunition for a variety of high-power handguns",
		spr_44magnum,
		obj_44magnum,
		global.specs_list.magnum44_specs,
		global.effect_list.magnum44_effect,
		0,
		32,
		noone,
		noone,
		noone,
		noone,
		noone,
		4,
		noone,
		0.9,
	),
	magnum44_exp : new create_item(
		"44 Magnum Round (EXP)",
		"This is an explosive 44 Magnum bullet used as ammunition for a variety of high-power handguns",
		spr_44magnum_exp,
		obj_44magnum_exp,
		global.specs_list.magnum44_exp_specs,
		global.effect_list.magnum44_exp_effect,
		0,
		32,
		noone,
		noone,
		noone,
		noone,
		noone,
		4,
		noone,
		0.9,
	),
	magnum44_ap : new create_item(
		"44 Magnum Round (AP)",
		"This is an Armor Piercing 44 Magnum bullet used as ammunition for a variety of high-power handguns",
		spr_44magnum_ap,
		obj_44magnum_ap,
		global.specs_list.magnum44_ap_specs,
		global.effect_list.magnum44_ap_effect,
		0,
		32,
		noone,
		noone,
		noone,
		noone,
		noone,
		4,
		noone,
		0.9,
	),
	magnum44_du : new create_item(
		"44 Magnum Round (DU)",
		"This is a Depleted Uranium 44 Magnum bullet used as ammunition for a variety of high-power handguns",
		spr_44magnum_du,
		obj_44magnum_du,
		global.specs_list.magnum44_du_specs,
		global.effect_list.magnum44_du_effect,
		0,
		32,
		noone,
		noone,
		noone,
		noone,
		noone,
		4,
		noone,
		0.9,
	),
	magnum44_fmj : new create_item(
		"44 Magnum Round (FMJ)",
		"This is a Hollow Point 44 Magnum bullet used as ammunition for a variety of high-power handguns",
		spr_44magnum_fmj,
		obj_44magnum_fmj,
		global.specs_list.magnum44_fmj_specs,
		global.effect_list.magnum44_fmj_effect,
		0,
		32,
		noone,
		noone,
		noone,
		noone,
		noone,
		4,
		noone,
		0.9,
	),
	single_12gauge : new create_item(
		"12 Gauge Round (BIRD)",
		"This is a 12 Gauge Birdshot Shotgun Shell used as ammunition for a variety of firearms",
		spr_12gauge,
		obj_12gauge,
		global.specs_list.single_12gauge_specs,
		global.effect_list.single_12gauge_effect,
		0,
		32,
		noone,
		noone,
		noone,
		noone,
		noone,
		2,
		noone,
		0.9,
	),
	single_12gauge_buck : new create_item(
		"12 Gauge Round (BUCK)",
		"This is a 12 Gauge Buckshot Shotgun Shell used as ammunition for a variety of firearms",
		spr_12gauge_buck,
		obj_12gauge_buck,
		global.specs_list.single_12gauge_buck_specs,
		global.effect_list.single_12gauge_buck_effect,
		0,
		32,
		noone,
		noone,
		noone,
		noone,
		noone,
		2,
		noone,
		0.9,
	),
	single_12gauge_slug : new create_item(
		"12 Gauge Round (SLUG)",
		"This is a 12 Gauge Slug Shotgun Shell used as ammunition for a variety of firearms",
		spr_12gauge_slug,
		obj_12gauge_slug,
		global.specs_list.single_12gauge_slug_specs,
		global.effect_list.single_12gauge_slug_effect,
		0,
		32,
		noone,
		noone,
		noone,
		noone,
		noone,
		2,
		noone,
		0.9,
	),
	single_12gauge_exp : new create_item(
		"12 Gauge Round (EXP.)",
		"This is an explosive 12 Gauge Shotgun Shell used as ammunition for a variety of firearms that explodes on impact",
		spr_12gauge_exp,
		obj_12gauge_exp,
		global.specs_list.single_12gauge_exp_specs,
		global.effect_list.single_12gauge_exp_effect,
		0,
		32,
		noone,
		noone,
		noone,
		noone,
		noone,
		2,
		noone,
		0.9,
	),
	
	// WEAPONS -------------------------------------------------------------------------------------------
	pistole_vz24 : new create_item(
		"Pistole vz. 24",
		"This is a Czech Military Pistole vz. 24",
		spr_pistole_vz24,
		obj_pistole_vz24,
		global.specs_list.pistole_vz24_specs,
		global.effect_list.pistole_vz24_effect,
		0,
		64,
		noone,
		noone,
		noone,
		global.weapon_list.pistole_vz24_weapon,
		".380 ACP",
		1,
		noone,
		533.7,
	),
	gold_pistole_vz24 : new create_item(
		"Gold Pistole vz. 24",
		"This is a Gold Czech Military Pistole vz. 24",
		spr_pistole_24_gold,
		obj_pistole_vz24_gold,
		global.specs_list.pistole_vz24_specs,
		global.effect_list.gold_pistole_vz24_effect,
		0,
		64,
		noone,
		noone,
		noone,
		global.weapon_list.gold_pistole_vz24_weapon,
		".380 ACP",
		1,
		noone,
		533.7,
	),
	vz58 : new create_item(
		"VZ 58 - Rifle",
		"This is a Vz58 Rifle",
		spr_vz58,
		obj_vz58,
		global.specs_list.vz58_specs,
		global.effect_list.vz58_effect,
		30,
		64,
		noone,
		noone,
		noone,
		global.weapon_list.vz58_weapon,
		"7.62x39",
		0.4,
		noone,
		533.7,
	),
	vz54 : new create_item(
		"VZ 54 - Bolt Action Rifle",
		"This is a Vz54 Bolt Action Rifle",
		spr_vz54,
		obj_vz54,
		global.specs_list.vz54_specs,
		global.effect_list.vz54_effect,
		30,
		64,
		noone,
		noone,
		noone,
		global.weapon_list.vz54_weapon,
		"7.62x45",
		0.3,
		global.armor_list.vz54_armor,
		533.7,
	),
	zbrojovka_304: new create_item(
		"Zbrojovka Brno ZH304",
		"This is a Zbrojovka Brno ZH304 Break Action Shotgun",
		spr_zbrojovka_c,
		obj_zbrojovka_c,
		global.specs_list.zbrojovka_304_specs,
		global.effect_list.zbrojovka_304_effect,
		45,
		64,
		noone,
		noone,
		noone,
		global.weapon_list.zbrojovka_304_weapon,
		"12G",
		0.4,
		noone, 
		533.7,
	),
	sa23: new create_item(
		"SA23 SMG",
		"This is an SA23 SMG",
		spr_sa23,
		obj_sa23,
		global.specs_list.sa23_specs,
		global.effect_list.sa23_effect,
		0,
		64,
		noone,
		noone,
		noone,
		global.weapon_list.sa23_weapon,
		"7.62x25",
		0.5,
		noone, 
		533.7,
	),
	skorpion: new create_item(
		"Skorpion SMG",
		"This is a Skorpion SMG",
		spr_skorpion,
		obj_skorpion,
		global.specs_list.skorpion_specs,
		global.effect_list.skorpion_effect,
		0,
		64,
		noone,
		noone,
		noone,
		global.weapon_list.skorpion_weapon,
		".32",
		0.8,
		noone, 
		533.7,
	),
	sw_model29: new create_item(
		"Smith & Wesson Model 29",
		"This is an Smith & Wesson Model 29 Revolver",
		spr_sw_model29,
		obj_sw_model29,
		global.specs_list.sw_model29_specs,
		global.effect_list.sw_model29_effect,
		0,
		64,
		noone,
		noone,
		noone,
		global.weapon_list.sw_model29_weapon,
		"44M",
		0.8,
		noone, 
		533.7,
	),
	disintegration_pistol: new create_item(
		"Disintegration Pistol",
		"This is a disintegration pistol",
		spr_disintegration_pistol,
		obj_disintegration_pistol,
		global.specs_list.dis_pistol_specs,
		global.effect_list.dis_pistol_effect,
		0,
		64,
		noone,
		noone,
		noone,
		global.weapon_list.dis_pistol_weapon,
		"Capacitor",
		1,
		noone, 
		533.7,
	),
	// MAGS-----------------------------------------------------------------
	pistole_vz24_mag : new create_item(
		"ACP .380 Mag.",
		"This magazine, primarily for the Pistole vz24, can hold standard ACP .380 Ammunition.",
		spr_pistole_vz24_mag,
		obj_pistole_vz24_mag,
		global.specs_list.pistole_vz24_mag_specs,
		global.effect_list.pistole_vz24_mag_effect,
		0,
		32,
		noone,
		noone,
		noone,
		noone,
		noone,
		3,
		noone,
		10,
	),
	vz58_mag : new create_item(
		"VZ 58 Mag.",
		"This magazine, primarily for the VZ58, can hold up to 30 standard 7.62x39 ammunition",
		spr_vz58_mag,
		obj_vz58_mag,
		global.specs_list.vz58_mag_specs,
		global.effect_list.vz58_mag_effect,
		0,
		32,
		noone,
		noone,
		noone,
		noone,
		noone,
		1,
		noone,
		10,
	),
	vz58_ext_mag : new create_item(
		"VZ 58 Extended Mag.",
		"This magazine, primarily for the VZ58, can hold up to 45 standard 7.62x39 ammunition",
		spr_vz58_ext_mag,
		obj_vz58_ext_mag,
		global.specs_list.vz58_mag_specs,
		global.effect_list.vz58_ext_mag_effect,
		0,
		32,
		noone,
		noone,
		noone,
		noone,
		noone,
		1,
		noone,
		10,
	),
	vz54_mag : new create_item(
		"VZ 54 Mag.",
		"This magazine, primarily for the VZ54, can hold standard 7.62x45 ammunition",
		spr_vz54_mag,
		obj_vz54_mag,
		global.specs_list.vz54_mag_specs,
		global.effect_list.vz54_mag_effect,
		0,
		32,
		noone,
		noone,
		noone,
		noone,
		noone,
		3,
		noone,
		10,
	),
	sa23_mag : new create_item(
		"SA23 Mag.",
		"This magazine, primarily for the SA23, can hold standard 7.62x25 ammunition",
		spr_sa23_mag,
		obj_sa23_mag,
		global.specs_list.sa23_mag_specs,
		global.effect_list.sa23_mag_effect,
		0,
		32,
		noone,
		noone,
		noone,
		noone,
		noone,
		3,
		noone,
		10,
	),
	skorpion_mag : new create_item(
		"Skorpion Mag.",
		"This magazine, primarily for the Skorpion, can hold standard .32 ACP ammunition",
		spr_skorpion_mag,
		obj_skorpion_mag,
		global.specs_list.skorpion_mag_specs,
		global.effect_list.skorpion_mag_effect,
		0,
		32,
		noone,
		noone,
		noone,
		noone,
		noone,
		1.5,
		noone,
		10,
	),
	capacitor : new create_item(
		"Capacitor",
		"This capacitor is primarily for the disintegration pistol",
		spr_capacitor,
		obj_capacitor,
		global.specs_list.capacitor_specs,
		global.effect_list.capacitor_effect,
		0,
		32,
		noone,
		noone,
		noone,
		noone,
		noone,
		1.5,
		noone,
		10,
	),
	// Shells
	ACP380_shell : new create_item(
		".380 ACP (9x17mm) Shell",
		"This is a .380 ACP (9x17mm) shell used as a casing for ammunition in various firearms.",
		spr_ACP380_shell,
		obj_ACP380_shell,
		global.specs_list.ACP380_shell_specs,
		global.effect_list.ACP380_shell_effect,
		0,
		32,
		noone,
		noone,
		noone,
		noone,
		noone,
		4,
		noone,
		0.9,
	),
	ACP32_shell : new create_item(
		".32 ACP Shell",
		"This is a .32 ACP shell used as a casing for ammunition in various firearms.",
		spr_ACP32_shell,
		obj_ACP32_shell,
		global.specs_list.ACP32_shell_specs,
		global.effect_list.ACP32_shell_effect,
		0,
		32,
		noone,
		noone,
		noone,
		noone,
		noone,
		4,
		noone,
		0.9,
	),
	single_762x39_shell : new create_item(
		"7.62x39 Shell",
		"This is a 7.62x39 shell used as a casing for ammunition in various firearms.",
		spr_762x39_shell,
		obj_762x39_shell,
		global.specs_list.single_762x39_shell_specs,
		global.effect_list.single_762x39_shell_effect,
		0,
		32,
		noone,
		noone,
		noone,
		noone,
		noone,
		2,
		noone,
		0.9,
	),
	single_762x45_shell : new create_item(
		"7.62x45 Shell",
		"This is a 7.62x45 shell used as a casing for ammunition in various firearms.",
		spr_762x45_shell,
		obj_762x45_shell,
		global.specs_list.single_762x45_shell_specs,
		global.effect_list.single_762x45_shell_effect,
		0,
		32,
		noone,
		noone,
		noone,
		noone,
		noone,
		2,
		noone,
		0.9,
	),
	single_762x25_shell : new create_item(
		"7.62x25 Shell",
		"This is a 7.62x25 shell used as a casing for ammunition in various firearms.",
		spr_762x25_shell,
		obj_762x25_shell,
		global.specs_list.single_762x25_shell_specs,
		global.effect_list.single_762x25_shell_effect,
		0,
		32,
		noone,
		noone,
		noone,
		noone,
		noone,
		4,
		noone,
		0.9,
	),
	single_12gauge_shell : new create_item(
		"12 Gauge Shell",
		"This is a 12 Gauge shell used as a casing for shotgun ammunition in various firearms.",
		spr_12gauge_shell,
		obj_12gauge_shell,
		global.specs_list.single_12gauge_shell_specs,
		global.effect_list.single_12gauge_shell_effect,
		0,
		32,
		noone,
		noone,
		noone,
		noone,
		noone,
		2,
		noone,
		0.9,
	),
	magnum44_shell : new create_item(
		"44 Magnum Shell",
		"This is a 44 Magnum shell used as a casing for ammunition in various firearms.",
		spr_44magnum_shell,
		obj_44magnum_shell,
		global.specs_list.magnum44_shell_specs,
		global.effect_list.magnum44_shell_effect,
		0,
		32,
		noone,
		noone,
		noone,
		noone,
		noone,
		4,
		noone,
		0.9,
	),
	// ARMOR
	test_shirt : new create_item(
		"Test Shirt",
		"This is a test shirt",
		spr_test_shirt,
		obj_test_shirt,
		global.specs_list.test_shirt_specs,
		global.effect_list.test_shirt_effect,
		0,
		64,
		noone,
		noone,
		noone,
		noone,
		noone,
		2,
		global.armor_list.test_shirt_armor,
		700,
	),
	test_pants : new create_item(
		"Test Pants",
		"This is a pair of test pants",
		spr_test_pants,
		obj_test_pants,
		global.specs_list.test_pants_specs,
		global.effect_list.test_pants_effect,
		0,
		64,
		noone,
		noone,
		noone,
		noone,
		noone,
		2,
		global.armor_list.test_pants_armor,
		2000,
	),
	left_pant : new create_item(
		"Left Pant",
		"This is a left pant",
		spr_left_pant,
		obj_left_pant,
		global.specs_list.left_pant_specs,
		global.effect_list.left_pant_effect,
		0,
		64,
		noone,
		noone,
		noone,
		noone,
		noone,
		2,
		global.armor_list.left_pant_armor,
		1000,
	),
	right_pant : new create_item(
		"Right Pant",
		"This is a right pant",
		spr_right_pant,
		obj_right_pant,
		global.specs_list.right_pant_specs,
		global.effect_list.right_pant_effect,
		0,
		64,
		noone,
		noone,
		noone,
		noone,
		noone,
		2,
		global.armor_list.right_pant_armor,
		1000,
	),
	left_glove : new create_item(
		"Left Glove",
		"This is a left glove",
		spr_left_glove,
		obj_left_glove,
		global.specs_list.left_glove_specs,
		global.effect_list.left_glove_effect,
		0,
		64,
		noone,
		noone,
		noone,
		noone,
		noone,
		2,
		global.armor_list.left_glove_armor,
		30,
	),
	right_glove : new create_item(
		"Right Glove",
		"This is a right glove",
		spr_right_glove,
		obj_right_glove,
		global.specs_list.right_glove_specs,
		global.effect_list.right_glove_effect,
		0,
		64,
		noone,
		noone,
		noone,
		noone,
		noone,
		2,
		global.armor_list.right_glove_armor,
		30,
	),
	gas_mask : new create_item(
		"Gas Mask",
		"This is a gas mask",
		spr_gas_mask,
		obj_gas_mask,
		global.specs_list.gas_mask_specs,
		global.effect_list.gas_mask_effect,
		0,
		64,
		noone,
		noone,
		noone,
		noone,
		noone,
		1.5,
		global.armor_list.gas_mask_armor,
		30,
	),
	military_helmet : new create_item(
		"WWII Helmet",
		"This is a WWII Helmet",
		spr_military_helmet,
		obj_military_helmet,
		global.specs_list.military_helmet_specs,
		global.effect_list.military_helmet_effect,
		0,
		64,
		noone,
		noone,
		noone,
		noone,
		noone,
		2,
		global.armor_list.military_helmet_armor,
		30,
	),
	right_boot : new create_item(
		"Right Boot",
		"This is a right boot",
		spr_right_boot,
		obj_right_boot,
		global.specs_list.right_boot_specs,
		global.effect_list.right_boot_effect,
		0,
		64,
		noone,
		noone,
		noone,
		noone,
		noone,
		2,
		global.armor_list.right_boot_armor,
		30,
	),
	left_boot : new create_item(
		"Left Boot",
		"This is a left boot",
		spr_left_boot,
		obj_left_boot,
		global.specs_list.left_boot_specs,
		global.effect_list.left_boot_effect,
		0,
		64,
		noone,
		noone,
		noone,
		noone,
		noone,
		2,
		global.armor_list.left_boot_armor,
		30,
	),
	coat : new create_item(
		"Coat",
		"This is a coat",
		spr_coat,
		obj_coat,
		global.specs_list.coat_specs,
		global.effect_list.coat_effect,
		0,
		64,
		noone,
		noone,
		noone,
		noone,
		noone,
		2,
		global.armor_list.coat_armor,
		30,
	),
	backpack : new create_item(
		"Backpack",
		"This is a small backpack",
		spr_backpack,
		obj_backpack,
		global.specs_list.backpack_specs,
		global.effect_list.backpack_effect,
		0,
		64,
		noone,
		noone,
		noone,
		noone,
		noone,
		2,
		global.armor_list.backpack_armor,
		30,
	),
	strapped_stick : new create_item(
		"Strapped Stick",
		"This is a stick with a strap",
		spr_strapped_stick,
		obj_strapped_stick,
		global.specs_list.strapped_stick_specs,
		global.effect_list.strapped_stick_effect,
		0,
		64,
		noone,
		noone,
		noone,
		noone,
		noone,
		2,
		global.armor_list.strapped_stick_armor,
		30,
	),
	copper_band : new create_item(
		"Copper Band",
		"This is a copper band",
		spr_copper_band,
		obj_copper_band,
		global.specs_list.copper_band_specs,
		global.effect_list.copper_band_effect,
		0,
		64,
		noone,
		noone,
		noone,
		noone,
		noone,
		2,
		global.armor_list.copper_band_armor,
		30,
	),
	small_belt : new create_item(
		"Small Belt",
		"This is a small belt",
		spr_belt,
		obj_belt,
		global.specs_list.small_belt_specs,
		global.effect_list.small_belt_effect,
		0,
		64,
		noone,
		noone,
		noone,
		noone,
		noone,
		2,
		global.armor_list.small_belt_armor,
		30,
	),
	single_action_trigger : new create_item(
		"Single Action Trigger",
		"This is a single action trigger",
		spr_single_action_trigger,
		obj_single_action_trigger,
		global.specs_list.single_action_trigger_specs,
		global.effect_list.single_action_trigger_effect,
		0,
		64,
		noone,
		noone,
		noone,
		noone,
		noone,
		1.5,
		noone,
		30,
	),
	super_conductor_circuit : new create_item(
		"Super-Conductive Circuit",
		"This is a super-conductive circuit trigger mechanism",
		spr_super_conductor_circuit,
		obj_super_conductor_circuit,
		global.specs_list.super_conductor_circuit_specs,
		global.effect_list.super_conductor_circuit_effect,
		0,
		64,
		noone,
		noone,
		noone,
		noone,
		noone,
		1.5,
		noone,
		30,
	),
	double_action_trigger : new create_item(
		"Double Action Trigger",
		"This is a double action trigger",
		spr_double_action_trigger,
		obj_double_action_trigger,
		global.specs_list.double_action_trigger_specs,
		global.effect_list.double_action_trigger_effect,
		0,
		64,
		noone,
		noone,
		noone,
		noone,
		noone,
		1.5,
		noone,
		30,
	),
	single_action_hammer : new create_item(
		"Spurred Hammer",
		"This is a spurred hammer",
		spr_single_action_hammer,
		obj_single_action_hammer,
		global.specs_list.single_action_hammer_specs,
		global.effect_list.single_action_hammer_effect,
		0,
		64,
		noone,
		noone,
		noone,
		noone,
		noone,
		1.5,
		noone,
		30,
	),
	overcharge_modulator : new create_item(
		"Overcharging Modulator",
		"This is an overcharging modulator mechanism",
		spr_overcharge_modulator,
		obj_overcharge_modulator,
		global.specs_list.overcharge_modulator_specs,
		global.effect_list.overcharge_modulator_effect,
		0,
		64,
		noone,
		noone,
		noone,
		noone,
		noone,
		1.5,
		noone,
		30,
	),
	enclosed_hammer : new create_item(
		"Enclosed Hammer",
		"This is an enclosed hammer",
		spr_enclosed_hammer,
		obj_enclosed_hammer,
		global.specs_list.enclosed_hammer_specs,
		global.effect_list.enclosed_hammer_effect,
		0,
		64,
		noone,
		noone,
		noone,
		noone,
		noone,
		1.5,
		noone,
		30,
	),
	short_barrel : new create_item(
		"Short Barrel",
		"This is a short barrel",
		spr_short_barrel,
		obj_short_barrel,
		global.specs_list.short_barrel_specs,
		global.effect_list.short_barrel_effect,
		0,
		64,
		noone,
		noone,
		noone,
		noone,
		noone,
		1.5,
		noone,
		30,
	),
	electromagnetic_lenses : new create_item(
		"Electromagnetic-Lensed Barrel",
		"This is an electromagnetic-lensed barrel",
		spr_electromagnetic_lenses,
		obj_electromagnetic_lenses,
		global.specs_list.electromagnetic_lenses_specs,
		global.effect_list.electromagnetic_lenses_effect,
		0,
		64,
		noone,
		noone,
		noone,
		noone,
		noone,
		1.5,
		noone,
		30,
	),
	medium_barrel : new create_item(
		"Medium Barrel",
		"This is a medium barrel",
		spr_medium_barrel,
		obj_medium_barrel,
		global.specs_list.medium_barrel_specs,
		global.effect_list.medium_barrel_effect,
		0,
		64,
		noone,
		noone,
		noone,
		noone,
		noone,
		1.5,
		noone,
		30,
	),
	long_barrel : new create_item(
		"Long Barrel",
		"This is a Long barrel",
		spr_long_barrel,
		obj_long_barrel,
		global.specs_list.long_barrel_specs,
		global.effect_list.long_barrel_effect,
		0,
		64,
		noone,
		noone,
		noone,
		noone,
		noone,
		1.5,
		noone,
		30,
	),
	spring_15lbs : new create_item(
		"15 lbs. Recoil Spring",
		"This is a 15 lbs. Recoil Spring",
		spr_15lb_spring,
		obj_15lb_spring,
		global.specs_list.spring_15lbs_specs,
		global.effect_list.spring_15lbs_effect,
		0,
		64,
		noone,
		noone,
		noone,
		noone,
		noone,
		1.5,
		noone,
		30,
	),
	spring_25lbs : new create_item(
		"25 lbs. Recoil Spring",
		"This is a 25 lbs. Recoil Spring",
		spr_25lb_spring,
		obj_25lb_spring,
		global.specs_list.spring_25lbs_specs,
		global.effect_list.spring_25lbs_effect,
		0,
		64,
		noone,
		noone,
		noone,
		noone,
		noone,
		1.5,
		noone,
		30,
	),
	claw_extractor : new create_item(
		"Claw Extractor",
		"This is a claw-extractor",
		spr_claw_extractor,
		obj_claw_extractor,
		global.specs_list.claw_extractor_specs,
		global.effect_list.claw_extractor_effect,
		0,
		64,
		noone,
		noone,
		noone,
		noone,
		noone,
		1.5,
		noone,
		30,
	),
	rotating_bolt : new create_item(
		"Rotating Bolt",
		"This is a rotating bolt",
		spr_rotating_bolt,
		obj_rotating_bolt,
		global.specs_list.rotating_bolt_specs,
		global.effect_list.rotating_bolt_effect,
		0,
		64,
		noone,
		noone,
		noone,
		noone,
		noone,
		1.5,
		noone,
		30,
	),
	turn_bolt : new create_item(
		"Turn Bolt",
		"This is a turn bolt",
		spr_turn_bolt,
		obj_turn_bolt,
		global.specs_list.turn_bolt_specs,
		global.effect_list.turn_bolt_effect,
		0,
		64,
		noone,
		noone,
		noone,
		noone,
		noone,
		1.5,
		noone,
		30,
	),
	tilt_bolt : new create_item(
		"Blowback Bolt",
		"This is a blowback bolt",
		spr_tilting_bolt,
		obj_tilt_bolt,
		global.specs_list.tilt_bolt_specs,
		global.effect_list.tilt_bolt_effect,
		0,
		64,
		noone,
		noone,
		noone,
		noone,
		noone,
		1.5,
		noone,
		30,
	),
	spring_pin : new create_item(
		"Spring-loaded Firing Pin",
		"This is a spring-loaded firing pin",
		spr_spring_pin,
		obj_spring_pin,
		global.specs_list.spring_pin_specs,
		global.effect_list.spring_pin_effect,
		0,
		64,
		noone,
		noone,
		noone,
		noone,
		noone,
		1.5,
		noone,
		30,
	),
	scope_2x : new create_item(
		"2x Scope",
		"This is 2x magnification scope for various firearms",
		spr_2x_scope,
		obj_2x_scope,
		global.specs_list.scope_2x_specs,
		global.effect_list.scope_2x_effect,
		0,
		64,
		noone,
		noone,
		noone,
		noone,
		noone,
		1.5,
		noone,
		30,
	),
	zenith_optic : new create_item(
		"Zenith Holosight",
		"This is 1x magnification holosight for various firearms",
		spr_zenith,
		obj_zenith,
		global.specs_list.zenith_optic_specs,
		global.effect_list.zenith_optic_effect,
		0,
		64,
		noone,
		noone,
		noone,
		noone,
		noone,
		1.5,
		noone,
		30,
	),
	goliath_optic : new create_item(
		"Goliath Red Dot",
		"This is 1x magnification red dot for various firearms",
		spr_goliath,
		obj_goliath,
		global.specs_list.goliath_optic_specs,
		global.effect_list.goliath_optic_effect,
		0,
		64,
		noone,
		noone,
		noone,
		noone,
		noone,
		1.5,
		noone,
		30,
	),
	laser : new create_item(
		"Laser",
		"This is an underbarrel laser for various firearms",
		spr_laser_attachment,
		obj_laser,
		global.specs_list.laser_specs,
		global.effect_list.laser_effect,
		0,
		64,
		noone,
		noone,
		noone,
		noone,
		noone,
		1,
		noone,
		30,
	),
	xmini_suppressor : new create_item(
		"X-Mini Pistol Suppressor",
		"This is an X-Mini Pistol Suppressor Attachment	which can connect to various pistols",
		spr_x_mini_suppressor,
		obj_x_mini_suppressor,
		global.specs_list.xmini_specs,
		global.effect_list.xmini_effect,
		0,
		64,
		noone,
		noone,
		noone,
		noone,
		noone,
		1.5,
		noone,
		30,
	),
	zrapid_suppressor : new create_item(
		"Z-Rapid SMG Suppressor",
		"This is a Z-Rapid SMG Suppressor Attachment which can connect to various SMGs",
		spr_z_rapid_suppressor,
		obj_z_rapid_suppressor,
		global.specs_list.zrapid_specs,
		global.effect_list.zrapid_effect,
		0,
		64,
		noone,
		noone,
		noone,
		noone,
		noone,
		1.5,
		noone,
		30,
	),
	yheath_suppressor : new create_item(
		"Y-Heath Heavy Suppressor",
		"This is a Y-Heath Heavy Suppressor Attachment which can connect to various high caliber rifles and firearms",
		spr_y_heath_suppressor,
		obj_y_heath_suppressor,
		global.specs_list.yheath_specs,
		global.effect_list.yheath_effect,
		0,
		64,
		noone,
		noone,
		noone,
		noone,
		noone,
		1.5,
		noone,
		30,
	),
	
	sw_model29_speedloader : new create_item(
		"S&W M-29 Speedloader",
		"This is a speedloader for the Smith and Wesson Model 29 44 Magnum Revolver.",
		spr_sw_model29_speedloader,
		obj_sw_model29_speedloader,
		global.specs_list.sw_model29_speedloader_specs,
		global.effect_list.sw_model29_speedloader_effect,
		0,
		64,
		noone,
		noone,
		noone,
		noone,
		noone,
		2,
		noone,
		30,
	),
	frag_grenade : new create_item(
		"URG-86 Frag. Grenade",
		"This is a URG-86 Fragmentation Grenade armed by pulling the pin. Explodes a few seconds after throwing, propelling numerous fragments of the explosive device outwards.",
		spr_frag_grenade,
		obj_frag_grenade,
		global.specs_list.frag_grenade_specs,
		global.effect_list.frag_grenade_effect,
		0,
		64,
		noone,
		noone,
		noone,
		noone,
		noone,
		1.6,
		noone,
		30,
	),
	inc_grenade : new create_item(
		"RG-34 Inc. Grenade",
		"This is a RG-34 Incendiary Grenade armed by pulling the pin. Explodes a few seconds after throwing, propelling a flammable liquid and igniting it in the nearby radius",
		spr_inc_grenade,
		obj_inc_grenade,
		global.specs_list.inc_grenade_specs,
		global.effect_list.inc_grenade_effect,
		0,
		64,
		noone,
		noone,
		noone,
		noone,
		noone,
		1.6,
		noone,
		30,
	),
	pin : new create_item(
		"Pin",
		"This is a pin that can be used to disarm various explosives, poke holes, etc.",
		spr_pin,
		obj_pin,
		global.specs_list.pin_specs,
		global.effect_list.pin_effect,
		0,
		64,
		noone,
		noone,
		noone,
		noone,
		noone,
		2,
		noone,
		30,
	),
	box_12gauge : new create_item(
		"12 Gauge Ammo",
		"This is a box of 12 Gauge Ammo",
		spr_12gauge_box,
		obj_12gauge_box,
		global.specs_list.box_12gauge_specs,
		global.effect_list.box_12gauge_effect,
		0,
		64,
		noone,
		noone,
		noone,
		noone,
		noone,
		1.5,
		noone,
		30,
	),
	box_44magnum : new create_item(
		"44 Magnum Ammo",
		"This is a box of 44 Magnum Ammo",
		spr_44mag_box,
		obj_44magnum_box,
		global.specs_list.box_44magnum_specs,
		global.effect_list.box_44mag_effect,
		0,
		64,
		noone,
		noone,
		noone,
		noone,
		noone,
		1.5,
		noone,
		30,
	),
	box_762x25 : new create_item(
		"7.62x25 Ammo",
		"This is a box of 7.62x25 Ammo",
		spr_762x25_box,
		obj_762x25_box,
		global.specs_list.box_762x25_specs,
		global.effect_list.box_762x25_effect,
		0,
		64,
		noone,
		noone,
		noone,
		noone,
		noone,
		1.5,
		noone,
		30,
	),
	box_762x39 : new create_item(
		"7.62x39 Ammo",
		"This is a box of 7.62x39 Ammo",
		spr_762x39_box,
		obj_762x39_box,
		global.specs_list.box_762x39_specs,
		global.effect_list.box_762x39_effect,
		0,
		64,
		noone,
		noone,
		noone,
		noone,
		noone,
		1.5,
		noone,
		30,
	),
	box_762x45 : new create_item(
		"7.62x45 Ammo",
		"This is a box of 7.62x45 Ammo",
		spr_762x45_box,
		obj_762x45_box,
		global.specs_list.box_762x45_specs,
		global.effect_list.box_762x45_effect,
		0,
		64,
		noone,
		noone,
		noone,
		noone,
		noone,
		1.5,
		noone,
		30,
	),
	box_ACP32 : new create_item(
		".32 ACP Ammo",
		"This is a box of .32 ACP Ammo",
		spr_ACP32_box,
		obj_ACP32_box,
		global.specs_list.box_ACP32_specs,
		global.effect_list.box_ACP32_effect,
		0,
		64,
		noone,
		noone,
		noone,
		noone,
		noone,
		1.5,
		noone,
		30,
	),
	box_ACP380 : new create_item(
		".380 ACP Ammo",
		"This is a box of .380 ACP Ammo",
		spr_ACP380_box,
		obj_ACP380_box,
		global.specs_list.box_ACP380_specs,
		global.effect_list.box_ACP380_effect,
		0,
		64,
		noone,
		noone,
		noone,
		noone,
		noone,
		1.5,
		noone,
		30,
	),
	dipstick : new create_item(
		"Dipstick",
		"This is a Dynamic Isopeptide Plasma Stick, capable of healing injected body parts up to 15% instantly, and 1% every second for 5 seconds. Can be used twice.",
		spr_dipstick,
		obj_dipstick,
		global.specs_list.dipstick_specs,
		global.effect_list.dipstick_effect,
		0,
		64,
		noone,
		noone,
		noone,
		noone,
		noone,
		2,
		noone,
		30,
	),
	energy : new create_item(
		"energy",
		"energy",
		noone,
		noone,
		global.specs_list.energy_specs,
		noone,
		0,
		64,
		noone,
		noone,
		noone,
		noone,
		noone,
		1.5,
		noone,
		30,
	),
	
	two_hand_item : new create_item(
		"NA",
		"NA",
		spr_two_hand,
		noone,
		noone,
		noone,
		0,
		0,
		noone,
		noone,
		noone,
		noone,
		noone,
		2,
		noone,
		0,
	),
}



global.obj_list = 
{
	test_obj : new create_obj(
		"Test Obj",
		"Null Object",
		obj_crate,
		spr_crate,
	),
	crate : new create_obj(
		"Crate",
		"This is a crate",
		obj_crate,
		spr_crate,
	),
	plant1 : new create_obj(
		"Plant 1",
		"This is a plant",
		obj_plant1,
		spr_plant1,
	),
	wall : new create_obj(
		"Wall",
		"This is a wall",
		obj_wall,
		spr_wall,
	),
	window_wall : new create_obj(
		"Window",
		"This is a window",
		obj_window_wall,
		spr_window_wall,
	),
	test_door : new create_obj(
		"Test door",
		"This is a test door",
		obj_door,
		spr_door,
	),
	test_dummy : new create_obj(
		"Test Dummy",
		"This is a test dummy",
		obj_test_dummy,
		spr_enemy,
	),
	urine : new create_obj(
		"Urine",
		"This is urine",
		obj_urine,
		spr_urine,
	),
	last_object : new create_obj(
		">LAST OBJ IN ROOM>",
		"PLACE THIS AS THE LAST OBJECT ALWAYS",
		obj_crate,
		spr_crate,
	),
}

global.surface_list =
{
	test_surface : new create_surface(
		"Test Surface",
		"This is a test surface",
		spr_main_ground,
	),
}

array_delete(ammo_array, 0, 1)
array_push(ammo_array, global.item_list.ACP380_single)

function throw_item(_item)
{
	throwing = !throwing
	current_throw = _item
	function_wheel = false
}
function combine(_item1, _item2)
{
	
}
function melee(_item)
{
	
}
