bossbar set minecraft:1 players @a
execute if entity @e[limit=1,type=armor_stand,name=start,tag=started] run scoreboard players add tick tick 1
execute if entity @e[limit=1,type=armor_stand,name=start,tag=started] run scoreboard players remove bossbar tick 1
execute if score tick tick matches 20 run function ctf:addrem/add1rem20
execute if score sec tick matches -1 run function ctf:addrem/add1rem60
execute store result bossbar minecraft:1 value run scoreboard players get bossbar tick
bossbar set minecraft:1 color green
execute if score sec tick matches ..9 run bossbar set minecraft:1 name [{"text":"Time left ", "color": "green"},{"score":{"objective":"tick","name":"min"}},{"text":":"},{"text":"0"},{"score":{"objective":"tick","name":"sec"}}]
execute if score sec tick matches 10.. run bossbar set minecraft:1 name [{"text":"Time left ", "color": "green"},{"score":{"objective":"tick","name":"min"}},{"text":":"},{"score":{"objective":"tick","name":"sec"}}]
execute if entity @e[tag=started,name=start] if score min tick matches 0 if score sec tick matches 0 run function ctf:gameend