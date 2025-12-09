scoreboard players reset @s catalyst
scoreboard players enable @s[tag=Catalyst] catalyst

execute as @a[distance=0..40,tag=Demon] at @s run function demise:corporeal/force_become
execute if entity @a[distance=0..40,tag=Demon] run advancement grant @s only demise:story/use_catalyst