execute as @a[team=Blue] at @a[team=Blue] run tag @e[type=snowball,limit=1,sort=nearest,tag=!Blue,tag=!Red,distance=..2] add Blue
execute as @a[team=Red] at @a[team=Red] run tag @e[type=snowball,limit=1,sort=nearest,tag=!Blue,tag=!Red,distance=..2] add Red
execute as @e[type=snowball,tag=Blue] at @e[type=snowball,tag=Blue] unless blocks ~1 ~1 ~1 ~-1 ~-1 ~-1 -115 250 130 all run summon armor_stand ~ ~ ~ {Invisible:1b,Invulnerable:1b,PersistenceRequired:1b,NoBasePlate:1b,NoGravity:1b,Small:1b,CustomName:"BlueSmoky"}
execute as @e[type=snowball,tag=Red] at @e[type=snowball,tag=Red] unless blocks ~1 ~1 ~1 ~-1 ~-1 ~-1 -115 250 130 all run summon armor_stand ~ ~ ~ {Invisible:1b,Invulnerable:1b,PersistenceRequired:1b,NoBasePlate:1b,NoGravity:1b,Small:1b,CustomName:"RedSmoky"}
execute at @e[type=armor_stand,name="BlueSmoky"] as @e[type=armor_stand,name="BlueSmoky"] run kill @e[type=snowball,distance=..1,tag=Blue]
execute at @e[type=armor_stand,name="RedSmoky"] as @e[type=armor_stand,name="RedSmoky"] run kill @e[type=snowball,distance=..1,tag=Red]
scoreboard players add @e[type=armor_stand,name="BlueSmoky"] smktm 1
scoreboard players add @e[type=armor_stand,name="RedSmoky"] smktm 1
execute as @e[type=armor_stand,name="BlueSmoky"] at @e[type=armor_stand,name="BlueSmoky"] run particle dust{color: 170, scale:4} ~ ~ ~ 1.5 1.5 1.5 2 20 force
execute as @e[type=armor_stand,name="RedSmoky"] at @e[type=armor_stand,name="RedSmoky"] run particle dust{color: 11141120, scale:4} ~ ~ ~ 1.5 1.5 1.5 2 20 force
kill @e[type=armor_stand,name="BlueSmoky",scores={smktm=100..}]
kill @e[type=armor_stand,name="RedSmoky",scores={smktm=100..}]
execute as @e[type=armor_stand,name="BlueSmoky"] at @e[type=armor_stand,name="BlueSmoky"] run effect give @a[distance=..4.5,team=Red] minecraft:blindness 1 0
execute as @e[type=armor_stand,name="RedSmoky"] at @e[type=armor_stand,name="RedSmoky"] run effect give @a[distance=..4.5,team=Blue] minecraft:blindness 1 0