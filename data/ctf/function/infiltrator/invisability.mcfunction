execute as @a[scores={sneak=1..},tag=Infiltrator,tag=!sneakcd,tag=ingame] run tag @s add sneakactive
execute as @a[tag=sneakactive,tag=Infiltrator,scores={DamageDealt=1..}] run scoreboard players set @s sneakTime 60
function ctf:utility/abilitycooldown {id:sneak, class:Infiltrator, duration:60, cooldown:300}
scoreboard players set @a[tag=Infiltrator,tag=!sneakactive] DamageDealt 0
scoreboard players set @a[tag=Infiltrator,tag=!sneakactive] sneak 0
effect give @a[tag=sneakactive] invisibility 1 1 true
effect clear @a[tag=!sneakactive] invisibility
execute at @a[tag=sneakactive,team=Blue] run particle dust{color: 170, scale:2} ~ ~-0.5 ~ 0.1 0.1 0.1 1 1 force
execute at @a[tag=sneakactive,team=Red] run particle dust{color: 11141120, scale:2} ~ ~-0.5 ~ 0.1 0.1 0.1 1 1 force
