execute if score #gameActive NUMBERS matches 1 run return 0
team join nopvp @s
tag @s remove ingame
execute at @e[type=armor_stand,name=lobby] run tp @s ~ ~ ~
function ctf:utility/resetstate
