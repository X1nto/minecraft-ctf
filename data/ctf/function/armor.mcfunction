function ctf:utility/teamarmor {team:Red,color:16713732}
function ctf:utility/teamarmor {team:Blue,color:1451519}
clear @a[team=!Red,team=!Blue] *[custom_data~{ctf:{armor:1b}}]
clear @a[tag=invisactive] *[custom_data~{ctf:{armor:1b}}]
