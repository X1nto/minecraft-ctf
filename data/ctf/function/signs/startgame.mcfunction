execute if block ~ ~ ~ #minecraft:all_signs unless entity @e[type=marker,tag=startsign,distance=..1] run summon marker ~ ~ ~ {Tags:["startsign"],CustomName:"StartSign"}
execute if score #gameActive NUMBERS matches 1 run return run tellraw @s {"text":"A game is already running.","color":"red"}
execute if score startcountdown tick matches 1.. run return 0
execute unless entity @e[type=armor_stand,name="BluePool",tag=active] run return run tellraw @s {"text":"Map not selected.","color":"red"}
scoreboard players set startcountdown tick 200
