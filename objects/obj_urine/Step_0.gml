/// @description Insert description here
// You can write your code in this editor

// Inherit the parent event
event_inherited();

//image_xscale -= size_change
//image_yscale = image_xscale

if move_spd > 0
{
	image_alpha -= random_range(0, 0.1)
}
move_spd = approach(move_spd, 0, fric)

//surface_set_target(obj_blood_controller.surf)
//draw_sprite_ext(spr_blood_pixel, 0, x, y, image_xscale, image_yscale, image_angle, c_white, image_alpha)
//surface_reset_target()
draw_self()

if image_xscale <= 0
{
	instance_destroy()
}
