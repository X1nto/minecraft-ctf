function ctf:utility/cooldownableitem {target: "@a[tag=ingame,tag=Sharpshooter,team=Blue]", cooldown:180, id:firework, slot:hotbar.2, itemid:"minecraft:firework_rocket", item: 'minecraft:firework_rocket[fireworks={flight_duration:2,explosions:[{shape:"large_ball",has_trail:true,has_twinkle:true,colors:[2437522],fade_colors:[2437522]}]}]'}
function ctf:utility/cooldownableitem {target: "@a[tag=ingame,tag=Sharpshooter,team=Red]", cooldown:180, id:firework, slot:hotbar.2, itemid:"minecraft:firework_rocket", item: 'minecraft:firework_rocket[fireworks={flight_duration:2,explosions:[{shape:"large_ball",has_trail:true,has_twinkle:true,colors:[11743532],fade_colors:[11743532]}]}]'}

execute as @e[type=minecraft:firework_rocket,tag=!counted,nbt={ShotAtAngle:1b}] run function ctf:classes/sharpshooter/countfirework

execute as @a[tag=ingame,tag=Sharpshooter] unless items entity @s weapon.offhand minecraft:crossbow run item replace entity @s weapon.offhand with minecraft:crossbow[enchantments={quick_charge: 1}]
execute as @a[tag=ingame,tag=Sharpshooter] run item replace entity @s hotbar.0 with minecraft:tipped_arrow[potion_contents={custom_effects:[{id:blindness,duration:480}],custom_color:3552822},custom_name={text:"Blinding Assault",italic:false}]
execute as @a[tag=ingame,tag=Sharpshooter] run item replace entity @s hotbar.1 with minecraft:tipped_arrow[potion_contents={custom_effects:[{id:poison,amplifier:0,duration:640}],custom_color:4098356},custom_name={text:"Toxic Shot",italic:false}]

execute as @e[type=arrow,nbt={pickup:1b}] run data merge entity @s {pickup:0b}

execute as @a[tag=Sharpshooter,tag=ingame] if items entity @s hotbar.3 * run item replace entity @s hotbar.3 with minecraft:air
execute as @a[tag=Sharpshooter,tag=ingame] if items entity @s hotbar.4 * run item replace entity @s hotbar.4 with minecraft:air
execute as @a[tag=Sharpshooter,tag=ingame] if items entity @s hotbar.5 * run item replace entity @s hotbar.5 with minecraft:air
execute as @a[tag=Sharpshooter,tag=ingame] if items entity @s hotbar.6 * run item replace entity @s hotbar.6 with minecraft:air
execute as @a[tag=Sharpshooter,tag=ingame] if items entity @s hotbar.7 * run item replace entity @s hotbar.7 with minecraft:air
execute as @a[tag=Sharpshooter,tag=ingame] if items entity @s hotbar.8 * run item replace entity @s hotbar.8 with minecraft:air
