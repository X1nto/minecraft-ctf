$tag @p[distance=..1,team=$(thief),gamemode=adventure] add has$(owner)Flag
$execute as @a[team=$(owner)] at @s run playsound minecraft:block.bell.use master @s ~ ~ ~ 1 1
$execute as @a[team=$(thief)] at @s run playsound minecraft:block.note_block.pling master @s ~ ~ ~ 1 2
$title @a[team=$(owner)] actionbar {"text":"Your flag has been taken!","color":"red","bold":true}
$title @a[team=$(thief)] actionbar {"text":"Your team took the enemy flag!","color":"green"}
