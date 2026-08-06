weather rain 900
execute if entity @e[type=marker,tag=corner2,tag=active] if data entity @e[type=marker,tag=corner1,tag=active,limit=1] data.snow run return run function ctf:utility/setbiome {variant:"snow"}
weather clear 900
