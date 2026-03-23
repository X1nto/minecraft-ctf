execute as @e[type=armor_stand,name="BlueBase"] at @e[type=armor_stand,name="BlueBase"] run tp @s ~ ~ ~ ~5 ~
execute as @e[type=armor_stand,name="RedBase"] at @e[type=armor_stand,name="RedBase"] run tp @s ~ ~ ~ ~5 ~
execute at @e[type=armor_stand,name="BlueBase"] as @e[type=armor_stand,name="BlueBase"] run particle minecraft:happy_villager ^ ^ ^8
execute at @e[type=armor_stand,name="BlueBase"] as @e[type=armor_stand,name="BlueBase"] run particle minecraft:happy_villager ^ ^ ^-8
execute at @e[type=armor_stand,name="RedBase"] as @e[type=armor_stand,name="RedBase"] run particle minecraft:happy_villager ^ ^ ^8
execute at @e[type=armor_stand,name="RedBase"] as @e[type=armor_stand,name="RedBase"] run particle minecraft:happy_villager ^ ^ ^-8
execute at @e[type=armor_stand,name="RedBase"] as @e[type=armor_stand,name="RedBase"] run effect give @a[nbt=!{active_effects:[{id:"minecraft:regeneration", amplifier: 2b}]},distance=..8,team=Red] minecraft:regeneration 3 2 true
execute at @e[type=armor_stand,name="BlueBase"] as @e[type=armor_stand,name="BlueBase"] run effect give @a[nbt=!{active_effects:[{id:"minecraft:regeneration", amplifier: 2b}]},distance=..8,team=Blue] minecraft:regeneration 3 2 true