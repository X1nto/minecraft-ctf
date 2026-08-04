execute as @a[scores={sneak=1..},tag=Infiltrator,tag=!inviscd,tag=ingame,gamemode=adventure] run tag @s add invisactive
execute as @a[tag=invisactive,tag=Infiltrator,scores={DamageDealt=1..}] run scoreboard players set @s invisTime 60
function ctf:utility/abilitycooldown {id:invis, class:Infiltrator, duration:60, cooldown:300}
scoreboard players set @a[tag=Infiltrator,tag=!invisactive] DamageDealt 0
scoreboard players set @a[tag=Infiltrator,tag=!invisactive] sneak 0
effect give @a[tag=invisactive] invisibility 1 1 true
effect clear @a[tag=!invisactive] invisibility
execute at @a[tag=invisactive,team=Blue] run particle dust{color: 170, scale:2} ~ ~-0.5 ~ 0.1 0.1 0.1 1 1 force
execute at @a[tag=invisactive,team=Red] run particle dust{color: 11141120, scale:2} ~ ~-0.5 ~ 0.1 0.1 0.1 1 1 force
