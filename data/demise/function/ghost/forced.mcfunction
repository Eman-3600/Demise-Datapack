scoreboard players remove @s D_GhostT 1

execute if entity @s[scores={D_GhostT=..0}] run function demise:ghost/lose_second

execute if entity @s[scores={D_GhostS=10..}] run title @s actionbar [{"text":"Banished for ","color":"gray"},{"score":{"name":"@s","objective":"D_GhostM"}},{"text":":"},{"score":{"name":"@s","objective":"D_GhostS"}}]
execute if entity @s[scores={D_GhostS=0..9}] run title @s actionbar [{"text":"Banished for ","color":"gray"},{"score":{"name":"@s","objective":"D_GhostM"}},{"text":":0"},{"score":{"name":"@s","objective":"D_GhostS"}}]

execute if entity @s[scores={D_GhostM=..0,D_GhostS=0}] run function demise:ghost/unforce