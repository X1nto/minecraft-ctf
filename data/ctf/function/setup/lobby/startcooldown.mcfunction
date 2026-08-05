execute if score #gameActive NUMBERS matches 1 run return run tellraw @s {"text":"Cannot edit the lobby during a game.","color":"red"}
kill @e[type=armor_stand,name=startcooldown]
summon armor_stand ~ ~ ~ {Marker:1b,Invisible:1b,CustomName:"startcooldown"}
tellraw @s [{"text":"Placed lobby ","color":"green"},{"text":"startcooldown","color":"gold"},{"text":" marker (drives the pre-game countdown).","color":"green"}]
