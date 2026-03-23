scoreboard objectives add Death deathCount
team add Blue
team add Red
team add nopvp
team modify Blue color blue
team modify Red color red
team modify Blue friendlyFire false
team modify Red friendlyFire false
team modify nopvp friendlyFire false
scoreboard objectives add respawnTime dummy
scoreboard objectives add SCOREBOARD dummy
scoreboard objectives setdisplay sidebar SCOREBOARD
scoreboard objectives add eggbombStat minecraft.used:minecraft.egg
scoreboard objectives add eggbombTimer dummy
team join Blue Blue
team join Red Red
gamerule immediate_respawn true
gamerule advance_time false
gamerule mob_griefing false
time set day
gamerule natural_health_regeneration false
scoreboard objectives modify SCOREBOARD displayname ["",{"text":"S","color":"green"},{"text":"c","color":"dark_green"},{"text":"o","color":"green"},{"text":"r","color":"dark_green"},{"text":"e","color":"green"},{"text":"b","color":"dark_green"},{"text":"o","color":"green"},{"text":"a","color":"dark_green"},{"text":"r","color":"green"},{"text":"d","color":"dark_green"}]
scoreboard objectives add tick dummy
scoreboard objectives add eggbombStat minecraft.used:minecraft.egg
scoreboard objectives add eggbombTimer dummy
scoreboard objectives add startcooldown dummy
scoreboard players set sample startcooldown 30
scoreboard objectives add healStat minecraft.used:minecraft.splash_potion
scoreboard objectives add healTimer dummy
scoreboard objectives add speedStat minecraft.used:minecraft.splash_potion
scoreboard objectives add speedTimer dummy
scoreboard objectives add smokeStat minecraft.used:minecraft.snowball
scoreboard objectives add smokeTimer dummy
scoreboard objectives add smktm dummy
scoreboard objectives add sneak minecraft.custom:sneak_time
scoreboard objectives add sneakTime dummy
scoreboard objectives add sneakCD dummy
scoreboard objectives add DamageDealt minecraft.custom:minecraft.damage_dealt
scoreboard objectives add knockbackCD dummy
bossbar add minecraft:1 "cock"
bossbar set minecraft:1 max 12000
bossbar set minecraft:1 style notched_10