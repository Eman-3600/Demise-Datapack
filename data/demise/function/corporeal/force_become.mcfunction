execute if entity @s[tag=ForcedGhost] run function demise:ghost/unforce
execute if entity @s[tag=Ghost] run function demise:ghost/end

effect give @s[tag=!Corporeal] instant_health 25 7 true

tellraw @s[tag=!KnowsCorporeal] {"text":"The power of the nether star has been used on you! You cannot become ethereal.","color":"dark_purple"}
tag @s add KnowsCorporeal

function demise:corporeal/become

tag @s add ForcedCorporeal

scoreboard players set @s D_CorporealT 20
scoreboard players set @s D_CorporealM 2
scoreboard players set @s D_CorporealS 30