scoreboard players operation @s respawnSeconds = @s respawnTime
scoreboard players operation @s respawnSeconds %= #TWENTY NUMBERS
execute if score @s respawnSeconds matches 0 run function ctf:respawn/announce
