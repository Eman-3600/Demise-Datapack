execute if entity @s[tag=!Established] run scoreboard players add @s D_GhostT 1
execute if entity @s[tag=!Established,scores={D_GhostT=200..}] run function demise:global/establish

execute if entity @s[tag=Established] run kill @e[tag=GlobalDemise,tag=!Established]