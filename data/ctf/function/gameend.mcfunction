tag @e[limit=1,type=armor_stand,name="start"] remove started
tp @a[tag=ingame] @e[type=armor_stand,name="start",limit=1]
execute if score Blue SCOREBOARD > Red SCOREBOARD run title @a title ["",{"text":"Blue ","color":"dark_blue"},{"text":"team wins!","color":"green"}]
execute if score Red SCOREBOARD > Blue SCOREBOARD run title @a title ["",{"text":"Red ","color":"red"},{"text":"team wins!","color":"green"}]
execute if score Blue SCOREBOARD = Red SCOREBOARD run title @a title {"text":"Tie!","color":"green"}
team join nopvp @a
tag @a[tag=ingame] remove ingame
tag @a[tag=invs] remove invs
tag @a[tag=incd] remove incd
effect clear @a
bossbar set minecraft:1 visible false