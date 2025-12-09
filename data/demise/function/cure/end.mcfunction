tag @s remove Curing
tag @s remove Demon

scoreboard players reset @s D_CureLevel
scoreboard players reset @s D_CureT

playsound entity.zombie_villager.converted player @a

function demise:living/revive