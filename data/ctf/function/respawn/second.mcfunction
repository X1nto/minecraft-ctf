scoreboard players operation @s respawnSeconds = @s respawnTime
scoreboard players operation @s respawnSeconds %= #TWENTY NUMBERS
execute if score @s respawnSeconds matches 1 run function ctf:respawn/announce
