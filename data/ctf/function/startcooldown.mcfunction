scoreboard players operation #startmod NUMBERS = startcooldown tick
scoreboard players operation #startmod NUMBERS %= #TWENTY NUMBERS
execute if score #startmod NUMBERS matches 0 if score startcooldown tick matches 20.. run function ctf:startcooldown/label
scoreboard players remove startcooldown tick 1
execute if score startcooldown tick matches ..0 run function ctf:gamestart
execute if score startcooldown tick matches ..0 run tag @e[type=armor_stand,name=startcooldown,limit=1] remove startedcooldown
