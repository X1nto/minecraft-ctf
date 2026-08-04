$scoreboard players operation @s cdSeconds = @s $(id)Timer
scoreboard players operation @s cdSeconds %= #TWENTY NUMBERS
$execute if score @s cdSeconds matches 1 run function ctf:utility/cooldownlabel {id:"$(id)",cooldown:$(cooldown),slot:"$(slot)"}
