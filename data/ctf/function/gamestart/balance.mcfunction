execute unless entity @a[team=!Blue,team=!Red] run return 0
execute store result score #blue NUMBERS if entity @a[team=Blue]
execute store result score #red NUMBERS if entity @a[team=Red]
execute if score #blue NUMBERS <= #red NUMBERS run team join Blue @r[team=!Blue,team=!Red]
execute if score #blue NUMBERS > #red NUMBERS run team join Red @r[team=!Blue,team=!Red]
function ctf:gamestart/balance
