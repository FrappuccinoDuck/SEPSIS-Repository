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

break_type = 0
break_array = array_create(0, 0)
array_push(break_array, "Simple")
array_push(break_array, "Simple")
array_push(break_array, "Compound")
array_push(break_array, "Transverse")
array_push(break_array, "Oblique")
array_push(break_array, "Comminuted")
array_push(break_array, "Greenstick")
array_push(break_array, "Impacted")
array_push(break_array, "Compression")
array_push(break_array, "Pathological")
array_push(break_array, "Stress")
array_push(break_array, "Avulsion")
array_push(break_array, "Segmental")
array_push(break_array, "Spiral")

break_desc_array = array_create(0, 0)
array_push(break_desc_array, "Simple")
array_push(break_desc_array, "The bone is broken but remains under the skin, causing pain and swelling. No open wound is visible. Movement may still be possible but painful.")
array_push(break_desc_array, "The bone has broken and pierced through the skin, creating a visible wound. There's a high risk of infection due to the exposed bone. This injury is serious and will cause significant pain and bleeding.")
array_push(break_desc_array, "A clean, straight break runs horizontally across the bone. The fracture cuts sharply through the bone shaft. This often happens from direct force or impact.")
array_push(break_desc_array, "The bone is broken at an angle, creating a diagonal fracture line. This type of fracture often occurs from a twisting force. The break may cause bone fragments to move more easily.")
array_push(break_desc_array, "The bone shatters into multiple pieces or fragments. A heavy impact or trauma usually causes this type of break. It's one of the more severe fractures, leaving the bone in several parts.")
array_push(break_desc_array, "This fracture bends one side of the bone while the other side cracks but doesn't break completely. It's a partial fracture, often less severe but still painful.")
array_push(break_desc_array, "One part of the bone is forced into another, causing compression at the fracture site. The bone is crunched together, usually from a fall or hard blow. This type of fracture can leave the bone looking shorter or distorted.")
array_push(break_desc_array, "The bone collapses inward due to pressure, often seen in the spine. It's common in weakened bones and can cause a hunched posture or sudden pain. The bone is squashed or crushed, particularly in the vertebrae.")
array_push(break_desc_array, "The bone is broken due to an underlying condition that weakens it, like osteoporosis or cancer. This type of fracture occurs with little to no external force. It's often a sign of severe disease progression.")
array_push(break_desc_array, "A thin, hairline crack forms in the bone due to repetitive strain or overuse. Athletes and runners are often victims of this type. The fracture is subtle, but the pain can worsen over time.")
array_push(break_desc_array, "A small fragment of bone is torn away from the main structure, pulled by a ligament or tendon. Sudden, forceful movements are usually the cause. The bone fragment may still be attached to the soft tissue.")
array_push(break_desc_array, "The bone is broken in two places, creating a free-floating segment between the two breaks. This results in three distinct pieces of bone. It's one of the more complex fractures and leads to unstable movement.")
array_push(break_desc_array, "The bone has twisted, causing a fracture that spirals around the shaft. This type of break is often caused by a forceful twisting motion. It leaves the bone with a corkscrew-like appearance, making it harder to stabilize.")

// 1 simple
// 2 compound
// 3 transverse
// 4 oblique
// 5 comminuted
// 6 greenstick
// 7 impacted
// 8 compression
// 9 pathological
// 10 stress
// 11 avulsion
// 12 segmental
// 13 spiral

image_alpha = random_range(0.5, 1)


condition_degradation_arr = array_create(0, 0)
array_push(condition_degradation_arr, 0.01)
array_push(condition_degradation_arr, 0.05)
array_push(condition_degradation_arr, 0.1)
array_push(condition_degradation_arr, 0.2)
array_push(condition_degradation_arr, 0.5)

function create_break(_name, _sprite_index) constructor
{
	name = _name
	sprite = _sprite_index
	
}

global.break_list =
{
	simple : new create_break(
		"Simple",
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
