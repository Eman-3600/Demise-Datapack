effect give @s regeneration 4 0
effect give @s saturation 1 9 true

particle minecraft:totem_of_undying ~ ~.05 ~ 0 0 0 .7 30 normal @a

execute as @p[distance=0..20,tag=Demon,scores={D_Dead=1..},tag=!CorporealKill] at @s run function demise:demon/die_pvp