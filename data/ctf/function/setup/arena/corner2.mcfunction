$execute unless entity @e[type=marker,tag=corner2,tag=map.$(map)] run summon marker ~ ~ ~ {Tags:["ctfarena","corner2","map.$(map)"]}
$tp @e[type=marker,tag=corner2,tag=map.$(map),limit=1] ~ ~ ~
$tellraw @s [{"text":"Placed "},{"text":"Corner2","color":"aqua"},{"text":" for map "},{"text":"$(map)","color":"gold"}]
