execute as @e[type=armor_stand,name="BluePool"] at @s run tp @s ~ ~ ~ ~5 ~
execute as @e[type=armor_stand,name="RedPool"] at @s run tp @s ~ ~ ~ ~5 ~
execute as @e[type=armor_stand,name="BluePool"] at @s run particle minecraft:happy_villager ^ ^ ^8
execute as @e[type=armor_stand,name="BluePool"] at @s run particle minecraft:happy_villager ^ ^ ^-8
execute as @e[type=armor_stand,name="RedPool"] at @s run particle minecraft:happy_villager ^ ^ ^8
execute as @e[type=armor_stand,name="RedPool"] at @s run particle minecraft:happy_villager ^ ^ ^-8
execute as @e[type=armor_stand,name="RedPool"] at @s run effect give @a[nbt=!{active_effects:[{id:"minecraft:regeneration", amplifier: 2b}]},distance=..8,team=Red] minecraft:regeneration 3 2 true
execute as @e[type=armor_stand,name="BluePool"] at @s run effect give @a[nbt=!{active_effects:[{id:"minecraft:regeneration", amplifier: 2b}]},distance=..8,team=Blue] minecraft:regeneration 3 2 true