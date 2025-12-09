execute store result score @s D_Timer run data get entity @s Age

execute if entity @s[scores={D_Timer=600..}] run data merge entity @s {Age:0s}

particle minecraft:totem_of_undying ~ ~.05 ~ 0 0 0 .5 1 normal @a