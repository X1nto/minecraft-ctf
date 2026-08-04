execute as @e[type=snowball,tag=!ctfsmoke] run function ctf:classes/infiltrator/tagsmoke
execute as @e[type=snowball,tag=ctfsmoke] at @s if function ctf:classes/infiltrator/impact run function ctf:classes/infiltrator/burst
scoreboard players add @e[type=marker,tag=ctfsmoke] smktm 1
execute at @e[type=marker,tag=smokeBlue] run particle dust{color: 170, scale:4} ~ ~ ~ 1.5 1.5 1.5 2 20 force
execute at @e[type=marker,tag=smokeRed] run particle dust{color: 11141120, scale:4} ~ ~ ~ 1.5 1.5 1.5 2 20 force
execute at @e[type=marker,tag=smokeBlue] run effect give @a[distance=..4.5,team=Red] minecraft:blindness 1 0
execute at @e[type=marker,tag=smokeRed] run effect give @a[distance=..4.5,team=Blue] minecraft:blindness 1 0
kill @e[type=marker,tag=ctfsmoke,scores={smktm=100..}]
