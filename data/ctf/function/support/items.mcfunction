item replace entity @a[tag=Support,tag=ingame] hotbar.0 with minecraft:wooden_sword
execute as @a[scores={sneak=0},tag=Support,tag=ingame] run scoreboard players set @s DamageDealt 0
execute as @a[scores={DamageDealt=1..,sneak=1..},tag=Support,tag=ingame] run tag @s add knockbackcd
function ctf:utility/abilitycooldown {id:knockback, class:Support, duration:0, cooldown:100}
execute as @a[scores={sneak=1..},tag=Support,tag=ingame,tag=!knockbackcd] run item replace entity @s hotbar.0 with minecraft:wooden_sword[enchantments={knockback:2},item_name="Super Wooden Sword"]
scoreboard players set @a[scores={sneak=1..},tag=Support,tag=ingame] sneak 0

function ctf:utility/cooldownableitem {target: "@a[tag=Support,tag=ingame,team=Blue]", cooldown: 100, id:heal, slot: hotbar.1, item: 'minecraft:lingering_potion[potion_contents={custom_effects:[{id:luck,duration:20}],custom_color:3407616},custom_name={text:"Health potion",italic:false},lore=["Cooldown: 5 seconds"],custom_data={tag:blue_heal}]'}
function ctf:utility/cooldownableitem {target: "@a[tag=Support,tag=ingame,team=Red]", cooldown: 100, id:heal, slot: hotbar.1, item: 'minecraft:lingering_potion[potion_contents={custom_effects:[{id:luck,duration:20}],custom_color:3407616},custom_name={text:"Health potion",italic:false},lore=["Cooldown: 5 seconds"],custom_data={tag:red_heal}]'}
execute as @e[type=area_effect_cloud,nbt={data:{tag:blue_heal}}] at @s run summon armor_stand ~ ~ ~ {Marker:1b,Invisible:1b,CustomName:"BlueHeal"}
execute as @e[type=area_effect_cloud,nbt={data:{tag:red_heal}}] at @s run summon armor_stand ~ ~ ~ {Marker:1b,Invisible:1b,CustomName:"RedHeal"}
kill @e[type=area_effect_cloud]
execute as @e[type=armor_stand,name=BlueHeal] at @s run effect give @a[nbt=!{active_effects:[{id:"minecraft:regeneration"}]},distance=..4,team=Blue] minecraft:regeneration 1 3 false
execute as @e[type=armor_stand,name=RedHeal] at @s run effect give @a[nbt=!{active_effects:[{id:"minecraft:regeneration"}]},distance=..4,team=Red] minecraft:regeneration 1 3 false
execute as @e[type=armor_stand,name=BlueHeal] at @s run particle effect{color:1451519} ~ ~ ~ 2 0 2 1 20 normal @a
execute as @e[type=armor_stand,name=RedHeal] at @s run particle effect{color:16713732} ~ ~ ~ 2 0 2 1 20 normal @a
execute as @e[type=armor_stand,name=RedHeal] at @s run scoreboard players add @s tick 1
execute as @e[type=armor_stand,name=BlueHeal] at @s run scoreboard players add @s tick 1
kill @e[type=armor_stand,name=RedHeal,scores={tick=60..}]
kill @e[type=armor_stand,name=BlueHeal,scores={tick=60..}] 

function ctf:utility/cooldownableitem {target: "@a[tag=Support,tag=ingame,team=Blue]", cooldown: 160, id:speed, slot: hotbar.2, item: 'minecraft:splash_potion[potion_contents={custom_effects:[{id:luck,duration:60}],custom_color:37375},custom_name={text:"Speed potion",italic:false},lore=["Cooldown: 5 seconds"]]'}
function ctf:utility/cooldownableitem {target: "@a[tag=Support,tag=ingame,team=Red]", cooldown: 160, id:speed, slot: hotbar.2, item: 'minecraft:splash_potion[potion_contents={custom_effects:[{id:unluck,duration:60}],custom_color:37375},custom_name={text:"Speed potion",italic:false},lore=["Cooldown: 5 seconds"]]'}
effect give @a[team=Blue,nbt={active_effects: [{id:"minecraft:luck"}]}] speed 4 0 false
effect give @a[team=Red,nbt={active_effects: [{id:"minecraft:unluck"}]}] speed 4 0 false
effect clear @a unluck
effect clear @a luck

item replace entity @a[tag=Support,tag=ingame] hotbar.3 with minecraft:air
item replace entity @a[tag=Support,tag=ingame] hotbar.4 with minecraft:air
item replace entity @a[tag=Support,tag=ingame] hotbar.5 with minecraft:air
item replace entity @a[tag=Support,tag=ingame] hotbar.6 with minecraft:air
item replace entity @a[tag=Support,tag=ingame] hotbar.7 with minecraft:air
item replace entity @a[tag=Support,tag=ingame] hotbar.8 with minecraft:air