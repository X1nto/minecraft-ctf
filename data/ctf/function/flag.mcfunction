execute at @e[type=armor_stand,name="BluePool",tag=active] unless entity @e[type=item_display,tag=blueflag] unless entity @a[tag=hasBlueFlag] run function ctf:flag/spawnblue
execute at @e[type=armor_stand,name="RedPool",tag=active] unless entity @e[type=item_display,tag=redflag] unless entity @a[tag=hasRedFlag] run function ctf:flag/spawnred
execute if entity @a[tag=hasBlueFlag] run kill @e[type=item_display,tag=blueflag]
execute if entity @a[tag=hasRedFlag] run kill @e[type=item_display,tag=redflag]
execute at @e[type=item_display,tag=blueflag] if entity @a[distance=..0.5,team=Red,gamemode=adventure] run function ctf:flag/taken {owner:Blue, thief:Red}
execute at @e[type=item_display,tag=redflag] if entity @a[distance=..0.5,team=Blue,gamemode=adventure] run function ctf:flag/taken {owner:Red, thief:Blue}
effect give @a[tag=hasBlueFlag] minecraft:glowing 1 0 true
effect give @a[tag=hasRedFlag] minecraft:glowing 1 0 true
tag @a[tag=hasBlueFlag,scores={Death=1..}] remove hasBlueFlag
tag @a[tag=hasRedFlag,scores={Death=1..}] remove hasRedFlag
execute at @e[type=armor_stand,name="BluePool",tag=active] if entity @e[type=item_display,tag=blueflag,distance=..0.5] if entity @a[tag=hasRedFlag,distance=..0.5] run function ctf:flag/capture {team:Blue, enemy:Red}
execute at @e[type=armor_stand,name="RedPool",tag=active] if entity @e[type=item_display,tag=redflag,distance=..0.5] if entity @a[tag=hasBlueFlag,distance=..0.5] run function ctf:flag/capture {team:Red, enemy:Blue}
