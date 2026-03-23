execute as @a[scores={sneak=1..},tag=Infiltrator,tag=!incd,tag=ingame] run tag @s add invs
scoreboard players add @a[tag=invs,tag=Infiltrator] sneakTime 1
tag @a[scores={sneakTime=60..}] add incd
tag @a[tag=incd] remove invs
scoreboard players set @a[tag=incd,tag=Infiltrator] sneakTime 0
scoreboard players add @a[tag=incd,tag=Infiltrator] sneakCD 1
scoreboard players set @a[scores={sneakCD=300..}] sneak 0
tag @a[scores={sneakCD=300..}] remove incd
scoreboard players set @a[scores={sneakCD=300..}] sneakCD 0
scoreboard players set @a[tag=!invs] DamageDealt 0
execute as @a[tag=invs,tag=Infiltrator,scores={DamageDealt=1..}] run scoreboard players set @s sneakTime 60
scoreboard players set @a[tag=!invs] smokeStat2 0
execute as @a[tag=invs,tag=smokeStat2] run scoreboard players set @s sneakTime 60
effect give @a[tag=invs] invisibility 1 1 true
effect clear @a[tag=!invs] invisibility
execute at @a[tag=invs,team=Blue] run particle dust{color: 170, scale:2} ~ ~-0.5 ~ 0.1 0.1 0.1 1 1 force
execute at @a[tag=invs,team=Red] run particle dust{color: 11141120, scale:2} ~ ~-0.5 ~ 0.1 0.1 0.1 1 1 force

execute as @a[tag=Infiltrator,scores={sneakCD=300}] run xp set @s 0 levels
execute as @a[tag=Infiltrator,scores={sneakCD=280}] run xp set @s 1 levels
execute as @a[tag=Infiltrator,scores={sneakCD=260}] run xp set @s 2 levels
execute as @a[tag=Infiltrator,scores={sneakCD=240}] run xp set @s 3 levels
execute as @a[tag=Infiltrator,scores={sneakCD=220}] run xp set @s 4 levels
execute as @a[tag=Infiltrator,scores={sneakCD=200}] run xp set @s 5 levels
execute as @a[tag=Infiltrator,scores={sneakCD=180}] run xp set @s 6 levels
execute as @a[tag=Infiltrator,scores={sneakCD=160}] run xp set @s 7 levels
execute as @a[tag=Infiltrator,scores={sneakCD=140}] run xp set @s 8 levels
execute as @a[tag=Infiltrator,scores={sneakCD=120}] run xp set @s 9 levels
execute as @a[tag=Infiltrator,scores={sneakCD=100}] run xp set @s 10 levels
execute as @a[tag=Infiltrator,scores={sneakCD=80}] run xp set @s 11 levels
execute as @a[tag=Infiltrator,scores={sneakCD=60}] run xp set @s 12 levels
execute as @a[tag=Infiltrator,scores={sneakCD=40}] run xp set @s 13 levels
execute as @a[tag=Infiltrator,scores={sneakCD=20}] run xp set @s 14 levels
execute as @a[tag=Infiltrator,tag=incd,scores={sneakCD=0..19}] run xp set @s 15 levels
execute as @a[tag=Infiltrator,tag=!incd,scores={sneakCD=0..19}] run xp set @s 0 levels