## Updates

execute as @a[tag=!NewDemise] at @s run function demise:new

execute unless entity @e[tag=GlobalDemise] as @r[tag=NewDemise] at @s run function demise:first

## Leaving the game and Returning

execute as @a[scores={D_Leave=1..}] at @s run function demise:leave
execute as @a[tag=DemiseLeftGame] at @s run function demise:returning

execute as @a[tag=DemiseTutorial,tag=!DemonTutorial] at @s run function demise:tutorial/main
execute as @a[tag=DemiseTutorial,tag=DemonTutorial] at @s run function demise:tutorial/main_demon

# Global Marker

execute as @e[tag=GlobalDemise] at @s run function demise:global/main

# Living

execute as @a[tag=!Demon,tag=!Curing] at @s run function demise:living/main

# Demons

execute as @a[tag=Demon,tag=!Curing] at @s run function demise:demon/main

# Curing

execute as @a[tag=Curing] at @s run function demise:cure/main

# Ghost Transform

execute as @a[scores={ghost=1..}] at @s run function demise:ghost/test
execute as @a[scores={ghost=..-1}] at @s run function demise:ghost/invalid

# Souls

execute as @e[type=item,nbt={Item:{id:"minecraft:structure_void"}}] at @s run function demise:living/soul
execute as @e[type=item,nbt={Item:{id:"minecraft:golden_apple",components:{"minecraft:custom_model_data":{strings:["soul"]}}}}] at @s run function demise:living/drop_soul_apple

# Catalyst

execute as @a[scores={catalyst=1..}] at @s run function demise:catalyst/use
execute as @a[scores={catalyst=..-1}] at @s run function demise:catalyst/invalid

## Death

execute as @a[scores={D_Dead=1..2147483647},team=!D_Innocent,tag=!Demon,tag=!Curing] at @s run function demise:living/die
execute as @a[scores={D_Dead=1..2147483647},team=!D_Innocent,tag=Demon,tag=!Curing,tag=!ForcedGhost] at @s run function demise:demon/die
execute as @a[scores={D_Dead=1..2147483647},team=!D_Innocent,tag=Curing,tag=!ForcedGhost] at @s run function demise:cure/die

## Scoreboard Reset

scoreboard players reset @a[scores={D_Dead=1..}] D_Dead
scoreboard players reset @a[scores={D_Kill=1..}] D_Kill
scoreboard players reset @a[scores={D_PKill=1..}] D_PKill
scoreboard players reset @a[scores={D_Leave=1..}] D_Leave
scoreboard players reset @a[scores={D_Gapple=1..}] D_Gapple
scoreboard players reset @a[scores={D_Gapple2=1..}] D_Gapple2
scoreboard players reset @a[scores={D_Flesh=1..}] D_Flesh