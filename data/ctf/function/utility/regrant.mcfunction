$execute unless items entity @s $(slot) *[custom_data~{ctf:{id:"$(id)"}}] run clear @s *[custom_data~{ctf:{id:"$(id)"}}]
$item replace entity @s $(slot) with $(item) $(count)
