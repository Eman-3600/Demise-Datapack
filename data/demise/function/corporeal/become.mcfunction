tag @s add Corporeal

tellraw @s[tag=!KnowsCorporeal] {"text":"The nether star's power allows you to fully materialize. While it is in your possession, you cannot enter ethereal form, but you can process food.","color":"dark_purple"}
tag @s add KnowsCorporeal

attribute @s minecraft:max_health modifier remove 0-67-0-0-10
attribute @s minecraft:max_health modifier add 0-67-0-0-10 -12 add_value

team join D_MaterialDemon @s[tag=Demon]