tag @s add Demon
team join D_Demon @s

scoreboard players reset @s LifeTicks
scoreboard players reset @s LifeHours

title @s title {"text":"Demonized","color":"dark_red"}

gamemode spectator @s

tag @s add ForcedGhost
tag @s add Ghost
tag @s remove KnowsGhost

scoreboard players set @s D_GhostT 20
scoreboard players set @s D_GhostM 0
scoreboard players set @s D_GhostS 15

attribute @s minecraft:max_health modifier remove 0-67-0-0-10

scoreboard players enable @s ghost

advancement grant @s only demise:story/die

summon item ~ ~ ~ {Item:{id:"minecraft:structure_void",Count:1b,components:{item_name:"Soul"}}}

execute if entity @s[tag=Catalyst] run function demise:catalyst/lose

execute if entity @s[tag=!TakenDemonTutorial] run function demise:tutorial/start_demon