gamemode spectator @s

tag @s add Ghost
tag @s add NearPlayer

attribute @s minecraft:max_health modifier remove 0-67-0-0-10

scoreboard players enable @s ghost

particle smoke ~ ~1 ~ 0.5 1 0.5 1 300 normal @a

tag @s add JustBecameGhost
tag @s remove GhostCooldown

scoreboard players reset @s D_GhostCooldown