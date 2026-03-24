effect give @a minecraft:saturation 1 1 true
tag @a[team=Blue] add ingame
tag @a[team=Red] add ingame
tag @a[team=!Red,team=!Blue] remove ingame
execute as @a[tag=!titled] run title @s times 0 20 20
tag @a add titled
execute at @a[tag=Blue,limit=1] run spawnpoint @a[team=Blue] ~ ~ ~
execute at @a[tag=Red,limit=1] run spawnpoint @a[team=Red] ~ ~ ~
kill @e[type=item]

function ctf:respawn
function ctf:flag
function ctf:healpool
function ctf:bossbar
function ctf:armor

function ctf:sharpshooter/firework
# function ctf:sharpshooter/eggbomb
# function ctf:sharpshooter/eggbombcooldown

function ctf:support/items

function ctf:infiltrator/smokecooldown
function ctf:infiltrator/smoke
function ctf:infiltrator/axe
function ctf:infiltrator/invisability

function ctf:cavalier/items
function ctf:cavalier/effects

execute if entity @e[limit=1,name="startcooldown",type=armor_stand,tag=startedcooldown] run function ctf:startcooldown
clear @a[tag=!ingame]
scoreboard players set @a[tag=!ingame] Death 0
scoreboard players set @a[tag=!ingame] DamageDealt 0
scoreboard players set @a[tag=!ingame] eggbombTimer 0
scoreboard players set @a[tag=!ingame] eggbombStat 0
scoreboard players set @a[tag=!ingame] healStat 0
scoreboard players set @a[tag=!ingame] healTimer 0
scoreboard players set @a[tag=!ingame] speedStat 0
scoreboard players set @a[tag=!ingame] speedTimer 0
scoreboard players set @a[tag=!ingame] smokeStat 0
scoreboard players set @a[tag=!ingame] smokeTimer 0
scoreboard players set @a[tag=!ingame] respawnTime 0
