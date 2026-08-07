$scoreboard players set @s cdSeconds $(cooldown)
$scoreboard players operation @s cdSeconds -= @s $(id)Timer
scoreboard players add @s cdSeconds 20
scoreboard players operation @s cdSeconds /= #TWENTY NUMBERS
$data modify storage ctf:macro cooldown set value {id:"$(id)",slot:"$(slot)",name:'$(name)'}
execute store result storage ctf:macro cooldown.seconds int 1 run scoreboard players get @s cdSeconds
function ctf:utility/cooldownbarrier with storage ctf:macro cooldown
