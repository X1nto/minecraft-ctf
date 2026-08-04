$scoreboard players set @s cdLvl $(cooldown)
$scoreboard players operation @s cdLvl -= @s $(id)CD
scoreboard players operation @s cdLvl += #NINETEEN NUMBERS
scoreboard players operation @s cdLvl /= #TWENTY NUMBERS
execute store result storage ctf:macro lvl int 1 run scoreboard players get @s cdLvl
function ctf:utility/setxp with storage ctf:macro
