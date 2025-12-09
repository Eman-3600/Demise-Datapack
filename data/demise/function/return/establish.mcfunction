tag @s remove DemiseLeftGame
scoreboard players set @s D_LeaveTime 0

function demise:add_teams

execute if entity @s[team=!D_Innocent,tag=!Demon] run function demise:return/living
execute if entity @s[team=!D_Innocent,tag=Demon] run function demise:return/demon
execute if entity @s[team=D_Innocent] run function demise:tutorial/start

scoreboard players enable @s[tag=Demon] ghost
scoreboard players reset @s[tag=!Demon] ghost

scoreboard players enable @s[tag=Catalyst] catalyst
scoreboard players reset @s[tag=!Catalyst] catalyst