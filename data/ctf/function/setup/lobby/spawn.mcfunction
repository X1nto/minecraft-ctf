execute if score #gameActive NUMBERS matches 1 run return run tellraw @s {"text":"Cannot edit the lobby during a game.","color":"red"}
kill @e[type=armor_stand,name=spawn]
summon armor_stand ~ ~ ~ {Marker:1b,Invisible:1b,CustomName:"spawn"}
tellraw @s [{"text":"Placed lobby ","color":"green"},{"text":"spawn","color":"gold"},{"text":" marker (respawn point between games).","color":"green"}]
