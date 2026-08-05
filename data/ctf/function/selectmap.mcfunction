execute if score #gameActive NUMBERS matches 1 run return run tellraw @s {"text":"Wait for the game to finish","color":"red"}
$execute unless entity @e[type=armor_stand,tag=map.$(map)] run return run tellraw @s {"text":"Arena markers not found for specified map","color":"red"}
tag @e[type=armor_stand,tag=ctfarena] remove active
$tag @e[type=armor_stand,tag=map.$(map)] add active
kill @e[type=item_display,tag=ctfflag]
execute as @e[type=marker,tag=mapsign] at @s unless block ~ ~ ~ #minecraft:all_signs run kill @s
$execute if block ~ ~ ~ #minecraft:all_signs unless entity @e[type=marker,tag=mapsign,tag=map.$(map),distance=..1] run summon marker ~ ~ ~ {Tags:["mapsign","map.$(map)"]}
execute as @e[type=marker,tag=mapsign] at @s run data modify block ~ ~ ~ front_text.has_glowing_text set value 0b
$execute as @e[type=marker,tag=mapsign,tag=map.$(map)] at @s run data modify block ~ ~ ~ front_text.has_glowing_text set value 1b
$tellraw @a [{"text":"Map set to "},{"text":"$(map)","color":"gold"}]
