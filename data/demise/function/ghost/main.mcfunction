particle smoke ~ ~1.5 ~ 0.2 0.2 0.2 0.001 3 normal @a[tag=!Ghost,distance=2..]
particle smoke ~ ~ ~ 0.1 0.1 0.1 0.001 1 normal @a[tag=!Ghost,distance=..2]

execute if entity @s[tag=ForcedGhost] run function demise:ghost/forced
execute unless entity @s[tag=ForcedGhost] run title @s actionbar {"text":"Ethereal","color":"gray"}

execute if entity @s[tag=Blinded] positioned ~ ~1.5 ~ if block ~.7 ~ ~ #air if block ~-.7 ~ ~ #air if block ~ ~.7 ~ #air if block ~ ~-.7 ~ #air if block ~ ~ ~.7 #air if block ~ ~ ~-.7 #air if block ~ ~ ~ #air run tag @s remove Blinded
execute if entity @s[tag=!Blinded] at @s positioned ~ ~1.5 ~ run function demise:ghost/test_blind

effect give @s[tag=Blinded] blindness 3 0 true
effect clear @s[tag=!Blinded] blindness