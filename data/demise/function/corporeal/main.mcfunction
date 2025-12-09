execute if entity @s[tag=ForcedCorporeal] run function demise:corporeal/forced
execute unless entity @s[tag=ForcedCorporeal] run title @s actionbar {"text":"Tangible","color":"dark_purple"}

execute unless entity @s[tag=ForcedCorporeal] unless entity @s[nbt={Inventory:[{id:"minecraft:nether_star"}]}] run function demise:corporeal/end