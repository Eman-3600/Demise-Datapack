scoreboard players remove @s D_GhostCooldown 1

execute if entity @s[scores={D_GhostCooldown=..0}] run function demise:demon/end_cooldown

particle smoke ~ ~.5 ~ 0.3 0.3 0.3 0.01 3 normal @a