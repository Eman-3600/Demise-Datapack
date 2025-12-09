tag @s remove ForcedGhost

scoreboard players reset @s D_GhostT
scoreboard players reset @s D_GhostM
scoreboard players reset @s D_GhostS

scoreboard players enable @s ghost

tellraw @s[tag=!KnowsGhost] {"text":"Use the command, /trigger ghost, to switch between incorporeal and corporeal forms.","color":"gold"}
tag @s add KnowsGhost