function ctf:utility/cooldownableitem {target: "@a[tag=ingame,tag=Sharpshooter,team=Blue]", cooldown:120, id:firework, slot:hotbar.2, item: 'minecraft:firework_rocket[fireworks={flight_duration:2,explosions:[{shape:"small_ball",has_trail:true,has_twinkle:true,colors:[2437522],fade_colors:[2437522]}]}]'}
function ctf:utility/cooldownableitem {target: "@a[tag=ingame,tag=Sharpshooter,team=Red]", cooldown:120, id:firework, slot:hotbar.2, item: 'minecraft:firework_rocket[fireworks={flight_duration:2,explosions:[{shape:"small_ball",has_trail:true,has_twinkle:true,colors:[11743532],fade_colors:[11743532]}]}]'}

# why is it on origin and not on owner? bullshit.
execute as @e[type=minecraft:firework_rocket,nbt={ShotAtAngle:1b},tag=!counted] on origin run scoreboard players add @s fireworkStat 1
execute as @e[type=minecraft:firework_rocket,nbt={ShotAtAngle:1b},tag=!counted] run tag @s add counted

execute as @a[tag=ingame,tag=Sharpshooter] unless items entity @s weapon.offhand minecraft:crossbow run item replace entity @s weapon.offhand with minecraft:crossbow[enchantments={quick_charge: 1}]
execute as @a[tag=ingame,tag=Sharpshooter] run item replace entity @s hotbar.0 with minecraft:tipped_arrow[potion_contents={custom_effects:[{id:blindness,duration:60}],custom_color:3552822},custom_name={text:"Blinding Assault",italic:false}]
execute as @a[tag=ingame,tag=Sharpshooter] run item replace entity @s hotbar.1 with minecraft:tipped_arrow[potion_contents={custom_effects:[{id:poison,amplifier:0,duration:80}],custom_color:4098356},custom_name={text:"Toxic Shot",italic:false}]

execute as @e[type=arrow] run data merge entity @s {pickup:0b}

item replace entity @a[tag=Sharpshooter] hotbar.3 with minecraft:air
item replace entity @a[tag=Sharpshooter] hotbar.4 with minecraft:air
item replace entity @a[tag=Sharpshooter] hotbar.5 with minecraft:air
item replace entity @a[tag=Sharpshooter] hotbar.6 with minecraft:air
item replace entity @a[tag=Sharpshooter] hotbar.7 with minecraft:air
item replace entity @a[tag=Sharpshooter] hotbar.8 with minecraft:air