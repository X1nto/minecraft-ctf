gamemode spectator @a[scores={Death=1..}]
scoreboard players add @a[scores={Death=1..}] respawnTime 1
gamemode adventure @a[scores={respawnTime=200..}]
execute if entity @e[type=armor_stand,name=start,tag=started] run tp @a[team=Red,scores={respawnTime=200..}] @e[type=armor_stand,name=RedSpawn,limit=1]
execute if entity @e[type=armor_stand,name=start,tag=started] run tp @a[team=Blue,scores={respawnTime=200..}] @e[type=armor_stand,name=BlueSpawn,limit=1]
title @a[scores={respawnTime=20}] title {"text":"10","color":"green"}
title @a[scores={respawnTime=40}] title {"text":"9","color":"green"}
title @a[scores={respawnTime=60}] title {"text":"8","color":"green"}
title @a[scores={respawnTime=80}] title {"text":"7","color":"green"}
title @a[scores={respawnTime=100}] title {"text":"6","color":"green"}
title @a[scores={respawnTime=120}] title {"text":"5","color":"green"}
title @a[scores={respawnTime=140}] title {"text":"4","color":"green"}
title @a[scores={respawnTime=160}] title {"text":"3","color":"green"}
title @a[scores={respawnTime=180}] title {"text":"2","color":"green"}
title @a[scores={respawnTime=200}] title {"text":"1","color":"green"}
execute as @a[scores={respawnTime=1}] at @a[scores={respawnTime=1}] run playsound minecraft:entity.experience_orb.pickup master @s ~ ~ ~ 1 1
execute as @a[scores={respawnTime=21}] at @a[scores={respawnTime=21}] run playsound minecraft:entity.experience_orb.pickup master @s ~ ~ ~ 1 1
execute as @a[scores={respawnTime=41}] at @a[scores={respawnTime=41}] run playsound minecraft:entity.experience_orb.pickup master @s ~ ~ ~ 1 1
execute as @a[scores={respawnTime=61}] at @a[scores={respawnTime=61}] run playsound minecraft:entity.experience_orb.pickup master @s ~ ~ ~ 1 1
execute as @a[scores={respawnTime=81}] at @a[scores={respawnTime=81}] run playsound minecraft:entity.experience_orb.pickup master @s ~ ~ ~ 1 1
execute as @a[scores={respawnTime=101}] at @a[scores={respawnTime=101}] run playsound minecraft:entity.experience_orb.pickup master @s ~ ~ ~ 1 1
execute as @a[scores={respawnTime=121}] at @a[scores={respawnTime=121}] run playsound minecraft:entity.experience_orb.pickup master @s ~ ~ ~ 1 1
execute as @a[scores={respawnTime=141}] at @a[scores={respawnTime=141}] run playsound minecraft:entity.experience_orb.pickup master @s ~ ~ ~ 1 1
execute as @a[scores={respawnTime=161}] at @a[scores={respawnTime=161}] run playsound minecraft:entity.experience_orb.pickup master @s ~ ~ ~ 1 1
execute as @a[scores={respawnTime=181}] at @a[scores={respawnTime=181}] run playsound minecraft:entity.experience_orb.pickup master @s ~ ~ ~ 1 1
execute as @a[scores={respawnTime=200}] at @a[scores={respawnTime=200}] run playsound minecraft:entity.experience_orb.pickup master @s ~ ~ ~ 1 1
scoreboard players set @a[gamemode=adventure] respawnTime 0
scoreboard players set @a[gamemode=adventure] Death 0
execute at @e[type=armor_stand,name=BlueSpawn] if entity @e[type=armor_stand,name=start,tag=started] run spawnpoint @a[team=Blue] ~ ~ ~
execute at @e[type=armor_stand,name=RedSpawn] if entity @e[type=armor_stand,name=start,tag=started] run spawnpoint @a[team=Red] ~ ~ ~
execute at @e[type=armor_stand,name=spawn] if entity @e[type=armor_stand,name=start,tag=!started] run spawnpoint @a ~ ~ ~