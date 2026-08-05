execute if score #gameActive NUMBERS matches 1 run return run tellraw @s {"text":"Cannot edit the lobby during a game.","color":"red"}
kill @e[type=armor_stand,name=start]
summon armor_stand ~ ~ ~ {Marker:1b,Invisible:1b,CustomName:"start"}
tellraw @s [{"text":"Placed lobby ","color":"green"},{"text":"start","color":"gold"},{"text":" marker (game-state flag and end-of-round return point).","color":"green"}]
