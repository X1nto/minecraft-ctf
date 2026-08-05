gamemode spectator @a[tag=ingame,scores={Death=1..}]
scoreboard players add @a[tag=ingame,scores={Death=1..}] respawnTime 1
gamemode adventure @a[scores={respawnTime=200..}]
title @a[scores={respawnTime=200..}] clear
execute if score #gameActive NUMBERS matches 1 run tp @a[team=Red,scores={respawnTime=200..}] @e[type=armor_stand,name=RedSpawn,tag=active,limit=1]
execute if score #gameActive NUMBERS matches 1 run tp @a[team=Blue,scores={respawnTime=200..}] @e[type=armor_stand,name=BlueSpawn,tag=active,limit=1]
execute as @a[scores={respawnTime=1..181}] run function ctf:respawn/second
scoreboard players set @a[gamemode=adventure] respawnTime 0
scoreboard players set @a[gamemode=adventure] Death 0
execute if score #gameActive NUMBERS matches 1 at @e[type=armor_stand,name=BlueSpawn,tag=active] run spawnpoint @a[team=Blue] ~ ~ ~
execute if score #gameActive NUMBERS matches 1 at @e[type=armor_stand,name=RedSpawn,tag=active] run spawnpoint @a[team=Red] ~ ~ ~
execute at @e[type=armor_stand,name=start] run spawnpoint @a[tag=!ingame] ~ ~ ~
