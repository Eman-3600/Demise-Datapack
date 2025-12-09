tag @s remove Curing

scoreboard players reset @s D_CureLevel
scoreboard players reset @s D_CureT

tag @s add Demon
team join D_Demon @s

summon item ~ ~ ~ {Item:{id:"minecraft:structure_void",Count:1b,tag:{display:{Name:"{\"text\":\"§r§eSoul\"}"}}}}

gamemode spectator @s

tag @s add ForcedGhost
tag @s add Ghost

scoreboard players set @s D_GhostT 20
scoreboard players set @s D_GhostM 0
scoreboard players set @s D_GhostS 30

attribute @s minecraft:max_health modifier remove 0-67-0-0-10

scoreboard players enable @s ghost

execute if entity @s[tag=CanWard] run function demise:ward/lose