effect give @a[tag=Cavalier,tag=ingame] minecraft:slowness 1 0 true
execute as @a[tag=Cavalier,tag=ingame,tag=!overhealcd,gamemode=adventure,predicate=ctf:is_sneaking] run function ctf:classes/cavalier/overheal
function ctf:utility/abilitycooldown {id:overheal, class:Cavalier, duration:0, cooldown:400}
