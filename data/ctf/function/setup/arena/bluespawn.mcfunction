$kill @e[type=armor_stand,name=BlueSpawn,tag=map.$(map)]
$summon armor_stand ~ ~ ~ {Marker:1b,Invisible:1b,CustomName:"BlueSpawn",Tags:["ctfarena","map.$(map)"]}
$data modify entity @e[type=armor_stand,name=BlueSpawn,tag=map.$(map),limit=1] Rotation[0] set from entity @s Rotation[0]
$tellraw @s [{"text":"Placed "},{"text":"BlueSpawn","color":"blue"},{"text":" for map "},{"text":"$(map)","color":"gold"}]
