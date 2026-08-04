scoreboard players set @s respawnSeconds 219
scoreboard players operation @s respawnSeconds -= @s respawnTime
scoreboard players operation @s respawnSeconds /= #TWENTY NUMBERS
title @s title {"score":{"name":"@s","objective":"respawnSeconds"},"color":"green"}
execute at @s run playsound minecraft:entity.experience_orb.pickup master @s ~ ~ ~ 1 1
