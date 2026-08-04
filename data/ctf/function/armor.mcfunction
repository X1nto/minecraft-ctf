execute as @a[team=Red,tag=!invisactive] unless items entity @s armor.chest minecraft:leather_chestplate run item replace entity @s armor.chest with minecraft:leather_chestplate[dyed_color=16713732]
execute as @a[team=Red,tag=!invisactive] unless items entity @s armor.head minecraft:leather_helmet run item replace entity @s armor.head with minecraft:leather_helmet[dyed_color=16713732]
execute as @a[team=Blue,tag=!invisactive] unless items entity @s armor.chest minecraft:leather_chestplate run item replace entity @s armor.chest with minecraft:leather_chestplate[dyed_color=1451519]
execute as @a[team=Blue,tag=!invisactive] unless items entity @s armor.head minecraft:leather_helmet run item replace entity @s armor.head with minecraft:leather_helmet[dyed_color=1451519]
execute as @a[team=!Red,team=!Blue] if items entity @s armor.chest * run item replace entity @s armor.chest with minecraft:air
execute as @a[team=!Red,team=!Blue] if items entity @s armor.head * run item replace entity @s armor.head with minecraft:air
execute as @a[tag=invisactive] if items entity @s armor.chest * run item replace entity @s armor.chest with minecraft:air
execute as @a[tag=invisactive] if items entity @s armor.head * run item replace entity @s armor.head with minecraft:air
