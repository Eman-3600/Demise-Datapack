tag @s remove Corporeal
tag @s remove ForcedCorporeal

attribute @s minecraft:max_health modifier remove 0-67-0-0-10
attribute @s[tag=Demon,tag=!Ghost] minecraft:max_health modifier add 0-67-0-0-10 -12 add_value

team join D_Demon @s[tag=Demon]