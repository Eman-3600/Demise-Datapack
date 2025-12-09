gamemode survival @s

tag @s remove Ghost
tag @s remove Blinded

attribute @s minecraft:max_health modifier add 0-67-0-0-10 -12 add_value

scoreboard players enable @s ghost

particle smoke ~ ~1 ~ 0.5 1 0.5 1 300 normal @a

tellraw @s[tag=!KnowsHunger] {"text":"You have limited health and regeneration, but you are unable to starve. Eat rotten flesh to heal.","color":"gold"}
tag @s add KnowsHunger

effect clear @s blindness
effect give @s weakness 3 1

scoreboard players set @s SunlightTicks 30