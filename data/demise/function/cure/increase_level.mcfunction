scoreboard players add @s D_CureLevel 2
scoreboard players set @s D_CureT 400

attribute @s minecraft:max_health modifier remove 0-67-0-0-10

attribute @s[scores={D_CureLevel=..8}] minecraft:max_health modifier add 0-67-0-0-10 -12 add_value
attribute @s[scores={D_CureLevel=9..10}] minecraft:max_health modifier add 0-67-0-0-10 -10 add_value
attribute @s[scores={D_CureLevel=11..12}] minecraft:max_health modifier add 0-67-0-0-10 -8 add_value
attribute @s[scores={D_CureLevel=13..14}] minecraft:max_health modifier add 0-67-0-0-10 -6 add_value
attribute @s[scores={D_CureLevel=15..16}] minecraft:max_health modifier add 0-67-0-0-10 -4 add_value
attribute @s[scores={D_CureLevel=17..18}] minecraft:max_health modifier add 0-67-0-0-10 -2 add_value

execute if entity @s[scores={D_CureLevel=19..}] run function demise:cure/end