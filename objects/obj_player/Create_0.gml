global.door_touch = false

disarray_timer = 0
shot_at = false

global.sprint = false
global.sprint_lock = false

instance_create_depth(x, y, -9, obj_vicinity_view)


part_threshold = array_create(0, 0)
array_push(part_threshold, 3) // HEAD
array_push(part_threshold, 6) // TORSO
array_push(part_threshold, 5) // ARMS
array_push(part_threshold, 5) // LEGS
array_push(part_threshold, 4) // HANDS & FEET

blood_timer = 0

init = false
prev_x = 0
prev_y = 0

global.death_type = 0

global.wall_gain = 0

/// @desc Creates a light using variables

// Create a light from the instance variables
switch(Light_Type) {
	case "Point Light":
		light = light_create_point(x, y, Light_Shadow_Length, Light_Color, Light_Range, Light_Intensity);
		sprite_index = spr_light_point;
		break;
		
	case "Spot Light":
		light = light_create_spot(x, y, Light_Shadow_Length, Light_Color, Light_Range, Light_Intensity, Light_Angle, Light_Direction);

		break;
		
	case "Area Light":
		light = light_create_area(x, y, Light_Shadow_Length, Light_Color, Light_Range, Light_Intensity, Light_Width, Light_Direction);
		sprite_index = spr_light_area;
		image_angle = Light_Direction;
		break;
		
	case "Directional Light":
		light = light_create_directional(x, y, Light_Shadow_Length, Light_Color, Light_Range, Light_Intensity, Light_Direction);
		sprite_index = spr_light_directional;
		image_angle = Light_Direction;
		break;
		
	case "Line Light":
		light = light_create_line(x, y, Light_Shadow_Length, Light_Color, Light_Range, Light_Intensity, Light_Width, Light_Direction);
		sprite_index = spr_light_line;
		image_angle = Light_Direction;
		break;
}

// Set LUTs
if(LUT_Intensity != noone) {
	light[| eLight.LutIntensity] = sprite_get_texture(LUT_Intensity, 0);
}

// Add the light to the world
light_add_to_world(light);

timer = 0
l_init = false
r_init = false

move_timer = 0
move_init = false

light[| eLight.Intensity] += 0.5;
light[| eLight.Range] += 500;
light[| eLight.Flags] |= eLightFlags.Dirty;

xspd = 0;
yspd = 0;

move_spd = 2;

current_carry = 0

no_move = false

present_weight = 0

dead = false