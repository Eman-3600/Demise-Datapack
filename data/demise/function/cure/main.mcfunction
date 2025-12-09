effect give @s saturation 5 0 true

tag @s[tag=CorporealKill] remove CorporealKill

title @s actionbar {"text":"Curing","color":"gold"}

particle totem_of_undying ~ ~.1 ~ 0.1 0.1 0.1 0.5 1 normal @a

execute if entity @s[nbt={Inventory:[{id:"minecraft:structure_void"}]}] run function demise:cure/end

scoreboard players remove @s D_CureT 1
execute if entity @s[scores={D_CureT=..0},tag=Curing] run function demise:cure/increase_level