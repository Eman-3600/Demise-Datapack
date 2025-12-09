execute if entity @s[scores={D_Hunger=9..},tag=!Corporeal] run effect give @s hunger 1 255 true
execute if entity @s[scores={D_Hunger=..7}] run effect give @s saturation 1 0 true

tag @s[tag=CorporealKill] remove CorporealKill

execute if entity @s[tag=Ghost] run function demise:ghost/main
execute if entity @s[tag=Corporeal,tag=!Ghost] run function demise:corporeal/main

execute unless entity @s[tag=Ghost] unless entity @s[tag=Corporeal] run title @s actionbar {"text":"Manifested","color":"dark_red"}

execute unless predicate demise:sunlight run scoreboard players set @s SunlightTicks 30
execute if entity @s[tag=!Ghost,tag=!Corporeal] if predicate demise:sunlight run function demise:demon/sunlight

execute if entity @s[nbt={Inventory:[{id:"minecraft:structure_void"}]}] run function demise:living/get_gapple
execute if entity @s[scores={D_Gapple2=1..},tag=Demon] run function demise:living/revive
execute if entity @s[scores={D_Gapple=1..},tag=Demon] run function demise:cure/begin
execute if entity @s[scores={D_Flesh=1..},tag=Demon] run effect give @s instant_health 1 0 true

scoreboard players add @s[tag=!Ghost] LifeTicks 1
execute if entity @s[scores={LifeTicks=72000..}] run function demise:gain_hour

execute if entity @s[tag=!Corporeal,nbt={Inventory:[{id:"minecraft:nether_star"}]}] run function demise:corporeal/become