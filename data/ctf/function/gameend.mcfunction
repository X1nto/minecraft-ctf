tag @e[limit=1,type=armor_stand,name="lobby"] remove started
tp @a[tag=ingame] @e[type=armor_stand,name="lobby",limit=1]
execute if score Blue SCOREBOARD > Red SCOREBOARD run title @a title ["",{"text":"Blue ","color":"dark_blue"},{"text":"team wins!","color":"green"}]
execute if score Red SCOREBOARD > Blue SCOREBOARD run title @a title ["",{"text":"Red ","color":"red"},{"text":"team wins!","color":"green"}]
execute if score Blue SCOREBOARD = Red SCOREBOARD run title @a title {"text":"Tie!","color":"green"}
team join nopvp @a
tag @a[tag=ingame] remove ingame
tag @a[tag=invisactive] remove invisactive
tag @a[tag=inviscd] remove inviscd
tag @a[tag=knockbackcd] remove knockbackcd
tag @a[tag=overhealcd] remove overhealcd
tag @a[tag=hasBlueFlag] remove hasBlueFlag
tag @a[tag=hasRedFlag] remove hasRedFlag
function ctf:flag
effect clear @a
bossbar set ctf:timer visible false
clear @a
gamemode adventure @a
scoreboard objectives setdisplay sidebar
scoreboard objectives setdisplay below_name
function ctf:utility/startsign {line1:"",line2:"Start game",line3:"",color:"green"}
effect give @a minecraft:instant_health 1 1 true 