execute if entity @s[nbt={Inventory:[{id:"minecraft:structure_void"}]}] run function demise:living/get_gapple

execute if entity @s[tag=!Catalyst,nbt={Inventory:[{id:"minecraft:nether_star"}]}] run function demise:catalyst/get
execute if entity @s[tag=Catalyst,nbt=!{Inventory:[{id:"minecraft:nether_star"}]}] run function demise:catalyst/lose

scoreboard players add @s LifeTicks 1
execute if entity @s[scores={LifeTicks=72000..}] run function demise:gain_hour

execute if entity @s[scores={D_PKill=1..}] if entity @a[distance=0..20,tag=Demon,scores={D_Dead=1..},tag=CorporealKill] run function demise:living/slay_demon_corporeal
execute if entity @s[scores={D_PKill=1..}] if entity @a[distance=0..20,tag=Demon,scores={D_Dead=1..},tag=!CorporealKill] run function demise:living/slay_demon