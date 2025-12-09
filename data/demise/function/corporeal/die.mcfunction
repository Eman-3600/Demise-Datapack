execute if entity @s[tag=ForcedCorporeal] run function demise:corporeal/unforce
function demise:corporeal/end

scoreboard players set @s D_GhostT 20
scoreboard players set @s D_GhostM 0
scoreboard players set @s D_GhostS 30

tag @s add CorporealKill