//INIT
layer_set_visible("loading_ui", true)
fx_set_parameter(layer_get_fx("Effect_2_1"), "g_VignetteEdges", [2, 2])
fx_set_parameter(layer_get_fx("heartbeat_ui"), "g_VignetteEdges", [2, 2])

global.gun_obj_scale = 0.4

// KEYBINDINGS
ini_open("config.ini")

inventory_open_key = vk_tab
health_open_key = vk_lshift

left_hand_hold = ord("Q")
right_hand_hold = ord("E")

left_foot = ord("E")
right_foot = ord("R")

page_navigation_l = ord("D")
page_navigation_r = ord("F")

close_inspect_key = mb_right

switch_hands = vk_space

save_key = ord("9")
load_key = ord("0")

aim_key = vk_shift

firing_mode_keybind = ord("F")
field_strip_keybind = ord("V")

alt_function_key = ord("X")

health_wheel_key = ord("B")

bash_key = ord("V")

throw_key = ord("Z")

light_toggle = vk_alt

surface_inspect_key = ord("C")

quick_reload_key = ord("R")

close_keybind = ord("C")

display_reset(24, false)

// MISC


max_fps = ini_read_real("CONFIG", "loadbuffer", 60)
ini_close()

baseline_fps = 0
depth = obj_item_manager.depth -1
timer = 0

global.ui_show = true

layer_set_visible("Effect_2", true)
layer_set_visible("Effect_2_1", false)
layer_set_visible("perception_effect", true)

if irandom(1) == 0
{
	audio_play_sound(snd_REMAINS_AMBIENCE, 1, 1)
} else
{
	audio_play_sound(snd_RUINS_AMBIENCE, 1, 1)
}

spin_timer = 0

line_change_timer = 0
chosen_line = 1

load_lines = array_create(12, 0)
load_lines[0] = "Spawning Mutants"
load_lines[1] = "Brewing Dispute"
load_lines[2] = "Creating Mayhem"
load_lines[3] = "Illuminating Chaos"
load_lines[4] = "Distributing Hatred"
load_lines[5] = "Dispersing Death"
load_lines[6] = "Indoctrinating Imps"
load_lines[7] = "Spreading Lies"
load_lines[8] = "Coordinating Attacks"
load_lines[9] = "A Bullet In the Cranium is Better than Uranium"
load_lines[10] = "If its Uranium, put a bullet in the Cranium"
load_lines[11] = "Manifesting Time Discrepancies"
load_lines[12] = "Mutilating Corpses"
load_lines[12] = "Rusting Metal"
