item replace entity @a[tag=Support,tag=ingame] hotbar.0 with minecraft:wooden_sword[unbreakable={}]
execute as @a[tag=Support,tag=ingame,predicate=!ctf:is_sneaking] run scoreboard players set @s DamageDealt 0
execute as @a[scores={DamageDealt=1..},tag=Support,tag=ingame,gamemode=adventure,predicate=ctf:is_sneaking] run tag @s add knockbackcd
function ctf:utility/abilitycooldown {id:knockback, class:Support, duration:0, cooldown:100}
execute as @a[tag=Support,tag=ingame,tag=!knockbackcd,gamemode=adventure,predicate=ctf:is_sneaking] run item replace entity @s hotbar.0 with minecraft:wooden_sword[enchantments={knockback:2},item_name="Super Wooden Sword",unbreakable={}]

function ctf:utility/cooldownableitem {target: "@a[tag=Support,tag=ingame]", cooldown: 100, id:heal, slot: hotbar.1, itemid:"minecraft:lingering_potion", item: 'minecraft:lingering_potion[potion_contents={custom_effects:[{id:luck,duration:20}],custom_color:3407616},custom_name={text:"Health potion",italic:false},lore=["Cooldown: 5 seconds"]]'}
execute as @e[type=area_effect_cloud] run function ctf:classes/support/healcloud
kill @e[type=area_effect_cloud]
scoreboard players add @e[type=marker,tag=ctfheal] tick 1
execute at @e[type=marker,tag=healBlue] run effect give @a[team=Blue,distance=..4,predicate=!ctf:has_regeneration] minecraft:regeneration 1 3 false
execute at @e[type=marker,tag=healRed] run effect give @a[team=Red,distance=..4,predicate=!ctf:has_regeneration] minecraft:regeneration 1 3 false
execute at @e[type=marker,tag=healBlue] run particle effect{color:1451519} ~ ~ ~ 2 0 2 1 20 normal @a
execute at @e[type=marker,tag=healRed] run particle effect{color:16713732} ~ ~ ~ 2 0 2 1 20 normal @a
kill @e[type=marker,tag=ctfheal,scores={tick=60..}]

function ctf:utility/cooldownableitem {target: "@a[tag=Support,tag=ingame,team=Blue]", cooldown: 160, id:speed, slot: hotbar.2, itemid:"minecraft:splash_potion", item: 'minecraft:splash_potion[potion_contents={custom_effects:[{id:luck,duration:60}],custom_color:37375},custom_name={text:"Speed potion",italic:false},lore=["Cooldown: 5 seconds"]]'}
function ctf:utility/cooldownableitem {target: "@a[tag=Support,tag=ingame,team=Red]", cooldown: 160, id:speed, slot: hotbar.2, itemid:"minecraft:splash_potion", item: 'minecraft:splash_potion[potion_contents={custom_effects:[{id:unluck,duration:60}],custom_color:37375},custom_name={text:"Speed potion",italic:false},lore=["Cooldown: 5 seconds"]]'}
effect give @a[team=Blue,nbt={active_effects: [{id:"minecraft:luck"}]}] speed 4 0 false
effect give @a[team=Red,nbt={active_effects: [{id:"minecraft:unluck"}]}] speed 4 0 false
effect clear @a unluck
effect clear @a luck

execute as @a[tag=Support,tag=ingame] if items entity @s hotbar.3 * run item replace entity @s hotbar.3 with minecraft:air
execute as @a[tag=Support,tag=ingame] if items entity @s hotbar.4 * run item replace entity @s hotbar.4 with minecraft:air
execute as @a[tag=Support,tag=ingame] if items entity @s hotbar.5 * run item replace entity @s hotbar.5 with minecraft:air
execute as @a[tag=Support,tag=ingame] if items entity @s hotbar.6 * run item replace entity @s hotbar.6 with minecraft:air
execute as @a[tag=Support,tag=ingame] if items entity @s hotbar.7 * run item replace entity @s hotbar.7 with minecraft:air
execute as @a[tag=Support,tag=ingame] if items entity @s hotbar.8 * run item replace entity @s hotbar.8 with minecraft:air
