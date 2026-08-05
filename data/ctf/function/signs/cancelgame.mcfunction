execute unless score startcountdown tick matches 1.. run return run tellraw @s {"text":"No countdown to cancel.","color":"red"}
scoreboard players set startcountdown tick 0
title @a title {"text":"Cancelled","color":"red"}
execute as @a at @s run playsound minecraft:block.note_block.bass master @s ~ ~ ~ 1 0.5
function ctf:utility/startsign {line1:"",line2:"Start game",line3:"",color:"green"}
