gamemode spectator @a[tag=ingame,scores={Death=1..}]
scoreboard players add @a[tag=ingame,scores={Death=1..}] respawnTime 1
gamemode adventure @a[scores={respawnTime=200..}]
execute if score #gameActive NUMBERS matches 1 run tp @a[team=Red,scores={respawnTime=200..}] @e[type=armor_stand,name=RedSpawn,limit=1]
execute if score #gameActive NUMBERS matches 1 run tp @a[team=Blue,scores={respawnTime=200..}] @e[type=armor_stand,name=BlueSpawn,limit=1]
execute as @a[scores={respawnTime=20..200}] run function ctf:respawn/second
scoreboard players set @a[gamemode=adventure] respawnTime 0
scoreboard players set @a[gamemode=adventure] Death 0
execute if score #gameActive NUMBERS matches 1 at @e[type=armor_stand,name=BlueSpawn] run spawnpoint @a[team=Blue] ~ ~ ~
execute if score #gameActive NUMBERS matches 1 at @e[type=armor_stand,name=RedSpawn] run spawnpoint @a[team=Red] ~ ~ ~
execute if score #gameActive NUMBERS matches 0 at @e[type=armor_stand,name=spawn] run spawnpoint @a ~ ~ ~
