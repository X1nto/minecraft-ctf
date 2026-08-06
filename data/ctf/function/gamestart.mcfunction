execute unless entity @e[type=armor_stand,name="BluePool",tag=active] run return run tellraw @a {"text":"Map not selected","color":"red"}
function ctf:gamestart/balance
tp @a[team=Red] @e[type=armor_stand,name=RedPool,tag=active,limit=1]
tp @a[team=Blue] @e[type=armor_stand,name=BluePool,tag=active,limit=1]
function ctf:gamestart/atmosphere
tag @e[type=armor_stand,name=lobby] add started
scoreboard players set bossbar tick 12000
scoreboard players set sec tick 0
scoreboard players set min tick 10
scoreboard players set Blue SCOREBOARD 0
scoreboard players set Red SCOREBOARD 0
scoreboard objectives setdisplay sidebar SCOREBOARD
scoreboard objectives setdisplay below_name Health
bossbar set ctf:timer visible true
function ctf:utility/startsign {line1:"Game in",line2:"progress",line3:"",color:"red"}
clear @a
