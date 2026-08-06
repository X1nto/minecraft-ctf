$execute unless entity @e[type=marker,tag=corner1,tag=map.$(map)] run summon marker ~ ~ ~ {Tags:["ctfarena","corner1","map.$(map)"]}
$tp @e[type=marker,tag=corner1,tag=map.$(map),limit=1] ~ ~ ~
$tellraw @s [{"text":"Placed "},{"text":"Corner1","color":"aqua"},{"text":" for map "},{"text":"$(map)","color":"gold"}]
