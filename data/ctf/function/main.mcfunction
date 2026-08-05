scoreboard players set #gameActive NUMBERS 0
execute if entity @e[type=armor_stand,name=start,tag=started] run scoreboard players set #gameActive NUMBERS 1

execute as @a[scores={Death=1..},tag=!diedreset] run function ctf:utility/resetcooldowns
tag @a[scores={Death=1..}] add diedreset
tag @a[scores={Death=0}] remove diedreset

execute as @a unless score @s leaveSeen = @s leaveGame run function ctf:utility/onjoin
scoreboard players operation @a leaveSeen = @a leaveGame

effect give @a minecraft:saturation 1 1 true
tag @a[team=Blue] add ingame
tag @a[team=Red] add ingame
tag @a[team=!Red,team=!Blue] remove ingame
execute as @a[tag=!titled] run title @s times 0 20 20
tag @a add titled
execute at @a[tag=Blue,limit=1] run spawnpoint @a[team=Blue] ~ ~ ~
execute at @a[tag=Red,limit=1] run spawnpoint @a[team=Red] ~ ~ ~

function ctf:respawn
execute if score #gameActive NUMBERS matches 1 run function ctf:tick/ingame

execute if entity @e[type=armor_stand,name="startcooldown",tag=startedcooldown,limit=1] run function ctf:startcooldown

execute as @a[tag=!ingame,tag=wasingame] run function ctf:utility/resetstate
tag @a[tag=!ingame] remove wasingame
tag @a[tag=ingame] add wasingame
