execute unless entity @e[type=marker,tag=corner2,tag=active] run return 0
$execute unless data entity @e[type=marker,tag=corner1,tag=active,limit=1] data.$(variant) run return 0
$data modify storage ctf:arena args.biome set from entity @e[type=marker,tag=corner1,tag=active,limit=1] data.$(variant)
execute store result storage ctf:arena args.x1 int 1 run data get entity @e[type=marker,tag=corner1,tag=active,limit=1] Pos[0]
execute store result storage ctf:arena args.y1 int 1 run data get entity @e[type=marker,tag=corner1,tag=active,limit=1] Pos[1]
execute store result storage ctf:arena args.z1 int 1 run data get entity @e[type=marker,tag=corner1,tag=active,limit=1] Pos[2]
execute store result storage ctf:arena args.x2 int 1 run data get entity @e[type=marker,tag=corner2,tag=active,limit=1] Pos[0]
execute store result storage ctf:arena args.y2 int 1 run data get entity @e[type=marker,tag=corner2,tag=active,limit=1] Pos[1]
execute store result storage ctf:arena args.z2 int 1 run data get entity @e[type=marker,tag=corner2,tag=active,limit=1] Pos[2]
function ctf:utility/fillbiome with storage ctf:arena args
