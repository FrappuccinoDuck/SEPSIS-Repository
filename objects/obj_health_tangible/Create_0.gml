index = 0
global.selected_part = noone

heartbeat = 60
heart_val = 0

global.parts = array_create(0, 0)
global.parts_desc = array_create(0, 0)

array_push(global.parts, "Head")
array_push(global.parts, "Torso")
array_push(global.parts, "Left Arm")
array_push(global.parts, "Left Hand")
array_push(global.parts, "Left Leg")
array_push(global.parts, "Left Foot")
array_push(global.parts, "Right Arm")
array_push(global.parts, "Right Hand")
array_push(global.parts, "Right Leg")
array_push(global.parts, "Right Foot")

array_push(global.parts, "Heart")
array_push(global.parts, "Lungs")
array_push(global.parts, "Brain")
array_push(global.parts, "Stomach")
array_push(global.parts, "Liver")

array_push(global.parts_desc, "This is your head")
array_push(global.parts_desc, "This is your Torso")
array_push(global.parts_desc, "This is your Left Arm")
array_push(global.parts_desc, "This is your Left Hand")
array_push(global.parts_desc, "This is your Left Leg")
array_push(global.parts_desc, "This is your Left Foot")
array_push(global.parts_desc, "This is your Right Arm")
array_push(global.parts_desc, "This is your Right Hand")
array_push(global.parts_desc, "This is your Right Leg")
array_push(global.parts_desc, "This is your Right Foot")

array_push(global.parts_desc, "This is your heart")
array_push(global.parts_desc, "These are your lungs")
array_push(global.parts_desc, "This is your brain")
array_push(global.parts_desc, "This is your stomach")
array_push(global.parts_desc, "This is your liver")
