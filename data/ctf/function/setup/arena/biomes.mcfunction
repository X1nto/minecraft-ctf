$execute unless entity @e[type=marker,tag=corner1,tag=map.$(map)] run return run tellraw @s {"text":"Place Corner1 for that map first","color":"red"}
$data merge entity @e[type=marker,tag=corner1,tag=map.$(map),limit=1] {data:{normal:"$(normal)",snow:"$(snow)"}}
$tellraw @s [{"text":"Biomes set for map "},{"text":"$(map)","color":"gold"},{"text":" - normal "},{"text":"$(normal)","color":"green"},{"text":", snow "},{"text":"$(snow)","color":"aqua"}]
