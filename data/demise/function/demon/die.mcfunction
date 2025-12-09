gamemode spectator @s

tag @s add ForcedGhost
tag @s add Ghost

scoreboard players reset @s LifeTicks
scoreboard players reset @s LifeHours

scoreboard players set @s D_GhostT 20
scoreboard players set @s D_GhostM 0
scoreboard players set @s D_GhostS 8

execute if entity @s[tag=Corporeal] run function demise:corporeal/die

attribute @s minecraft:max_health modifier remove 0-67-0-0-10

scoreboard players enable @s ghost

execute if entity @s[tag=CanWard] run function demise:ward/lose