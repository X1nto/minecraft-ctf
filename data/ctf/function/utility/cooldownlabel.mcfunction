$scoreboard players set @s cdSeconds $(cooldown)
$scoreboard players operation @s cdSeconds -= @s $(id)Timer
scoreboard players add @s cdSeconds 20
scoreboard players operation @s cdSeconds /= #TWENTY NUMBERS
$loot replace entity @s $(slot) loot ctf:cooldown_display
