scoreboard players remove #rayLeft NUMBERS 1
execute if entity @s[tag=ctf_vsred] as @a[tag=ingame,tag=Infiltrator,team=Red,distance=..2] positioned ~ ~-0.9 ~ if predicate ctf:in_hitbox run scoreboard players set #rayHit NUMBERS 2
execute if entity @s[tag=ctf_vsblue] as @a[tag=ingame,tag=Infiltrator,team=Blue,distance=..2] positioned ~ ~-0.9 ~ if predicate ctf:in_hitbox run scoreboard players set #rayHit NUMBERS 2
execute if entity @s[tag=ctf_vsred] as @a[tag=ingame,tag=!Infiltrator,team=Red,distance=..2] positioned ~ ~-0.9 ~ if predicate ctf:in_hitbox run scoreboard players set #rayHit NUMBERS 1
execute if entity @s[tag=ctf_vsblue] as @a[tag=ingame,tag=!Infiltrator,team=Blue,distance=..2] positioned ~ ~-0.9 ~ if predicate ctf:in_hitbox run scoreboard players set #rayHit NUMBERS 1
execute if score #rayHit NUMBERS matches 0 if score #rayLeft NUMBERS matches 1.. run function ctf:classes/infiltrator/arrows/step with storage ctf:macro ray
