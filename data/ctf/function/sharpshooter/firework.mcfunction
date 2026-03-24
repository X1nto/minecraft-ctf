# item replace entity @a[tag=ingame,tag=Sharpshooter,team=Red, nbt=!{Inventory:[{id:"minecraft:firework_rocket"}]}] hotbar.0 with minecraft:firework_rocket[fireworks={flight_duration:2,explosions:[{shape:"small_ball",has_trail:true,has_twinkle:true,colors:[11743532],fade_colors:[11743532]}]}] 1
execute as @a[tag=ingame,tag=Sharpshooter,team=Red] unless items entity @s hotbar.0 minecraft:firework_rocket run item replace entity @s hotbar.0 with minecraft:firework_rocket[fireworks={flight_duration:2,explosions:[{shape:"small_ball",has_trail:true,has_twinkle:true,colors:[11743532],fade_colors:[11743532]}]}] 1
# item replace entity @a[tag=ingame,tag=Sharpshooter,team=Blue,nbt=!{Inventory:[{id:"minecraft:firework_rocket"}]}] hotbar.0 with minecraft:firework_rocket[fireworks={flight_duration:2,explosions:[{shape:"small_ball",has_trail:true,has_twinkle:true,colors:[2437522],fade_colors:[2437522]}]}] 1
execute as @a[tag=ingame,tag=Sharpshooter,team=Blue] unless items entity @s hotbar.0 minecraft:firework_rocket run item replace entity @s hotbar.0 with minecraft:firework_rocket[fireworks={flight_duration:2,explosions:[{shape:"small_ball",has_trail:true,has_twinkle:true,colors:[2437522],fade_colors:[2437522]}]}] 1
#item replace entity @a[tag=ingame,tag=Sharpshooter,nbt=!{Inventory:[{id:"minecraft:crossbow"}]}] weapon.offhand with minecraft:crossbow[enchantments={quick_charge: 2}]
execute as @a[tag=ingame,tag=Sharpshooter] unless items entity @s weapon.offhand minecraft:crossbow run item replace entity @s weapon.offhand with minecraft:crossbow[enchantments={quick_charge: 1}]
#item replace entity @a[team=!nopvp,tag=Sharpshooter] hotbar.1 with minecraft:tipped_arrow[potion_contents={custom_effects:[{id:blindness,duration:60}],custom_color:3552822},custom_name={text:"Blinding Assault",italic:false}]
execute as @a[team=!nopvp,tag=Sharpshooter] unless items entity @s hotbar.1 minecraft:tipped_arrow run item replace entity @s hotbar.1 with minecraft:tipped_arrow[potion_contents={custom_effects:[{id:blindness,duration:60}],custom_color:3552822},custom_name={text:"Blinding Assault",italic:false}]
#item replace entity @a[team=!nopvp,tag=Sharpshooter] hotbar.2 with minecraft:tipped_arrow[potion_contents={custom_effects:[{id:poison,amplifier:0,duration:80}],custom_color:4098356},custom_name={text:"Toxic Shot",italic:false}]
execute as @a[team=!nopvp,tag=Sharpshooter] unless items entity @s hotbar.2 minecraft:tipped_arrow run item replace entity @s hotbar.2 with minecraft:tipped_arrow[potion_contents={custom_effects:[{id:poison,amplifier:0,duration:80}],custom_color:4098356},custom_name={text:"Toxic Shot",italic:false}]
execute as @e[type=arrow] run data merge entity @s {pickup:0b}
item replace entity @a[tag=Sharpshooter] hotbar.3 with minecraft:air
item replace entity @a[tag=Sharpshooter] hotbar.4 with minecraft:air
item replace entity @a[tag=Sharpshooter] hotbar.5 with minecraft:air
item replace entity @a[tag=Sharpshooter] hotbar.6 with minecraft:air
item replace entity @a[tag=Sharpshooter] hotbar.7 with minecraft:air
item replace entity @a[tag=Sharpshooter] hotbar.8 with minecraft:air
clear @a[team=nopvp] minecraft:crossbow
clear @a[team=nopvp] minecraft:tipped_arrow
clear @a[team=nopvp] minecraft:firework_rocket