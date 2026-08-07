tag @s add ctf_arrow
tag @s add ctf_arrowinit
execute on origin if entity @s[team=Red] run tag @e[type=arrow,tag=ctf_arrowinit,limit=1] add ctf_vsblue
execute on origin if entity @s[team=Blue] run tag @e[type=arrow,tag=ctf_arrowinit,limit=1] add ctf_vsred
tag @s remove ctf_arrowinit
