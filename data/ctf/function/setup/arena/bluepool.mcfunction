$kill @e[type=armor_stand,name=BluePool,tag=map.$(map)]
$summon armor_stand ~ ~ ~ {Marker:1b,Invisible:1b,CustomName:"BluePool",Tags:["ctfarena","map.$(map)"]}
$tellraw @s [{"text":"Placed "},{"text":"BluePool","color":"blue"},{"text":" for map "},{"text":"$(map)","color":"gold"}]
