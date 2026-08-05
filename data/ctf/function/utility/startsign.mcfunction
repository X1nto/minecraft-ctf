execute as @e[type=marker,tag=startsign] at @s unless block ~ ~ ~ #minecraft:all_signs run kill @s
$execute as @e[type=marker,tag=startsign] at @s run data modify block ~ ~ ~ front_text.messages[0].text set value "$(line1)"
$execute as @e[type=marker,tag=startsign] at @s run data modify block ~ ~ ~ front_text.messages[0].color set value "$(color)"
$execute as @e[type=marker,tag=startsign] at @s run data modify block ~ ~ ~ front_text.messages[1].text set value "$(line2)"
$execute as @e[type=marker,tag=startsign] at @s run data modify block ~ ~ ~ front_text.messages[1].color set value "$(color)"
$execute as @e[type=marker,tag=startsign] at @s run data modify block ~ ~ ~ front_text.messages[3] set value {text:"$(line3)",color:"red",bold:true}
