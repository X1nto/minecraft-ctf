$kill @e[type=armor_stand,name=RedPool,tag=map.$(map)]
$summon armor_stand ~ ~ ~ {Marker:1b,Invisible:1b,CustomName:"RedPool",Tags:["ctfarena","map.$(map)"]}
$tellraw @s [{"text":"Placed "},{"text":"RedPool","color":"red"},{"text":" for map "},{"text":"$(map)","color":"gold"}]
