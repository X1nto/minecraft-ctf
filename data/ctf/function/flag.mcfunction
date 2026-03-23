execute at @e[type=armor_stand,name="BlueBase"] unless entity @e[type=armor_stand,name="BlueFlag"] unless entity @a[tag=hasBlueFlag] run summon armor_stand ~ ~ ~ {Invisible:1b,Invulnerable:1b,PersistenceRequired:1b,NoBasePlate:1b,NoGravity:1b,Small:1b,Rotation:[180f, 0f],equipment:{head:{id:blue_banner}},CustomName:"BlueFlag"}
execute at @e[type=armor_stand,name="RedBase"] unless entity @e[type=armor_stand,name="RedFlag"] unless entity @a[tag=hasRedFlag] run summon armor_stand ~ ~ ~ {Invisible:1b,Invulnerable:1b,PersistenceRequired:1b,NoBasePlate:1b,NoGravity:1b,Small:1b,equipment:{head:{id:red_banner}},CustomName:"RedFlag"}
execute if entity @a[tag=hasBlueFlag] run kill @e[type=armor_stand,name="BlueFlag"]
execute if entity @a[tag=hasRedFlag] run kill @e[type=armor_stand,name="RedFlag"]
execute at @e[type=armor_stand,name="BlueBase"] run tag @p[distance=..0.5,team=Red,gamemode=adventure] add hasBlueFlag
execute at @e[type=armor_stand,name="RedBase"] run tag @p[distance=..0.5,team=Blue,gamemode=adventure] add hasRedFlag
effect give @a[tag=hasBlueFlag] minecraft:glowing 1 0 true
effect give @a[tag=hasRedFlag] minecraft:glowing 1 0 true
tag @a[tag=hasBlueFlag,scores={Death=1..}] remove hasBlueFlag
tag @a[tag=hasRedFlag,scores={Death=1..}] remove hasRedFlag
execute at @e[type=armor_stand,name="BlueBase"] if entity @e[type=armor_stand,name="BlueFlag",distance=..0.5] if entity @a[tag=hasRedFlag,distance=..0.5] run scoreboard players add Blue SCOREBOARD 1
execute at @e[type=armor_stand,name="RedBase"] if entity @e[type=armor_stand,name="RedFlag",distance=..0.5] if entity @a[tag=hasBlueFlag,distance=..0.5] run scoreboard players add Red SCOREBOARD 1
execute at @e[type=armor_stand,name="BlueBase"] if entity @e[type=armor_stand,name="BlueFlag",distance=..0.5] if entity @a[tag=hasRedFlag,distance=..0.5] run tag @a[tag=hasRedFlag,distance=..0.5] remove hasRedFlag
execute at @e[type=armor_stand,name="RedBase"] if entity @e[type=armor_stand,name="RedFlag",distance=..0.5] if entity @a[tag=hasBlueFlag,distance=..0.5] run tag @a[tag=hasBlueFlag,distance=..0.5] remove hasBlueFlag