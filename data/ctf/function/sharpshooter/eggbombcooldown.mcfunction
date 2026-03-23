item replace entity @a[tag=Sharpshooter,scores={eggbombStat=0}] hotbar.1 with minecraft:egg
item replace entity @a[tag=Sharpshooter,scores={eggbombStat=1..}] hotbar.1 with minecraft:barrier
scoreboard players add @a[scores={eggbombStat=1..},tag=Sharpshooter] eggbombTimer 1
scoreboard players set @a[scores={eggbombStat=1..,eggbombTimer=100..},tag=Sharpshooter] eggbombStat 0
scoreboard players set @a[scores={eggbombStat=0},tag=Sharpshooter] eggbombTimer 0
scoreboard players set @a[tag=!Sharpshooter] eggbombStat 0
scoreboard players set @a[tag=!Sharpshooter] eggbombTimer 0