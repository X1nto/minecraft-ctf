bossbar set ctf:timer players @a
scoreboard players operation sec tick = bossbar tick
scoreboard players operation sec tick /= #TWENTY NUMBERS
scoreboard players operation min tick = sec tick
scoreboard players operation min tick /= #SIXTY NUMBERS
scoreboard players operation sec tick %= #SIXTY NUMBERS
execute if score sec tick matches ..9 run bossbar set ctf:timer name [{"text":"Time left ", "color": "green"},{"score":{"objective":"tick","name":"min"}},{"text":":"},{"text":"0"},{"score":{"objective":"tick","name":"sec"}}]
execute if score sec tick matches 10.. run bossbar set ctf:timer name [{"text":"Time left ", "color": "green"},{"score":{"objective":"tick","name":"min"}},{"text":":"},{"score":{"objective":"tick","name":"sec"}}]
