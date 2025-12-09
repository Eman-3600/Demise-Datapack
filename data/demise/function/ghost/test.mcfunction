scoreboard players reset @s ghost
scoreboard players enable @s[tag=Demon] ghost

execute if entity @s[tag=Demon,tag=!Ghost,tag=!Corporeal,nbt=!{active_effects:[{id:"minecraft:weakness"}]}] run function demise:ghost/become

execute if entity @s[tag=Demon,tag=!Ghost,nbt={active_effects:[{id:"minecraft:weakness"}]},tag=!Corporeal] run tellraw @s {"text":"You cannot do that while weakened.","color":"red"}
execute if entity @s[tag=Demon,tag=!Ghost,tag=Corporeal] run tellraw @s {"text":"You cannot do that while materialized.","color":"dark_purple"}

execute if entity @s[tag=Demon,tag=Ghost,tag=!ForcedGhost,tag=!JustBecameGhost] run function demise:ghost/end

execute if entity @s[tag=Demon,tag=Ghost,tag=ForcedGhost,tag=!JustBecameGhost] run tellraw @s {"text":"Wait until you're no longer banished.","color":"gray"}

tag @s remove JustBecameGhost