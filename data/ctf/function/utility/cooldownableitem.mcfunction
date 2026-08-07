$execute as $(target) run scoreboard players add @s[scores={$(id)Stat=1..}] $(id)Timer 1
$execute as $(target) run scoreboard players set @s[scores={$(id)Timer=$(cooldown)..}] $(id)Stat 0
$execute as $(target) run scoreboard players set @s[scores={$(id)Timer=$(cooldown)..}] $(id)Timer 0

$execute as $(target) if score @s $(id)Stat matches 0 unless items entity @s $(slot) *[custom_data~{ctf:{id:"$(id)"}}] run function ctf:utility/regrant {id:"$(id)",slot:"$(slot)",item:'$(item)'}
$execute as $(target) if score @s $(id)Stat matches 1.. run function ctf:utility/cooldowndisplay {id:"$(id)",cooldown:$(cooldown),slot:"$(slot)"}
