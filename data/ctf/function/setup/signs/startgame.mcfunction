execute if score #gameActive NUMBERS matches 1 run return run tellraw @s {"text":"A game is already running.","color":"red"}
execute if entity @e[type=armor_stand,name=startcooldown,tag=startedcooldown] run return run tellraw @s {"text":"The countdown is already running.","color":"red"}
execute unless entity @e[type=armor_stand,name="BluePool",tag=active] run return run tellraw @s {"text":"No map selected - pick one first.","color":"red"}
execute unless entity @e[type=armor_stand,name=startcooldown] run return run tellraw @s {"text":"No 'startcooldown' marker placed - run ctf:setup/lobby/startcooldown.","color":"red"}
scoreboard players set startcooldown tick 200
tag @e[type=armor_stand,name=startcooldown,limit=1] add startedcooldown
