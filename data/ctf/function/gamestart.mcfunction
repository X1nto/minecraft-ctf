function ctf:gamestart/balance
tp @a[team=Red] @e[type=armor_stand,name=RedPool,limit=1]
tp @a[team=Blue] @e[type=armor_stand,name=BluePool,limit=1]
tag @e[type=armor_stand,name=start] add started
scoreboard players set bossbar tick 12000
scoreboard players set sec tick 0
scoreboard players set min tick 10
scoreboard players set Blue SCOREBOARD 0
scoreboard players set Red SCOREBOARD 0
scoreboard objectives setdisplay sidebar SCOREBOARD
bossbar set ctf:timer visible true
clear @a
