execute if score #gameActive NUMBERS matches 1 run return run tellraw @s {"text":"Cannot edit the lobby during a game.","color":"red"}
kill @e[type=armor_stand,name=lobby]
summon armor_stand ~ ~ ~ {Marker:1b,Invisible:1b,CustomName:"lobby"}
tellraw @s [{"text":"Placed ","color":"green"},{"text":"lobby","color":"gold"},{"text":" marker (lobby spawn, game-state flag, end-of-round return point).","color":"green"}]
