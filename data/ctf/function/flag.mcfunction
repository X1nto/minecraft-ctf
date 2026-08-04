execute at @e[type=armor_stand,name="BluePool"] unless entity @e[type=armor_stand,name="BlueFlag"] unless entity @a[tag=hasBlueFlag] run summon armor_stand ~ ~ ~ {Marker:1b,Invisible:1b,Small:1b,Rotation:[180f, 0f],equipment:{head:{id:blue_banner}},CustomName:"BlueFlag"}
execute at @e[type=armor_stand,name="RedPool"] unless entity @e[type=armor_stand,name="RedFlag"] unless entity @a[tag=hasRedFlag] run summon armor_stand ~ ~ ~ {Marker:1b,Invisible:1b,Small:1b,equipment:{head:{id:red_banner}},CustomName:"RedFlag"}
execute if entity @a[tag=hasBlueFlag] run kill @e[type=armor_stand,name="BlueFlag"]
execute if entity @a[tag=hasRedFlag] run kill @e[type=armor_stand,name="RedFlag"]
execute at @e[type=armor_stand,name="BlueFlag"] if entity @a[distance=..0.5,team=Red,gamemode=adventure] run function ctf:flag/taken {owner:Blue, thief:Red}
execute at @e[type=armor_stand,name="RedFlag"] if entity @a[distance=..0.5,team=Blue,gamemode=adventure] run function ctf:flag/taken {owner:Red, thief:Blue}
effect give @a[tag=hasBlueFlag] minecraft:glowing 1 0 true
effect give @a[tag=hasRedFlag] minecraft:glowing 1 0 true
tag @a[tag=hasBlueFlag,scores={Death=1..}] remove hasBlueFlag
tag @a[tag=hasRedFlag,scores={Death=1..}] remove hasRedFlag
execute at @e[type=armor_stand,name="BluePool"] if entity @e[type=armor_stand,name="BlueFlag",distance=..0.5] if entity @a[tag=hasRedFlag,distance=..0.5] run function ctf:flag/capture {team:Blue, enemy:Red}
execute at @e[type=armor_stand,name="RedPool"] if entity @e[type=armor_stand,name="RedFlag",distance=..0.5] if entity @a[tag=hasBlueFlag,distance=..0.5] run function ctf:flag/capture {team:Red, enemy:Blue}