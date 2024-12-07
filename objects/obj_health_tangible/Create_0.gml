
timer = 0

heartbeat = 60
heart_val = 0

infection_list = array_create(0, 0)
array_push(infection_list, "No Infection In Selected Area")
array_push(infection_list, "Cellulitis ")
array_push(infection_list, "Abscess ")
array_push(infection_list, "Tetanus ")
array_push(infection_list, "Sepsis ")
array_push(infection_list, "Necrotizing Fasciitis ")
array_push(infection_list, "Gas Gangrene ")
array_push(infection_list, "Meningitis ")
array_push(infection_list, "Fungal Infection")
array_push(infection_list, "Peritonitis ")

infection_desc_list = array_create(0, 0)
array_push(infection_desc_list, "")
array_push(infection_desc_list, "A spreading bacterial infection causing redness, swelling, and pain around the wound")
array_push(infection_desc_list, "A localized pus-filled pocket that forms due to untreated infection")
array_push(infection_desc_list, "A toxin-driven infection causing muscle spasms and stiffness, often fatal if untreated")
array_push(infection_desc_list, "A life-threatening condition where infection spreads into the bloodstream, causing organ failure")
array_push(infection_desc_list, "A fast-moving, deadly infection that destroys skin and muscle tissue")
array_push(infection_desc_list, "A bacterial infection producing gas and toxins, leading to rapid tissue death")
array_push(infection_desc_list, "A critical infection of the brain's protective membranes, often fatal without quick treatment")
array_push(infection_desc_list, "Slow-developing infections caused by spores entering unclean wounds in damp environments")
array_push(infection_desc_list, "A severe abdominal infection caused by perforation of internal organs")

infection_index = 0

bleed_list = array_create(0, 0)
array_push(bleed_list, "No Bleed In Selected Area")
array_push(bleed_list, "Flesh Wound | Graze")
array_push(bleed_list, "Superficial Wound | Small Cut")
array_push(bleed_list, "Significant Injury | Deep Cut")
array_push(bleed_list, "Severe Injury | Large Vein")
array_push(bleed_list, "Major Arterial Bleed")

bleed_desc_list = array_create(0, 0)
array_push(bleed_desc_list, "")
array_push(bleed_desc_list, "A superficial graze or small cut, barely breaking the skin, causing minimal blood loss")
array_push(bleed_desc_list, "A deeper cut or puncture affecting capillaries or small veins, with steady blood flow requiring basic care")
array_push(bleed_desc_list, "A deep wound penetrating into muscle or damaging larger veins, leading to rapid blood loss and significant risk")
array_push(bleed_desc_list, "A large wound severing a major vein or smaller artery, with life-threatening blood loss and a need for immediate treatment")
array_push(bleed_desc_list, "A catastrophic wound involving major arteries or extreme tissue damage, resulting in uncontrollable blood loss and imminent danger of death without emergency intervention.")


global.bleed_amounts = array_create(50, 0);

selected_type = 0

index = 0
global.selected_bone = noone

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
broken = false

infection = false
infection_amount = 0

radiated = false

contaminated = false
contaminant = noone
contaminated_amount = 0

bruising = false
inflammation = false


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
	),
}


blood_loss_arr = array_create(0, 0)
array_push(blood_loss_arr, 0.2)
array_push(blood_loss_arr, 1.5)
array_push(blood_loss_arr, 5)
array_push(blood_loss_arr, 15)
array_push(blood_loss_arr, 100)

timer = 0

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
array_push(global.parts, "Kidneys")
array_push(global.parts, "Small Intestines")
array_push(global.parts, "Pancreas")
array_push(global.parts, "Bladder")
array_push(global.parts, "Large Intestines")
array_push(global.parts, "Thyroid")



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

array_push(global.parts_desc, "The heart is your most vital organ, responsible for pumping blood throughout your body, delivering essential oxygen and nutrients to keep you alive. In the harsh conditions of the wild, your heart's health is paramount. Injuries, dehydration, and high stress levels can significantly impact its performance, reducing your stamina and ability to endure. Protect your heart by staying hydrated, managing stress, and avoiding severe injuries to ensure your survival and maintain peak physical condition. Your heart is the core of your resilience in the fight for survival.")
array_push(global.parts_desc, "The lungs are crucial for breathing, enabling oxygen to enter your bloodstream and carbon dioxide to be expelled. Maintaining healthy lungs is essential for stamina and overall vitality. Smoke inhalation, infections, or damage can severely impact your ability to survive. Keep your lungs clear and functioning well to ensure you can endure physical challenges and stay alert in the wild.")
array_push(global.parts_desc, "The brain is the control center of your body, managing thoughts, emotions, and vital functions. It's essential for making quick decisions and maintaining coordination. Head injuries, dehydration, and stress can impair brain function, reducing your chances of survival. Protect your brain by staying hydrated, well-nourished, and avoiding trauma to ensure sharpness and quick reflexes.")
array_push(global.parts_desc, "The stomach is vital for digesting food and absorbing nutrients necessary for energy and health. Eating contaminated food or suffering from infections can disrupt its function, leading to weakness and sickness. Keep your stomach healthy by consuming clean water and safe, nutritious food to maintain energy levels and overall well-being.")
array_push(global.parts_desc, "The liver is essential for detoxifying your body, processing nutrients, and producing vital proteins. Damage from toxins, infections, or poor nutrition can impair its function, compromising your health. Protect your liver by avoiding harmful substances and ensuring a balanced diet to maintain its ability to cleanse your body and support your survival.")
array_push(global.parts_desc, "The kidneys filter waste from your blood and regulate fluid balance, crucial for overall health. Dehydration, toxins, and infections can harm your kidneys, leading to serious health issues. Keep your kidneys healthy by staying hydrated and avoiding harmful substances to ensure they can effectively filter waste and maintain your body's balance.")
array_push(global.parts_desc, "The small intestines are key for nutrient absorption, converting digested food into essential energy and nutrients. Infections, poor diet, or injuries can impair their function, leading to malnutrition. Keep your small intestines healthy by eating balanced, clean foods to ensure efficient nutrient absorption and sustained energy.")
array_push(global.parts_desc, "The pancreas plays a crucial role in digestion and blood sugar regulation. Damage or disease can disrupt these functions, affecting your energy levels and overall health. Protect your pancreas by maintaining a balanced diet and avoiding excessive sugar to ensure stable blood sugar levels and efficient digestion.")
array_push(global.parts_desc, "The bladder stores urine, allowing for the regulation of fluid waste in your body. Infections or dehydration can affect its function, leading to discomfort and potential health issues. Keep your bladder healthy by staying hydrated and practicing good hygiene to ensure efficient waste management and overall well-being.")
array_push(global.parts_desc, "The large intestines are responsible for absorbing water and expelling solid waste. Issues like dehydration, infections, or poor diet can disrupt their function, leading to discomfort and health problems. Maintain the health of your large intestines by staying hydrated and consuming fiber-rich foods to ensure smooth waste elimination and overall digestive health.")
array_push(global.parts_desc, "The thyroid gland regulates your metabolism, influencing energy levels, growth, and overall health. Imbalances due to stress, poor nutrition, or disease can affect your survival abilities. Keep your thyroid healthy by ensuring a diet rich in iodine and managing stress to maintain optimal metabolic function and energy levels.")

