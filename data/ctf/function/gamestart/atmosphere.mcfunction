weather clear 900
execute store result score #weather NUMBERS run random value 1..100
execute if score #weather NUMBERS matches 1..20 run weather rain 900
execute if score #weather NUMBERS matches 21..30 run function ctf:gamestart/snow
execute if score #weather NUMBERS matches 31..35 run weather thunder 900
execute store result score #time NUMBERS run random value 1..100
execute if score #time NUMBERS matches 1..30 run time set night
execute if score #time NUMBERS matches 31..40 run time set midnight
execute if score #time NUMBERS matches 41..70 run time set day
execute if score #time NUMBERS matches 71.. run time set noon
