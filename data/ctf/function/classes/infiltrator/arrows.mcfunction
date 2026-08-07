execute as @e[type=arrow,tag=ctf_pierced,nbt={inGround:1b}] run data merge entity @s {PierceLevel:0b}
tag @e[type=arrow,tag=ctf_pierced,nbt={inGround:1b}] remove ctf_pierced
kill @e[type=arrow,tag=ctf_pierced]
execute as @e[type=arrow,tag=!ctf_arrow] at @s run function ctf:classes/infiltrator/arrows/init
execute as @e[type=arrow,tag=ctf_vsred,nbt={inGround:0b}] at @s if entity @a[tag=ingame,tag=Infiltrator,team=Red,distance=..8] run function ctf:classes/infiltrator/arrows/scan
execute as @e[type=arrow,tag=ctf_vsblue,nbt={inGround:0b}] at @s if entity @a[tag=ingame,tag=Infiltrator,team=Blue,distance=..8] run function ctf:classes/infiltrator/arrows/scan
