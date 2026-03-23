item replace entity @a[tag=Support,tag=ingame] hotbar.0 with minecraft:wooden_sword
execute as @a[scores={sneak=0},tag=Support,tag=ingame] run scoreboard players set @s DamageDealt 0
execute as @a[scores={DamageDealt=1..,sneak=1..},tag=Support,tag=ingame] run tag @s add incd
scoreboard players add @a[tag=incd,tag=Support] knockbackCD 1
execute as @a[scores={sneak=1..},tag=Support,tag=ingame,tag=!incd] run item replace entity @s hotbar.0 with minecraft:wooden_sword[enchantments={knockback:2},item_name="Super Wooden Sword"]
scoreboard players set @a[scores={sneak=1..},tag=Support,tag=ingame] sneak 0
tag @a[scores={knockbackCD=100..}] remove incd
scoreboard players set @a[scores={knockbackCD=100..}] knockbackCD 0
execute as @a[tag=Support,scores={knockbackCD=100}] run xp set @s 0 levels
execute as @a[tag=Support,scores={knockbackCD=80}] run xp set @s 1 levels
execute as @a[tag=Support,scores={knockbackCD=60}] run xp set @s 2 levels
execute as @a[tag=Support,scores={knockbackCD=40}] run xp set @s 3 levels
execute as @a[tag=Support,scores={knockbackCD=20}] run xp set @s 4 levels
execute as @a[tag=Support,tag=incd,scores={knockbackCD=0..19}] run xp set @s 5 levels
execute as @a[tag=Support,tag=!incd,scores={knockbackCD=0..19}] run xp set @s 0 levels

item replace entity @a[tag=Support,tag=ingame,scores={healStat=0}] hotbar.1 with minecraft:splash_potion[potion_contents={custom_effects:[{id:instant_health,amplifier:1}],custom_color:3407616},custom_name={text:"Health potion",italic:false},lore=["Cooldown: 5 seconds"]]
item replace entity @a[tag=Support,tag=ingame,scores={healStat=1..,healTimer=0..20}] hotbar.1 with minecraft:barrier[item_name={text:"5", color:dark_green}] 1
item replace entity @a[tag=Support,tag=ingame,scores={healStat=1..,healTimer=21..40}] hotbar.1 with minecraft:barrier[item_name={text:"4", color:dark_green}] 1
item replace entity @a[tag=Support,tag=ingame,scores={healStat=1..,healTimer=41..60}] hotbar.1 with minecraft:barrier[item_name={text:"3", color:dark_green}] 1
item replace entity @a[tag=Support,tag=ingame,scores={healStat=1..,healTimer=61..80}] hotbar.1 with minecraft:barrier[item_name={text:"2", color:dark_green}] 1
item replace entity @a[tag=Support,tag=ingame,scores={healStat=1..,healTimer=81..100}] hotbar.1 with minecraft:barrier[item_name={text:"1", color:dark_green}] 1
scoreboard players add @a[scores={healStat=1..},tag=Support] healTimer 1
scoreboard players set @a[scores={healStat=1..,healTimer=100..},tag=Support] healStat 0
scoreboard players set @a[scores={healStat=0},tag=Support] healTimer 0
scoreboard players set @a[tag=!Support] healStat 0
scoreboard players set @a[tag=!Support] healTimer 0

item replace entity @a[tag=Support,tag=ingame,scores={speedStat=0}] hotbar.2 with minecraft:splash_potion[potion_contents={custom_effects:[{id:speed,amplifier:0,duration:60}],custom_color:37375},custom_name={text:"Speed potion",italic:false},lore=["Cooldown: 5 seconds"]]
item replace entity @a[tag=Support,tag=ingame,scores={speedStat=1..,speedTimer=0..20}] hotbar.2 with minecraft:barrier[item_name={text:"5", color:dark_blue}] 1
item replace entity @a[tag=Support,tag=ingame,scores={speedStat=1..,speedTimer=21..40}] hotbar.2 with minecraft:barrier[item_name={text:"4", color:dark_blue}] 1
item replace entity @a[tag=Support,tag=ingame,scores={speedStat=1..,speedTimer=41..60}] hotbar.2 with minecraft:barrier[item_name={text:"3", color:dark_blue}] 1
item replace entity @a[tag=Support,tag=ingame,scores={speedStat=1..,speedTimer=61..80}] hotbar.2 with minecraft:barrier[item_name={text:"2", color:dark_blue}] 1
item replace entity @a[tag=Support,tag=ingame,scores={speedStat=1..,speedTimer=81..100}] hotbar.2 with minecraft:barrier[item_name={text:"1", color:dark_blue}] 1
scoreboard players add @a[scores={speedStat=1..},tag=Support] speedTimer 1
scoreboard players set @a[scores={speedStat=1..,speedTimer=100..},tag=Support] speedStat 0
scoreboard players set @a[scores={speedStat=0},tag=Support] speedTimer 0
scoreboard players set @a[tag=!Support] speedStat 0
scoreboard players set @a[tag=!Support] speedTimer 0

