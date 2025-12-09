scoreboard players add @s D_LeaveTime 1
execute unless entity @s run scoreboard players set @s D_LeaveTime 0

execute if entity @s[scores={D_LeaveTime=60..}] run function demise:return/establish