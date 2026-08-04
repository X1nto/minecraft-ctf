scoreboard players remove bossbar tick 1
execute store result bossbar ctf:timer value run scoreboard players get bossbar tick
scoreboard players operation #secmod NUMBERS = bossbar tick
scoreboard players operation #secmod NUMBERS %= #TWENTY NUMBERS
execute if score #secmod NUMBERS matches 0 run function ctf:bossbar/label
execute if score bossbar tick matches ..0 run function ctf:gameend
