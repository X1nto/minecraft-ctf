execute if score startcooldown tick matches 200 run title @a title {"text":"10","color":"green"}
scoreboard players remove startcooldown tick 1
execute if score startcooldown tick matches 100 run title @a title {"text":"5","color":"green"}
execute if score startcooldown tick matches 80 run title @a title {"text":"4","color":"green"}
execute if score startcooldown tick matches 60 run title @a title {"text":"3","color":"green"}
execute if score startcooldown tick matches 40 run title @a title {"text":"2","color":"green"}
execute if entity @e[name=startcooldown,type=armor_stand,tag=startedcooldown] if score startcooldown tick matches 20 run title @a title {"text":"1","color":"green"}
execute if score startcooldown tick matches 0 run function ctf:gamestart
execute if score startcooldown tick matches 0 run tag @e[limit=1,name=startcooldown,type=armor_stand] remove startedcooldown