effect give @a[tag=Cavalier,tag=ingame] minecraft:slowness 1 0 true
execute as @a[scores={sneak=1..},tag=Cavalier,tag=ingame,tag=!overhealcd,gamemode=adventure] run function ctf:classes/cavalier/overheal
function ctf:utility/abilitycooldown {id:overheal, class:Cavalier, duration:0, cooldown:400}
scoreboard players set @a[scores={sneak=1..},tag=Cavalier,tag=ingame] sneak 0
