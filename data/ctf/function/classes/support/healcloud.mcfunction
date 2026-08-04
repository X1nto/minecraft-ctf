execute store success score @s teamBlue run execute on origin if entity @s[team=Blue]
execute store success score @s teamRed run execute on origin if entity @s[team=Red]
execute at @s if score @s teamBlue matches 1 run summon marker ~ ~ ~ {Tags:["ctfheal","healBlue"],CustomName:"BlueHeal"}
execute at @s if score @s teamRed matches 1 run summon marker ~ ~ ~ {Tags:["ctfheal","healRed"],CustomName:"RedHeal"}
