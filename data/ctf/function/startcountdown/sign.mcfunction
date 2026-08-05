$function ctf:utility/startsign {line1:"Game starting",line2:"in $(sec)",line3:"[CANCEL]",color:"yellow"}
execute as @e[type=marker,tag=startsign] at @s run data modify block ~ ~ ~ front_text.messages[3].click_event set value {action:"run_command",command:"/function ctf:signs/cancelgame"}
