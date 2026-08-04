$scoreboard players add @a[tag=$(id)active,tag=$(class)] $(id)Time 1
$tag @a[tag=$(id)active,tag=$(class),scores={$(id)Time=$(duration)..}] add $(id)cd
$tag @a[tag=$(id)cd] remove $(id)active
$scoreboard players set @a[tag=$(id)cd,tag=$(class)] $(id)Time 0

$scoreboard players add @a[tag=$(id)cd,tag=$(class)] $(id)CD 1
$tag @a[tag=$(class),scores={$(id)CD=$(cooldown)..}] remove $(id)cd
$scoreboard players set @a[tag=$(class),scores={$(id)CD=$(cooldown)..}] $(id)CD 0

$tag @a[scores={Death=1..}] remove $(id)active
$tag @a[scores={Death=1..}] remove $(id)cd
$scoreboard players set @a[scores={Death=1..}] $(id)Time 0
$scoreboard players set @a[scores={Death=1..}] $(id)CD 0

$execute as @a[tag=$(class),tag=$(id)cd] run function ctf:utility/cooldownxp {id:"$(id)",cooldown:$(cooldown)}
$execute as @a[tag=$(class),tag=!$(id)cd] run xp set @s 0 levels
