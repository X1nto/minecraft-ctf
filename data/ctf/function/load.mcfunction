scoreboard objectives add Death deathCount
scoreboard objectives add Health health
scoreboard objectives modify Health displayname {"text":"❤","color":"red"}
scoreboard objectives add leaveGame minecraft.custom:leave_game
scoreboard objectives add leaveSeen dummy
team add Blue
team add Red
team add nopvp
team modify Blue color blue
team modify Red color red
team modify Blue friendlyFire false
team modify Red friendlyFire false
team modify nopvp friendlyFire false
scoreboard objectives add respawnTime dummy
scoreboard objectives add respawnSeconds dummy
scoreboard objectives add SCOREBOARD dummy
scoreboard objectives add eggbombStat minecraft.used:minecraft.egg
scoreboard objectives add eggbombTimer dummy
team join Blue Blue
team join Red Red
gamerule immediate_respawn true
gamerule keep_inventory true
gamerule advance_time false
gamerule advance_weather false
gamerule mob_griefing false
gamerule max_snow_accumulation_height 0
gamerule max_block_modifications 1000000
execute unless entity @e[limit=1,type=armor_stand,name=lobby,tag=started] run time set day
execute unless entity @e[limit=1,type=armor_stand,name=lobby,tag=started] run weather clear
gamerule natural_health_regeneration false
scoreboard objectives modify SCOREBOARD displayname ["",{"text":"S","color":"green"},{"text":"c","color":"dark_green"},{"text":"o","color":"green"},{"text":"r","color":"dark_green"},{"text":"e","color":"green"},{"text":"b","color":"dark_green"},{"text":"o","color":"green"},{"text":"a","color":"dark_green"},{"text":"r","color":"green"},{"text":"d","color":"dark_green"}]
scoreboard objectives add tick dummy
scoreboard objectives add healStat minecraft.used:minecraft.lingering_potion
scoreboard objectives add healTimer dummy
scoreboard objectives add speedStat minecraft.used:minecraft.splash_potion
scoreboard objectives add speedTimer dummy
scoreboard objectives add smokeStat minecraft.used:minecraft.snowball
scoreboard objectives add smokeTimer dummy
scoreboard objectives add cdSeconds dummy
scoreboard objectives add smktm dummy
scoreboard objectives add teamBlue dummy
scoreboard objectives add teamRed dummy
scoreboard objectives add invisTime dummy
scoreboard objectives add invisCD dummy
scoreboard objectives add fireworkStat dummy
scoreboard objectives add fireworkTimer dummy
scoreboard objectives add knockbackCD dummy
scoreboard objectives add knockbackTime dummy
scoreboard objectives add overhealCD dummy
scoreboard objectives add overhealTime dummy
scoreboard objectives add overchargeCD dummy
scoreboard objectives add overchargeTime dummy
scoreboard objectives add cdLvl dummy
scoreboard objectives add NUMBERS dummy
scoreboard players set #ZERO NUMBERS 0
scoreboard players set #ONE NUMBERS 1
scoreboard players set #NINETEEN NUMBERS 19
scoreboard players set #TWENTY NUMBERS 20
scoreboard players set #SIXTY NUMBERS 60
bossbar add ctf:timer "cock"
bossbar set ctf:timer max 12000
bossbar set ctf:timer style notched_10
bossbar set ctf:timer color green