execute if entity @s[tag=ForcedCorporeal] run function demise:corporeal/unforce
execute if entity @s[tag=Corporeal] run function demise:corporeal/end

tag @s remove Demon
team join D_Living @s

title @s title {"text":"Revived","color":"dark_green"}

gamemode survival @s

tag @s remove ForcedGhost
tag @s remove Ghost

scoreboard players reset @s D_GhostT
scoreboard players reset @s D_GhostM
scoreboard players reset @s D_GhostS

scoreboard players reset @s ghost

attribute @s minecraft:max_health modifier remove 0-67-0-0-10

clear @s structure_void
effect give @s instant_health 1 1 true
effect give @s saturation 1 4 true

particle minecraft:happy_villager ~ ~1 ~ 1 1 1 1 300 normal @a

advancement grant @s only demise:story/revive