$scoreboard players add $(team) SCOREBOARD 1
$tag @a[tag=has$(enemy)Flag,distance=..0.5] remove has$(enemy)Flag
$execute as @a[team=$(team)] at @s run playsound minecraft:entity.player.levelup master @s ~ ~ ~ 1 1
$execute as @a[team=$(enemy)] at @s run playsound minecraft:entity.ender_dragon.growl master @s ~ ~ ~ 1 0.5
