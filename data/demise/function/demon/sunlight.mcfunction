scoreboard players remove @s SunlightTicks 1

title @s actionbar {"text":"Burning","color":"red"}
execute if entity @s[scores={SunlightTicks=..0}] run function demise:demon/burn