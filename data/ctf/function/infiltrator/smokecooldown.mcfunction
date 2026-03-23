item replace entity @a[tag=Infiltrator,tag=ingame,scores={smokeStat=0}] hotbar.1 with minecraft:snowball[minecraft:item_name={"text":"Smoke Bomb","italic":false,"color":"dark_gray","bold":true}] 1
item replace entity @a[tag=Infiltrator,tag=ingame,scores={smokeStat=1..,smokeTimer=0..20}] hotbar.1 with minecraft:barrier[minecraft:item_name={"text":"20","italic":false,"color":"dark_green","bold":true}] 1
item replace entity @a[tag=Infiltrator,tag=ingame,scores={smokeStat=1..,smokeTimer=21..40}] hotbar.1 with minecraft:barrier[minecraft:item_name={"text":"19","italic":false,"color":"dark_green","bold":true}] 1
item replace entity @a[tag=Infiltrator,tag=ingame,scores={smokeStat=1..,smokeTimer=41..60}] hotbar.1 with minecraft:barrier[minecraft:item_name={"text":"18","italic":false,"color":"dark_green","bold":true}] 1
item replace entity @a[tag=Infiltrator,tag=ingame,scores={smokeStat=1..,smokeTimer=61..80}] hotbar.1 with minecraft:barrier[minecraft:item_name={"text":"17","italic":false,"color":"dark_green","bold":true}] 1
item replace entity @a[tag=Infiltrator,tag=ingame,scores={smokeStat=1..,smokeTimer=81..100}] hotbar.1 with minecraft:barrier[minecraft:item_name={"text":"16","italic":false,"color":"dark_green","bold":true}] 1
item replace entity @a[tag=Infiltrator,tag=ingame,scores={smokeStat=1..,smokeTimer=101..120}] hotbar.1 with minecraft:barrier[minecraft:item_name={"text":"15","italic":false,"color":"dark_green","bold":true}] 1
item replace entity @a[tag=Infiltrator,tag=ingame,scores={smokeStat=1..,smokeTimer=121..140}] hotbar.1 with minecraft:barrier[minecraft:item_name={"text":"14","italic":false,"color":"dark_green","bold":true}] 1
item replace entity @a[tag=Infiltrator,tag=ingame,scores={smokeStat=1..,smokeTimer=141..160}] hotbar.1 with minecraft:barrier[minecraft:item_name={"text":"13","italic":false,"color":"dark_green","bold":true}] 1
item replace entity @a[tag=Infiltrator,tag=ingame,scores={smokeStat=1..,smokeTimer=161..180}] hotbar.1 with minecraft:barrier[minecraft:item_name={"text":"12","italic":false,"color":"dark_green","bold":true}] 1
item replace entity @a[tag=Infiltrator,tag=ingame,scores={smokeStat=1..,smokeTimer=181..200}] hotbar.1 with minecraft:barrier[minecraft:item_name={"text":"11","italic":false,"color":"dark_green","bold":true}] 1
item replace entity @a[tag=Infiltrator,tag=ingame,scores={smokeStat=1..,smokeTimer=201..220}] hotbar.1 with minecraft:barrier[minecraft:item_name={"text":"10","italic":false,"color":"dark_green","bold":true}] 1
item replace entity @a[tag=Infiltrator,tag=ingame,scores={smokeStat=1..,smokeTimer=221..240}] hotbar.1 with minecraft:barrier[minecraft:item_name={"text":"9","italic":false,"color":"dark_green","bold":true}] 1
item replace entity @a[tag=Infiltrator,tag=ingame,scores={smokeStat=1..,smokeTimer=241..260}] hotbar.1 with minecraft:barrier[minecraft:item_name={"text":"8","italic":false,"color":"dark_green","bold":true}] 1
item replace entity @a[tag=Infiltrator,tag=ingame,scores={smokeStat=1..,smokeTimer=261..280}] hotbar.1 with minecraft:barrier[minecraft:item_name={"text":"7","italic":false,"color":"dark_green","bold":true}] 1
item replace entity @a[tag=Infiltrator,tag=ingame,scores={smokeStat=1..,smokeTimer=281..300}] hotbar.1 with minecraft:barrier[minecraft:item_name={"text":"6","italic":false,"color":"dark_green","bold":true}] 1
item replace entity @a[tag=Infiltrator,tag=ingame,scores={smokeStat=1..,smokeTimer=301..320}] hotbar.1 with minecraft:barrier[minecraft:item_name={"text":"5","italic":false,"color":"dark_green","bold":true}] 1
item replace entity @a[tag=Infiltrator,tag=ingame,scores={smokeStat=1..,smokeTimer=321..340}] hotbar.1 with minecraft:barrier[minecraft:item_name={"text":"4","italic":false,"color":"dark_green","bold":true}] 1
item replace entity @a[tag=Infiltrator,tag=ingame,scores={smokeStat=1..,smokeTimer=341..360}] hotbar.1 with minecraft:barrier[minecraft:item_name={"text":"3","italic":false,"color":"dark_green","bold":true}] 1
item replace entity @a[tag=Infiltrator,tag=ingame,scores={smokeStat=1..,smokeTimer=361..380}] hotbar.1 with minecraft:barrier[minecraft:item_name={"text":"2","italic":false,"color":"dark_green","bold":true}] 1
item replace entity @a[tag=Infiltrator,tag=ingame,scores={smokeStat=1..,smokeTimer=381..400}] hotbar.1 with minecraft:barrier[minecraft:item_name={"text":"1","italic":false,"color":"dark_green","bold":true}] 1
scoreboard players add @a[scores={smokeStat=1..},tag=Infiltrator] smokeTimer 1
scoreboard players set @a[scores={smokeStat=1..,smokeTimer=400..},tag=Infiltrator] smokeStat 0
scoreboard players set @a[scores={smokeStat=0},tag=Infiltrator] smokeTimer 0
scoreboard players set @a[tag=!Infiltrator] smokeStat 0
scoreboard players set @a[tag=!Infiltrator] smokeTimer 0
clear @a[tag=!Infiltrator] minecraft:snowball
clear @a[tag=!ingame] minecraft:snowball
scoreboard players set @a[tag=!ingame] smokeTimer 0
scoreboard players set @a[tag=!ingame] smokeStat 0