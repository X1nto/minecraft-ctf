team join Blue @r[team=!Blue,team=!Red]
team join Red @r[team=!Blue,team=!Red]
team join Blue @r[team=!Blue,team=!Red]
team join Red @r[team=!Blue,team=!Red]
team join Blue @r[team=!Blue,team=!Red]
team join Red @r[team=!Blue,team=!Red]
team join Blue @r[team=!Blue,team=!Red]
team join Red @r[team=!Blue,team=!Red]
team join Blue @r[team=!Blue,team=!Red]
team join Red @r[team=!Blue,team=!Red]
tp @a[team=Red] @e[name=RedPool,limit=1]
tp @a[team=Blue] @e[name=BluePool,limit=1]
tag @e[type=armor_stand,name=start] add started
scoreboard players set bossbar tick 12000
scoreboard players set sec tick 0
scoreboard players set min tick 10
scoreboard players set Blue SCOREBOARD 0
scoreboard players set Red SCOREBOARD 0
bossbar set minecraft:1 visible true
clear @a