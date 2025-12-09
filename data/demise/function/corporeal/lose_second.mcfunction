scoreboard players remove @s D_CorporealS 1
scoreboard players add @s D_CorporealT 20

execute if entity @s[scores={D_CorporealS=..-1}] run function demise:corporeal/lose_minute