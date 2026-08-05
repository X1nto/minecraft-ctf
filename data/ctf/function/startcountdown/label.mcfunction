scoreboard players operation #startsec NUMBERS = startcountdown tick
scoreboard players operation #startsec NUMBERS /= #TWENTY NUMBERS
title @a title {"score":{"name":"#startsec","objective":"NUMBERS"},"color":"green"}
execute if score #startsec NUMBERS matches 10 as @a at @s run playsound minecraft:block.note_block.pling master @s ~ ~ ~ 1 1
execute if score #startsec NUMBERS matches ..5 as @a at @s run playsound minecraft:block.note_block.hat master @s ~ ~ ~ 1 1
execute store result storage ctf:macro sec int 1 run scoreboard players get #startsec NUMBERS
function ctf:startcountdown/sign with storage ctf:macro
