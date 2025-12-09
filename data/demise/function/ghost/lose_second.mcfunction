scoreboard players remove @s D_GhostS 1
scoreboard players add @s D_GhostT 20

execute if entity @s[scores={D_GhostS=..-1}] run function demise:ghost/lose_minute