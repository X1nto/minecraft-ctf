# stat, timer, cooldown, hotbar_slot, item.
$execute as $(target) run scoreboard players add @s[scores={$(id)Stat=1..}] $(id)Timer 1
$execute as $(target) run scoreboard players set @s[scores={$(id)Timer=$(cooldown)..}] $(id)Stat 0
$execute as $(target) run scoreboard players set @s[scores={$(id)Timer=$(cooldown)..}] $(id)Timer 0

$execute as $(target) run scoreboard players set @s $(id)TimerSeconds $(cooldown)
$execute as $(target) run scoreboard players operation @s $(id)TimerSeconds -= @s $(id)Timer
$execute as $(target) run scoreboard players operation @s $(id)TimerSeconds += #TWENTY NUMBERS
$execute as $(target) run scoreboard players operation @s $(id)TimerSeconds /= #TWENTY NUMBERS

$execute as $(target) run execute if score @s $(id)Stat = #ZERO NUMBERS run item replace entity @s $(slot) with $(item) 1

$execute as $(target) run execute if score @s $(id)Stat >= #ONE NUMBERS run loot replace entity @s $(slot) loot {pools:[{rolls:1,entries:[{type:"minecraft:item",name:"barrier",functions:[{function:"minecraft:set_name",entity:"this",name:{score:{objective:"$(id)TimerSeconds",name:"@s"}}}]}]}]}