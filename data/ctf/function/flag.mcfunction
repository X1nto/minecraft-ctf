execute at @e[type=armor_stand,name="BluePool"] unless entity @e[type=item_display,tag=blueflag] unless entity @a[tag=hasBlueFlag] run summon item_display ~ ~ ~ {Tags:["ctfflag","blueflag"],CustomName:"BlueFlag",Rotation:[180f,0f],item:{id:"minecraft:blue_banner",count:1},item_display:"head",transformation:{translation:[0f,0.5f,0f],scale:[1f,1f,1f],left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f]}}
execute at @e[type=armor_stand,name="RedPool"] unless entity @e[type=item_display,tag=redflag] unless entity @a[tag=hasRedFlag] run summon item_display ~ ~ ~ {Tags:["ctfflag","redflag"],CustomName:"RedFlag",item:{id:"minecraft:red_banner",count:1},item_display:"head",transformation:{translation:[0f,0.5f,0f],scale:[1f,1f,1f],left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f]}}
execute if entity @a[tag=hasBlueFlag] run kill @e[type=item_display,tag=blueflag]
execute if entity @a[tag=hasRedFlag] run kill @e[type=item_display,tag=redflag]
execute at @e[type=item_display,tag=blueflag] if entity @a[distance=..0.5,team=Red,gamemode=adventure] run function ctf:flag/taken {owner:Blue, thief:Red}
execute at @e[type=item_display,tag=redflag] if entity @a[distance=..0.5,team=Blue,gamemode=adventure] run function ctf:flag/taken {owner:Red, thief:Blue}
effect give @a[tag=hasBlueFlag] minecraft:glowing 1 0 true
effect give @a[tag=hasRedFlag] minecraft:glowing 1 0 true
tag @a[tag=hasBlueFlag,scores={Death=1..}] remove hasBlueFlag
tag @a[tag=hasRedFlag,scores={Death=1..}] remove hasRedFlag
execute at @e[type=armor_stand,name="BluePool"] if entity @e[type=item_display,tag=blueflag,distance=..0.5] if entity @a[tag=hasRedFlag,distance=..0.5] run function ctf:flag/capture {team:Blue, enemy:Red}
execute at @e[type=armor_stand,name="RedPool"] if entity @e[type=item_display,tag=redflag,distance=..0.5] if entity @a[tag=hasBlueFlag,distance=..0.5] run function ctf:flag/capture {team:Red, enemy:Blue}
