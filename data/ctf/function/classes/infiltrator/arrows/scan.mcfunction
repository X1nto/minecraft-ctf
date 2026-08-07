execute store result score #rayX NUMBERS run data get entity @s Motion[0] 500
execute store result score #rayY NUMBERS run data get entity @s Motion[1] 500
execute store result score #rayZ NUMBERS run data get entity @s Motion[2] 500
execute store result storage ctf:macro ray.x double 0.0001 run scoreboard players get #rayX NUMBERS
execute store result storage ctf:macro ray.y double 0.0001 run scoreboard players get #rayY NUMBERS
execute store result storage ctf:macro ray.z double 0.0001 run scoreboard players get #rayZ NUMBERS
scoreboard players set #rayLeft NUMBERS 20
scoreboard players set #rayHit NUMBERS 0
function ctf:classes/infiltrator/arrows/step with storage ctf:macro ray
execute if score #rayHit NUMBERS matches 2 run data merge entity @s {PierceLevel:1b}
execute if score #rayHit NUMBERS matches 2 run tag @s add ctf_pierced
