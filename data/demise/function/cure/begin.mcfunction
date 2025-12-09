execute if entity @s[tag=ForcedCorporeal] run function demise:corporeal/unforce
execute if entity @s[tag=Corporeal] run function demise:corporeal/end

tag @s add Curing
tag @s remove Demon

scoreboard players set @s D_CureLevel 8
scoreboard players set @s D_CureT 400

function demise:cure/increase_level

playsound entity.zombie_villager.cure player @a

team join D_Curing @s

scoreboard players reset @s ghost

execute if entity @s[tag=CanWard] run function demise:ward/lose