$execute unless entity @e[type=armor_stand,tag=map.$(map)] run tellraw @s {"text":"Note: no arena markers exist for that map yet.","color":"yellow"}
$give @s minecraft:pale_oak_sign[block_entity_data={id:"minecraft:sign",is_waxed:1b,front_text:{has_glowing_text:0b,messages:[{text:""},{text:"[MAP]",color:"gold",bold:true,click_event:{action:"run_command",command:"/function ctf:selectmap {map:$(map)}"}},{text:"$(map)",color:"light_purple"},{text:""}]}}]

