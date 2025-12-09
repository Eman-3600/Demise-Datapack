scoreboard players add @s D_Tutorial 1

execute if entity @s[scores={D_Tutorial=60}] run tellraw @s {"text":"You are now a demon.","color":"red"}
execute if entity @s[scores={D_Tutorial=120}] run tellraw @s {"text":"As a demon, you can enter or exit ghost mode.","color":"red"}
execute if entity @s[scores={D_Tutorial=200}] run tellraw @s {"text":"Use /trigger ghost to change while not banished.","color":"red"}
execute if entity @s[scores={D_Tutorial=260}] run tellraw @s {"text":"It is recommended you use a macro to bind the command to a key.","color":"red"}
execute if entity @s[scores={D_Tutorial=340}] run tellraw @s {"text":"Manifesting weakens you for 3 seconds.","color":"red"}
execute if entity @s[scores={D_Tutorial=400}] run tellraw @s {"text":"If you wish to kill the living and steal a soul, you must be clever.","color":"red"}
execute if entity @s[scores={D_Tutorial=480..}] run function demise:tutorial/end_demon