execute as @a[tag=Infiltrator,tag=!inviscd,tag=ingame,gamemode=adventure,predicate=ctf:is_sneaking] run tag @s add invisactive
function ctf:utility/abilitycooldown {id:invis, class:Infiltrator, duration:60, cooldown:300}
effect give @a[tag=invisactive] invisibility 1 1 true
effect clear @a[tag=!invisactive] invisibility
execute at @a[tag=invisactive,team=Blue] run particle dust{color: 170, scale:2} ~ ~-0.5 ~ 0.1 0.1 0.1 1 1 force
execute at @a[tag=invisactive,team=Red] run particle dust{color: 11141120, scale:2} ~ ~-0.5 ~ 0.1 0.1 0.1 1 1 force
