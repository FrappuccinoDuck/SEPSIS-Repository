global.temperature = 65

global.settings_open = false

scroll_value = 9



global.memory = array_create(0, 0)
global.times = array_create(0, 0)

array_push(global.times, "Age 3")
array_push(global.times, "Age 7")
array_push(global.times, "Age 8")
array_push(global.times, "Age 11")
array_push(global.times, "Age 17")
array_push(global.times, "Age 18")
array_push(global.times, string($"{current_month}/{current_day}/{current_year}|{current_hour}:{current_minute}:{current_second}"))

array_push(global.memory, "Dropped")
array_push(global.memory, "Tested for allergies (None)")
array_push(global.memory, "Broke Wrist")
array_push(global.memory, "Diagnosed with ADD")
array_push(global.memory, "Drug Overdose")
array_push(global.memory, "Minor head injury")
array_push(global.memory, "Entered strange world")
