scoreboard players add @s D_Tutorial 1

execute if entity @s[scores={D_Tutorial=60}] run tellraw @s {"text":"Welcome to Demise (datapack by Eman3600).","color":"aqua"}
execute if entity @s[scores={D_Tutorial=120}] run tellraw @s {"text":"In this world, when you die, you become a Demon.","color":"aqua"}
execute if entity @s[scores={D_Tutorial=200}] run tellraw @s {"text":"Demons have less health but can enter ghost form.","color":"aqua"}
execute if entity @s[scores={D_Tutorial=280}] run tellraw @s {"text":"Demons can be revived by a soul or a golden apple.","color":"aqua"}
execute if entity @s[scores={D_Tutorial=360..}] run function demise:tutorial/end