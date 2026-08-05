scoreboard players operation #startmod NUMBERS = startcountdown tick
scoreboard players operation #startmod NUMBERS %= #TWENTY NUMBERS
execute if score #startmod NUMBERS matches 0 if score startcountdown tick matches 20.. run function ctf:startcountdown/label
scoreboard players remove startcountdown tick 1
execute if score startcountdown tick matches ..0 run function ctf:gamestart
